{if not $permission_addserver}
访问拒绝！
{else}
<div class="row" id="add-group">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h3>服务器详情</h3>
				<p>
					有关特定主题的更多信息或帮助，请将鼠标移到问号上。
				</p>
				<br /><br />
				<input type="hidden" name="insert_type" value="add">
				<div class="table-responsive">
					<table class="table table-striped" id="group.details" cellpadding="3">
						<tr>
							<td valign="top" width="35%">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="这是您的服务器的 IP 地址。 如果您有一个服务器设置好了，您还可以输入域名。"></i>
									服务器IP/域名
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=1 class="form-control" id="address" name="address" value="{$ip}" />
								</div>
								<div id="address.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="middle">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="这是服务器正在运行的端口。 <br /><br /><i>默认: 27015</i>"></i>
									服务器端口
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=2 class="form-control" id="port" name="port" value="{if $port}{$port}{else}{27015}{/if}" />
								</div>
								<div id="port.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="middle">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-html="true" data-placement="bottom" title="这是您的服务器 RCON 密码。这可以在您的server.cfg文件中找到<i>rcon_password</i>.<br /><br />这将用于允许管理员通过 Web 界面管理服务器。"></i>
									RCON 密码
								</div>
							</td>
							<td>
								<div align="left">
									<input type="password" TABINDEX=3 class="form-control" id="rcon" name="rcon" value="{$rcon}" />
								</div>
								<div id="rcon.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="middle">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-html="true" data-placement="bottom" title="请重新输入密码"></i>
									RCON 密码 (确认)
								</div>
							</td>
							<td>
								<div align="left">
									<input type="password" TABINDEX=4 class="form-control" id="rcon2" name="rcon2" value="{$rcon}" />
								</div>
								<div id="rcon2.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="middle">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-html="true" data-placement="bottom" title="选择您的服务器当前正在运行的游戏"></i>
									服务器游戏模式 
								</div>
							</td>
							<td>
								<div align="left" id="admingroup">
									<select name="mod" TABINDEX=5 onchange="" id="mod" class="form-control">
										{if !$edit_server}
										<option value="-2">请选择...</option>
										{/if}
										{foreach from="$modlist" item="mod"}
										<option value='{$mod.mid}'>{$mod.name}</option>
										{/foreach}
									</select>
								</div>
								<div id="mod.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="middle">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-html="true" data-placement="bottom" title="使服务器显示在公共服务器列表中。"></i>
									启用
								</div>
							</td>
							<td>
								<div align="left">
									<div class="form-check" id="loginRememberMeDiv">
										<label class="form-check-label">
										<input id="enabled" type="checkbox" name="enabled" vspace="5px" checked="checked" class="form-check-input"> &nbsp;
										<i class="input-helper"></i></label>
									</div>
								</div>
								<div id="enabled.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="middle">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-html="true" data-placement="bottom" title="选择要将此服务器添加到的组。 服务器组用于将管理员添加到特定的服务器集。"></i>
									服务器组 
								</div>
							</td>
							<td>&nbsp;</td>
						</tr>
						{foreach from="$grouplist" item="group"}
						<tr>
							<td valign="middle">&nbsp;
							</td>
							<td>
								<div align="left">
									<div class="form-check" id="loginRememberMeDiv">
										<label class="form-check-label">
										<input id="g_{$group.gid}" type="checkbox" name="groups[]" value="{$group.gid}" vspace="5px" class="form-check-input"> {$group.name}
										<i class="input-helper"></i></label>
									</div>
								</div>
							</td>
						</tr>
						{/foreach}
						<tr id="nsgroup" valign="top" class="badentry"> 		
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>
								{if $edit_server}
								{sb_button text="更新信息" onclick="process_edit_server();" class="ok" id="aserver" submit=false}
								{else}
								{sb_button text="添加" onclick="process_add_server();" class="ok" id="aserver" submit=false}
								{/if}
								&nbsp;
								{sb_button text="返回" onclick="history.go(-1)" class="cancel" id="back" submit=false}
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
{/if}