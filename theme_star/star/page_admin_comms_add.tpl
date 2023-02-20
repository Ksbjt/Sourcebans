{if NOT $permission_addban}
访问拒绝！
{else}
<div id="msg-green" style="display:none;">
	<i><img src="./images/yay.png" alt="Success" /></i>
	<b>添加屏蔽</b><br />
	新的屏蔽封禁已被添加至系统<br /><br />
	<i>重定向至通讯屏蔽页面</i>
</div>
<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body" id="add-group1">
				<h3>添加屏蔽</h3>
				<p>有关特定主题的更多信息或帮助，请将鼠标移到问号按钮上。</p>
				<br /><br />
				<div class="table-responsive">
					<table  id="group.details" class="table table-striped">
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="输入你要封禁的玩家昵称"></i>
									昵称 
								</div>
							</td>
							<td>
								<div align="left">
									<input type="hidden" id="fromsub" value="" />
									<input type="text" TABINDEX=1 class="form-control"  id="nickname" name="nickname"/>
								</div>
								<div id="nick.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="你要封禁的玩家的SteamID/社区ID"></i>
									Steam ID / 社区 ID
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=3 class="form-control"  id="steam" name="steam"/>
								</div>
								<div id="steam.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选择屏蔽聊天或语音"></i>
									屏蔽类型 
								</div>
							</td>
							<td>
								<div align="left">
									<select id="type" name="type" TABINDEX=2 class="form-control">
										<option value="1">语音</option>
										<option value="2">聊天</option>
										<option value="3">聊天 &amp; 声音</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="详细解释为什么要设定这个屏蔽封禁"></i>
									屏蔽原因
								</div>
							</td>
							<td>
								<div align="left">
									<select id="listReason" name="listReason" TABINDEX=4 class="form-control"  onChange="changeReason(this[this.selectedIndex].value);">
										<option value="" selected> -- 选择原因 -- </option>
										<optgroup label="Violation">
											<option value="Obscene language">淫秽用语</option>
											<option value="Insult players">侮辱玩家</option>
											<option value="Admin disrespect">不尊重管理员</option>
											<option value="Inappropriate Language">不识别的语言</option>
											<option value="Trading">交易</option>
											<option value="Spam in chat/voice">菠菜</option>
											<option value="Advertisement">打广告</option>
										</optgroup>
										<option value="other">其他原因</option>
									</select>
									<div id="dreason" style="display:none;">
										<textarea class="form-control"  TABINDEX=4 cols="30" rows="5" id="txtReason" name="txtReason"></textarea>
									</div>
								</div>
								<div id="reason.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选择要屏蔽的时间"></i>
									屏蔽时长
								</div>
							</td>
							<td>
								<div align="left">
									<select id="banlength" TABINDEX=5 class="form-control">
										<option value="0">永久</option>
										<optgroup label="minutes">
											<option value="1">1 分钟</option>
											<option value="5">5 分钟</option>
											<option value="10">10 分钟</option>
											<option value="15">15 分钟</option>
											<option value="30">30 分钟</option>
											<option value="45">45 分钟</option>
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
								<div id="length.msg" ></div>
							</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>
								{sb_button text="添加屏蔽" onclick="ProcessBan();" class="ok" id="aban" submit=false}
								&nbsp;
								{sb_button text="返回" onclick="history.go(-1)" class="cancel" id="aback"}
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
{/if}