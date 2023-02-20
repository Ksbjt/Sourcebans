{if NOT $permission_addban}
Access Denied!
{else}
<div id="msg-green" style="display:none;">
	<i><img src="./images/yay.png" alt="Success" /></i>
	<b>已添加封禁</b><br />
	新的封禁已成功添加至系统<br /><br />
	<i>Redirecting back to bans page</i>
</div>
<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body" id="add-group1">
				<h3>添加封禁</h3>
				<p>有关特定主题的更多信息或帮助，请将鼠标移到问号上。</p>
				<br /><br />
				<div id="banlist" class="table-responsive">
					<table id="group.details" class="table table-striped">
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="输入你要封禁的人的昵称"></i>
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
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选择封禁ID或者IP"></i>
									封禁类型 
								</div>
							</td>
							<td>
								<div align="left">
									<select id="type" name="type" TABINDEX=2 class="form-control">
										<option value="0">Steam ID</option>
										<option value="1">IP Address</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="你要封禁的人的steamid或者社区id"></i>
									SteamID / 社区ID
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
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="输入你要封禁的人的IP"></i>
									IP 地址 
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=3 class="form-control"  id="ip" name="ip"/>
								</div>
								<div id="ip.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="解释详细为什么设置这个封禁"></i>
									封禁原因 
								</div>
							</td>
							<td>
								<div align="left">
									<select id="listReason" name="listReason" TABINDEX=4 class="form-control"  onChange="changeReason(this[this.selectedIndex].value);">
										<option value="" selected> -- 选择原因 -- </option>
										<optgroup label="作弊">
											<option value="Aimbot">自瞄</option>
											<option value="Antirecoil">无后座</option>
											<option value="Wallhack">透视</option>
											<option value="Spinhack">陀螺</option>
											<option value="Multi-Hack">混合挂</option>
											<option value="No Smoke">无视烟雾弹</option>
											<option value="No Flash">无视闪光弹</option>
										</optgroup>
										<optgroup label="行为">
											<option value="Team Killing">杀死队友</option>
											<option value="Team Flashing">闪队友</option>
											<option value="Spamming Mic/Chat">垃圾聊天/开麦</option>
											<option value="Inappropriate Spray">不合适的喷气</option>
											<option value="Inappropriate Language">不合适的语言</option>
											<option value="Inappropriate Name">不合适的名字</option>
											<option value="Ignoring Admins">无视管理员</option>
											<option value="Team Stacking">团队堆叠</option>
										</optgroup>
										{if $customreason}
										<optgroup label="自定义">
											{foreach from="$customreason" item="creason"}
											<option value="{$creason}">{$creason}</option>
											{/foreach}
										</optgroup>
										{/if}
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
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选择你要封禁多久"></i>
									封禁时长 
								</div>
							</td>
							<td>
								<div align="left">
									<select id="banlength" TABINDEX=5 class="form-control"  >
										<option value="0">永久</option>
										<optgroup label="分钟">
											<option value="1">1 分钟</option>
											<option value="5">5 分钟</option>
											<option value="10">10 分钟</option>
											<option value="15">15 分钟</option>
											<option value="30">30 分钟</option>
											<option value="45">45 分钟</option>
										</optgroup>
										<optgroup label="小时">
											<option value="60">1 小时</option>
											<option value="120">2 小时</option>
											<option value="180">3 小时</option>
											<option value="240">4 小时</option>
											<option value="480">8 小时</option>
											<option value="720">12 小时</option>
										</optgroup>
										<optgroup label="天">
											<option value="1440">1 天</option>
											<option value="2880">2 天</option>
											<option value="4320">3 天</option>
											<option value="5760">4 天</option>
											<option value="7200">5 天</option>
											<option value="8640">6 天</option>
										</optgroup>
										<optgroup label="周">
											<option value="10080">1 周</option>
											<option value="20160">2 周</option>
											<option value="30240">3 周</option>
										</optgroup>
										<optgroup label="月">
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
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="点此上传demo和封禁提交"></i>
									上传demo
								</div>
							</td>
							<td>
								<div align="left">
									{sb_button text="上传demo" onclick="childWindow=open('pages/admin.uploaddemo.php','upload','resizable=no,width=300,height=130');" class="save" id="udemo" submit=false}
								</div>
								<div id="demo.msg" class="text-primary"></div>
							</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>
								{sb_button text="添加封禁" onclick="ProcessBan();" class="ok" id="aban" submit=false}
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