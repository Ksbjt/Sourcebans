{if NOT $permissions_submissions}
Access Denied!
{else}
<div id="appeala" class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body" id="add-group1">
				<h3>举报提交归档 <i class="btn btn-outline-primary btn-rounded btn-fw" style="width:20px;height:20px;padding:0px;line-height:18px;">所有归档数:{$submission_count_archiv}</i></h3>
				<p>点开一名玩家的昵称来查看更多有关他们举报的信息</p>
				<br /><br />
				<div class="table-responsive">
					<div class="col-12 my-2 text-xl-right text-lg-left">
						<div id="banlist-nav" class="btn btn-inverse-light  btn-rounded btn-fw p-1 p-md-2 p-xl-2">
							{$asubmission_nav}
						</div>
					</div>
					<table class="table">
						<thead>
							<tr>
								<th>昵称</th>
								<th>SteamID</th>
								<th>行为</th>
							</tr>
						</thead>
						{foreach from="$submission_list_archiv" item="sub"}
						<tr style="cursor:pointer;" data-toggle="collapse" data-target="#expand_appeala_{$sub.subid}" aria-expanded="false" aria-controls="collapseExample"
						{if $sub.hostname == ""}onclick="xajax_ServerHostPlayers('{$sub.server}', 'id', 'suba{$sub.subid}');"{/if}>
						<td style="border-bottom: solid 1px #ccc" height='16'>{$sub.name}</td>
						<td style="border-bottom: solid 1px #ccc" height='16'>{if $sub.SteamId!=""}{$sub.SteamId}{else}{$sub.sip}{/if}</td>
						<td style="border-bottom: solid 1px #ccc" height='16'>
							{if $sub.archiv != "2" and $sub.archiv != "3"}
							<a href="#" onclick="xajax_SetupBan({$sub.subid});">封禁</a> -
							{if $permissions_editsub}
							<a href="#" onclick="RemoveSubmission({$sub.subid}, '{$sub.name|stripslashes|stripquotes}', '2');">重置</a> -
							{/if}
							{/if}
							{if $permissions_editsub}
							<a href="#" onclick="RemoveSubmission({$sub.subid}, '{$sub.name|stripslashes|stripquotes}', '0');">删除</a> -
							{/if}
							<a href="index.php?p=admin&c=bans&o=email&type=s&id={$sub.subid}">联系</a>
						</td>
						</tr>
						<tr id="asid_{$sub.subid}a">
							<td style="padding:0;" colspan="3">
								<div class="collapse" id="expand_appeala_{$sub.subid}" data-parent="#appeala">
									<table class="table tbl-sm" width="100%">
										<tr>
											<td height="16" align="left" class="listtable_top" colspan="3">
												<b>封禁详情</b>            
											</td>
										</tr>
										<tr align="left">
											<td height="16" align="left" class="listtable_1" colspan="2">
												<b>因为 {$sub.archive} 被归档</b>
											</td>
											<td width="30%" rowspan="11" class="listtable_2">
												<div class="ban-edit">
													<ul class="list-arrow" id="fix_banlinks">
														<li>{$sub.demo}</li>
														<li>{$sub.subaddcomment}</li>
													</ul>
												</div>
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">玩家</td>
											<td height="16" class="listtable_1">{$sub.name}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">已提交</td>
											<td height="16" class="listtable_1">{$sub.submitted}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">SteamID</td>
											<td height="16" class="listtable_1">
												{if $sub.SteamId == ""}
												<i><font color="#677882">暂无steamid</font></i>
												{else}
												{$sub.SteamId}
												{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">IP</td>
											<td height="16" class="listtable_1">
												{if $sub.sip == ""}
												<i><font color="#677882">暂无IP地址</font></i>
												{else}
												{$sub.sip}
												{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">原因</td>
											<td height="" class="listtable_1">{$sub.reason}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">服务器</td>
											<td height="" class="listtable_1" id="suba{$sub.subid}">{if $sub.hostname == ""}<i>检索主机名</i>{else}{$sub.hostname}{/if}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">游戏名</td>
											<td height="" class="listtable_1">{$sub.mod}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">举报者姓名</td>
											<td height="" class="listtable_1">
												{if $sub.subname == ""}
												<i><font color="#677882">暂无姓名</font></i>
												{else}
												{$sub.subname}
												{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">举报者IP</td>
											<td height="" class="listtable_1">{$sub.ip}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">归档自</td>
											<td height="" class="listtable_1">
												{if !empty($sub.archivedby)}
												{$sub.archivedby}
												{else}
												<i><font color="#677882">管理员删除</font></i>
												{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">评论</td>
											<td height="60" class="listtable_1" colspan="3">
												{if $sub.commentdata != "None"}
												<table width="100%" border="0">
													{foreach from=$sub.commentdata item=commenta}
													{if $commenta.morecom}
													<tr>
														<td colspan="3">
															<hr />
														</td>
													</tr>
													{/if}
													<tr>
														<td>
															{if !empty($commenta.comname)}
															<b>{$commenta.comname|escape:'html'}</b>
															{else}
															<i><font color="#677882">管理员删除</font></i>
															{/if}
														</td>
														<td align="right"><b>{$commenta.added}</b>
														</td>
														{if $commenta.editcomlink != ""}
														<td align="right" class="imgfix linkfix">
															{$commenta.editcomlink} {$commenta.delcomlink}
														</td>
														{/if}
													</tr>
													<tr>
														<td colspan="2" style="word-break: break-all;word-wrap: break-word;">
															{$commenta.commenttxt}
														</td>
													</tr>
													{if !empty($commenta.edittime)}
													<tr>
														<td colspan="3">
															<span style="font-size:6pt;color:grey;">最后一次在 {$commenta.edittime} 由 {if !empty($commenta.editname)}{$commenta.editname}{else} 编辑<i><font color="#677882">管理员删除</font></i>{/if}</span>
														</td>
													</tr>
													{/if}
													{/foreach}
												</table>
												{/if}
												{if $sub.commentdata == "None"}
												{$sub.commentdata}
												{/if}
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
						{/foreach}
					</table>
					<div class="col-12 my-2 text-xl-right text-lg-left">
						<div id="banlist-nav" class="btn btn-inverse-light  btn-rounded btn-fw p-1 p-md-2 p-xl-2">
							{$asubmission_nav}
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>InitAccordion('tr.opener4', 'div.opener4', 'mainwrapper');</script>
{/if}