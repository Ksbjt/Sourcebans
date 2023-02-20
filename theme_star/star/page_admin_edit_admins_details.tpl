<form action="" method="post">
	<div id="admin-page-content">
		<div class="row">
			<div class="col-lg-12 grid-margin">
				<div class="card">
					<div class="card-body" id="add-group">
						<h3>管理员详情</h3>
						<div class="table-responsive">
							<table id="group.details" class="table table-striped">
								<tr>
									<td valign="top">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="这是管理员用于登录管理员面板的用户名。当然也会被显示在封禁信息里。"></i>
										管理员用户名 
									</td>
									<td>
										<div align="left">
											<input type="text" class="form-control" id="adminname" name="adminname" value="{$user}" />
										</div>
										<div id="adminname.msg" class="badentry"></div>
									</td>
								</tr>
								<tr>
									<td valign="top">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="这是管理员的steamID。必须设置管理员的steamID才能让管理员在服务器里行使权力"></i>
										管理员 STEAM ID
									</td>
									<td>
										<div align="left">
											<input type="text" class="form-control" id="steam" name="steam" value="{$authid}" />
										</div>
										<div id="steam.msg" class="badentry"></div>
									</td>
								</tr>
								<tr>
									<td valign="top">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="设置电子邮箱地址。主要用于接受自动发出的消息以及找回密码。"></i>
										管理员 邮箱
									</td>
									<td>
										<div align="left">
											<input type="text" class="form-control" id="email" name="email" value="{$email}" />
										</div>
										<div id="email.msg" class="badentry"></div>
									</td>
								</tr>
								{if $change_pass}
								<tr>
									<td valign="top">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="管理员用于登录管理员面板的密码"></i>
										管理员密码
									</td>
									<td>
										<div align="left">
											<input type="password" class="form-control" id="password" name="password" />
										</div>
										<div id="password.msg" class="badentry"></div>
									</td>
								</tr>
								<tr>
									<td valign="top">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="请再输入一遍密码以确认"></i>
										管理员密码(确认)
									</td>
									<td>
										<div align="left">
											<input type="password" class="form-control" id="password2" name="password2" />
										</div>
										<div id="password2.msg" class="badentry"></div>
									</td>
								</tr>
								<tr>
									<td valign="top" >
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="如果设置这个选项，你需要在游戏服务器里设置密码来行使权力。"></i>
										服务器密码 <small>(<a href="http://wiki.alliedmods.net/Adding_Admins_%28SourceMod%29#Passwords" title="SM 密码信息" target="_blank">更多</a>)</small>
									</td>
									<td>
										<div class="row">
											<div class="form-group mt-2">
												<div class="form-check" id="loginRememberMeDiv">
													<label class="form-check-label">
													<input id="a_useserverpass" type="checkbox" name="a_useserverpass" vspace="5px" class="form-check-input" {if $a_spass} checked="checked"{/if} TABINDEX=6 onclick="$('a_serverpass').disabled = !$(this).checked;"> &nbsp;
													<i class="input-helper"></i></label>
												</div>
											</div>
											<div class="col-sm-11">
												<input type="password" TABINDEX=7 class="form-control" name="a_serverpass" id="a_serverpass" {if !$a_spass} disabled="disabled"{/if} />
											</div>
											<div id="a_serverpass.msg" class="badentry"></div>
										</div>
										<div id="a_serverpass.msg" class="badentry"></div>
									</td>
								</tr>
								{/if}
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>
										{sb_button text="保存" class="ok" id="editmod" submit=true}
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
	</div>
</form>