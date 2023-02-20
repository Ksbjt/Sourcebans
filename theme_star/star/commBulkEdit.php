<?php
if (!defined("IN_SB")) {
	echo "你不应该在这里。 只关注链接！";
	die();
}

global $userbank;
$page     = 1;
$pagelink = "";

if (isset($_GET['a']) && $_GET['a'] == "bulkunblock" && isset($_GET['id'])) {

	if (isset($_GET['page']) && $_GET['page'] > 0) {
		$page     = intval($_GET['page']);
		$pagelink = "&page=" . $page;
	}
	if ($_GET['key'] != $_SESSION['banlist_postkey']) {
		die("可能的黑客攻击（URL 密钥不匹配）");
	}
	if (!$userbank->HasAccess(ADMIN_OWNER | ADMIN_DELETE_BAN)) {
		echo "<script>ShowBox('错误', '您无权访问此内容。', 'red', 'index.php?p=commslist$pagelink');</script>";
		PageDie();
	}
	$bids = explode(",", $_GET['id']);

	$ucount = 0;
	$fail   = 0;
	foreach ($bids as $bid) {
		$bid = intval($bid);
		$res = $GLOBALS['db']->Execute("SELECT a.aid, a.gid FROM `" . DB_PREFIX . "_comms` c INNER JOIN " . DB_PREFIX . "_admins a ON a.aid = c.aid WHERE bid = '" . $bid . "' AND c.type = 2;");
		if (!$userbank->HasAccess(ADMIN_OWNER | ADMIN_UNBAN) && !($userbank->HasAccess(ADMIN_UNBAN_OWN_BANS) && $res->fields['aid'] == $userbank->GetAid()) && !($userbank->HasAccess(ADMIN_UNBAN_GROUP_BANS) && $res->fields['gid'] == $userbank->GetProperty('gid'))) {
			$fail++;
			continue;
		}

		$Mrow = $GLOBALS['db']->GetRow("SELECT b.authid, b.name, b.created, b.sid, UNIX_TIMESTAMP() as now
											FROM " . DB_PREFIX . "_comms b
											LEFT JOIN " . DB_PREFIX . "_servers s ON s.sid = b.sid
											WHERE b.bid = ? AND b.RemoveType IS NULL AND b.type = 1 AND (b.length = '0' OR b.ends > UNIX_TIMESTAMP())", array(
			$bid
		));
		$Grow = $GLOBALS['db']->GetRow("SELECT b.authid, b.name, b.created, b.sid, UNIX_TIMESTAMP() as now
											FROM " . DB_PREFIX . "_comms b
											LEFT JOIN " . DB_PREFIX . "_servers s ON s.sid = b.sid
											WHERE b.bid = ? AND b.RemoveType IS NULL AND b.type = 2 AND (b.length = '0' OR b.ends > UNIX_TIMESTAMP())", array(
			$bid
		));
		if ((empty($Mrow) || !$Mrow) && (empty($Grow) || !$Grow)) {
			$fail++;
			continue;
		}

		$unbanReason = htmlspecialchars(trim($_GET['ureason']));
		$ins         = $GLOBALS['db']->Execute("UPDATE `" . DB_PREFIX . "_comms` SET
											`RemovedBy` = ?,
											`RemoveType` = 'U',
											`RemovedOn` = UNIX_TIMESTAMP(),
											`ureason` = ?
											WHERE `bid` = ?;", array(
			$userbank->GetAid(),
			$unbanReason,
			$bid
		));

		$blocked = $GLOBALS['db']->GetAll("SELECT sid FROM `" . DB_PREFIX . "_servers` WHERE `enabled`=1");
		foreach ($blocked as $tempban) {
			if((empty($Mrow) || !$Mrow))
				SendRconSilent(("sc_fw_unmute " . $Mrow['authid']), $tempban['sid']);
			if((empty($Grow) || !$Grow))
				SendRconSilent(("sc_fw_ungag " . $Grow['authid']), $tempban['sid']);
		}

		if ($res) {
			$ucount++;
			if((empty($Mrow) || !$Mrow))
				$log = new CSystemLog("m", "玩家取消禁声", "'" . StripQuotes($Mrow['name']) . "' (" . $Mrow['authid'] . ") 已被取消禁声");
			if((empty($Grow) || !$Grow))
				$log = new CSystemLog("m", "玩家取消禁言", "'" . StripQuotes($Grow['name']) . "' (" . $Grow['authid'] . ") 已被取消禁言");
		} else {
			$fail++;
			echo "failed because end page";
		}
	}
	echo "<script>ShowBox('玩家解锁', '$ucount 玩家已从 SourceBans 中解除封锁。<br>$fail failed.', 'green', 'index.php?p=commslist$pagelink');</script>";
} elseif (isset($_GET['a']) && $_GET['a'] == "bulkdelete") {

	if (isset($_GET['page']) && $_GET['page'] > 0) {
		$page     = intval($_GET['page']);
		$pagelink = "&page=" . $page;
	}
	if ($_GET['key'] != $_SESSION['banlist_postkey']) {
		die("可能的黑客攻击（URL 密钥不匹配）");
	}
	if (!$userbank->HasAccess(ADMIN_OWNER | ADMIN_DELETE_BAN)) {
		echo "<script>ShowBox('错误', '您无权访问此内容.', 'red', 'index.php?p=commslist$pagelink');</script>";
		PageDie();
	}

	$bids = explode(",", $_GET['id']);

	$ucount = 0;
	$fail   = 0;
	foreach ($bids as $bid) {
		$bid = intval($bid);
		$steam  = $GLOBALS['db']->GetRow("SELECT name, authid, ends, length, RemoveType, type, UNIX_TIMESTAMP() AS now
										FROM " . DB_PREFIX . "_comms WHERE bid=?", array(
			$bid
		));
		$end    = (int) $steam['ends'];
		$length = (int) $steam['length'];
		$now    = (int) $steam['now'];

		$cmd = "";

		switch ($steam['type']) {
			case 1:
				$cmd = "sc_fw_unmute";
				break;
			case 2:
				$cmd = "sc_fw_ungag";
				break;
			default:
				break;
		}

		$res = $GLOBALS['db']->Execute("DELETE FROM `" . DB_PREFIX . "_comms` WHERE `bid` = ?", array(
			$bid
		));

		if (empty($steam['RemoveType']) && ($length == 0 || $end > $now)) {
			$blocked = $GLOBALS['db']->GetAll("SELECT sid FROM `" . DB_PREFIX . "_servers` WHERE `enabled`=1");
			foreach ($blocked as $tempban) {
				SendRconSilent(($cmd . " " . $steam['authid']), $tempban['sid']);
			}
		}

		if ($res) {
			$dcount++;
			$log = new CSystemLog("m", "封锁解除", "阻断 '" . StripQuotes($steam['name']) . "' (" . $steam['authid'] . ") 已被删除.");
		} else {
			$fail++;
		}
	}
	echo "<script>ShowBox('已删除的玩家', '$dcount 玩家已从 SourceBans 中删除。<br>$fail 失败.', 'green', 'index.php?p=commslist$pagelink');</script>";
}
?>
