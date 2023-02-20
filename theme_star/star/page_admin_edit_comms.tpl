<form action="" method="post">
	<div id="admin-page-content">
		<div id="0">
			<div id="msg-green" style="display:none;">
				<i><img src="./images/yay.png" alt="Warning" /></i>
				<b>屏蔽封禁已更新</b>
				<br />
				屏蔽详情已更新<br /><br />
				<i>重定向至屏蔽页面</i>
			</div>
			<div id="add-group">
				<h3>屏蔽详情</h3>
				有关特定主题的更多信息或帮助，请将鼠标移到问号按钮上。<br /><br />
				<input type="hidden" name="insert_type" value="add">
				<table width="90%" border="0" style="border-collapse:collapse;" id="group.details" cellpadding="3">
					<tr>
						<td valign="top" width="35%">
							<div class="rowdesc">
								-{help_icon title="玩家名称" message="这是被屏蔽的玩家的名字。"}-玩家名称
							</div>
						</td>
						<td>
							<div align="left">
								<input type="text" class="submit-fields" id="name" name="name" value="-{$ban_name}-" />
							</div>
							<div id="name.msg" class="badentry"></div>
						</td>
					</tr>
					<tr>
						<td valign="top">
							<div class="rowdesc">
								-{help_icon title="Steam ID" message="这是被封禁玩家的 Steam ID。 您也可能需要输入社区 ID。"}-Steam ID
							</div>
						</td>
						<td>
							<div align="left">
								<input value="-{$ban_authid}-" type="text" TABINDEX=2 class="submit-fields" id="steam" name="steam" />
							</div>
							<div id="steam.msg" class="badentry"></div>
						</td>
					</tr>
					<tr>
						<td valign="top" width="35%">
							<div class="rowdesc">
								-{help_icon title="屏蔽类型" message="选择要屏蔽的内容 - 聊天或语音"}-屏蔽类型
							</div>
						</td>
						<td>
							<div align="left">
								<select id="type" name="type" TABINDEX=2 class="submit-fields">
									<option value="1">语音</option>
									<option value="2">聊天</option>
								</select>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" width="35%">
							<div class="rowdesc">
								-{help_icon title="屏蔽原因" message="详细解释为什么要设置这个屏蔽封禁。"}-屏蔽原因
							</div>
						</td>
						<td>
							<div align="left">
								<select id="listReason" name="listReason" TABINDEX=4 class="submit-fields" onChange="changeReason(this[this.selectedIndex].value);">
									<option value="" selected> -- 选择原因 -- </option>
									<optgroup label="Violation">
										<option value="Obscene language">淫秽用语</option>
										<option value="Insult players">侮辱玩家</option>
										<option value="Admin disrespect">不尊重管理员</option>
										<option value="Inappropriate Language">不合适的语言</option>
										<option value="Trading">交易</option>
										<option value="Spam in chat/voice">菠菜</option>
										<option value="Advertisement">打广告</option>
									</optgroup>
									<option value="other">自定义</option>
								</select>
								<div id="dreason" style="display:none;">
									<textarea class="submit-fields" TABINDEX=4 cols="30" rows="5" id="txtReason" name="txtReason"></textarea>
								</div>
							</div>
							<div id="reason.msg" class="badentry"></div>
						</td>
					</tr>
					<tr>
						<td valign="top" width="35%">
							<div class="rowdesc">-{help_icon title="屏蔽时长" message="选择您要屏蔽此人多长时间。"}-屏蔽时长</div>
						</td>
						<td>
							<div align="left">
								<select id="banlength" name="banlength" TABINDEX=4 class="submit-fields">
									<option value="0">永久</option>
									<optgroup label="minutes">
										<option value="1">1 分钟</option>
										<option value="5">5 分钟</option>
										<option value="10">10 分钟</option>
										<option value="15">15 分钟</option>
										<option value="30">30 分钟</option>
										<option value="45">45 分s</option>
									</optgroup>
									<optgroup label="hours">
										<option value="60">1 小时</option>
										<option value="120">2 小时</option>
										<option value="180">3 小时</option>
										<option value="240">4 小时</option>
										<option value="480">8 小时</option>
										<option value="720">12 小时</option>
									</optgroup>
									<optgroup label="days">
										<option value="1440">1 天</option>
										<option value="2880">2 天</option>
										<option value="4320">3 天</option>
										<option value="5760">4 天</option>
										<option value="7200">5 天</option>
										<option value="8640">6 天</option>
									</optgroup>
									<optgroup label="weeks">
										<option value="10080">1 周</option>
										<option value="20160">2 周</option>
										<option value="30240">3 周</option>
									</optgroup>
									<optgroup label="months">
										<option value="43200">1 个月</option>
										<option value="86400">2 个月</option>
										<option value="129600">3 个月</option>
										<option value="259200">6 个月</option>
										<option value="518400">12 个月</option>
									</optgroup>
								</select>
							</div>
							<div id="length.msg" class="badentry"></div>
						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
							<input type="hidden" name="did" id="did" value="" />
							<input type="hidden" name="dname" id="dname" value="" />
							-{sb_button text="保存" class="ok" id="editban" submit=true}-
							&nbsp;
							-{sb_button text="返回" onclick="history.go(-1)" class="cancel" id="back" submit=false}-
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</form>