<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h3>封禁功能</h3>
				<p>有关特定主题的更多信息或帮助，请将鼠标移到问号按钮上</p>
				<br /><br />
				<div class="table-responsive">
					<form action="" method="post">
						<input type="hidden" name="settingsGroup" value="features" />
						<table class="table table-striped" id="group.features">
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选中此框可公开下载和共享整个封禁列表。"></i>
										设置公开封禁
									</div>
								</td>
								<td width="20%">
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="export_public" type="checkbox" name="export_public" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选中此框可在发布封禁时踢出玩家。"></i>
										启用 KickIt
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_kickit" type="checkbox" name="enable_kickit" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="如果您想封禁整个 Steam 社区组，请选中此框。"></i>
										启用群组封禁
									</div>
								</td>
								<td>
									<div align="left">
										{if $steamapi}
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_groupbanning" type="checkbox" name="enable_groupbanning" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
										{else}
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_groupbanning" type="checkbox" name="enable_groupbanning" vspace="5px" class="form-check-input" disabled>&nbsp;
											<i class="input-helper"></i></label>
										</div>
										<br/>您尚未在配置中设置有效的 steamAPI 密钥
										{/if}
									</div>
									<div id="enable_groupbanning.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="如果您想封禁玩家的所有 Steam 社区好友，请选中此框。"></i>
										启用好友封禁
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_friendsbanning" type="checkbox" name="enable_friendsbanning" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div id="enable_friendsbanning.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="如果您想在每次更改管理员/组时启用管理员重新散列，请选中此框。"></i>
										重新散列
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_adminrehashing" type="checkbox" name="enable_adminrehashing" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div id="enable_adminrehashing.msg" class="badentry"></div>
								</td>
							</tr>
							<!-- added for steam login option mod -->
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="如果要在登录表单上启用一般登录选项，请选中此框。"></i>
										启用一般登录
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_steamlogin" type="checkbox" name="enable_steamlogin" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div id="enable_steamlogin.msg" class="badentry"></div>
								</td>
							</tr>
							<!-- end steam login option mod -->
							<tr>
								<td colspan="2" align="center">
									{sb_button text="保存" class="ok btn-success" id="fsettings" submit=true}
									&nbsp;
									{sb_button text="返回" class="cancel btn-danger" id="fback"}
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			<div class="card-body">
				<h3>主题功能</h3>
				<p>有关特定主题的更多信息或帮助，请将鼠标移到问号按钮上</p>
				<br /><br />
				<div class="table-responsive">
					<table class="table table-striped" id="group.features">
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="如果要启用深色主题，请选中此框。"></i>
									启用深色模式
								</div>
							</td>
							<td width="50px"></td>
							<td width="160px"></td>
							<td width="20%">
								<div align="left">
									<div class="form-check">
										<label class="form-check-label">
										<input id="enable_darktheme" type="checkbox" name="enable_darktheme" vspace="5px" class="form-check-input">&nbsp;
										<i class="input-helper"></i></label>
									</div>
								</div>
								<div id="enable_darktheme.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="这种颜色用于导航栏从左到右的渐变着色..."></i>
									导航栏渐变色
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#00e4d0','gradLeft','--nav-grad-left');SyncInputs('#5983e8','gradRight','--nav-grad-right');"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_gradRight" id="i_gradRight" class="form-control text-center form-control-sm" style="float:right; width:80px;" onchange="SyncInputs(this.value,this.name,'--nav-grad-right')">
									<input type="text" name="i_gradLeft" id="i_gradLeft" class="form-control text-center form-control-sm"  style="float:right; width:80px;" onchange="SyncInputs(this.value,this.name,'--nav-grad-left')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="gradLeft" id="gradLeft" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--nav-grad-left')">
									<input type="color" name="gradRight" id="gradRight" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--nav-grad-right')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="此颜色用于主要色"></i>
									主要色
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#308ee0','colorPrimary','--primary')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorPrimary" id="i_colorPrimary" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--primary')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorPrimary" id="colorPrimary" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--primary')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="此颜色用于次要色"></i>
									次要颜色
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#e5e5e5','colorSecondary','--secondary')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorSecondary" id="i_colorSecondary" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--secondary')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorSecondary" id="colorSecondary" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--secondary')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="这种颜色是为了成功色"></i>
									成功颜色
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#00ce68','colorSuccess','--success')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorSuccess" id="i_colorSuccess" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--success')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorSuccess" id="colorSuccess" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--success')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="此颜色用于信息着色"></i>
									信息颜色
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#8862e0','colorInfo','--info')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorInfo" id="i_colorInfo" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--info')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorInfo" id="colorInfo" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--info')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="此颜色用于警告着色"></i>
									警告颜色
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#ffaf00','colorWarning','--warning')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorWarning" id="i_colorWarning" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--warning')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorWarning" id="colorWarning" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--warning')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="这种颜色是危险的着色"></i>
									危险颜色
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#e65251','colorDanger','--danger')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorDanger" id="i_colorDanger" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--danger')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorDanger" id="colorDanger" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--danger')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="此颜色用于浅色"></i>
									浅色
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#f3f5f6','colorLight','light')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorLight" id="i_colorLight" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--light')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorLight" id="colorLight" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--light')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="这种颜色用于深色"></i>
									深色
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#424964','colorDark','--dark')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorDark" id="i_colorDark" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--dark')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorDark" id="colorDark" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--dark')">
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="4" align="center">
								{php} include("./themes/star/customizeTheme.php");{/php}
								<button name="themeChanges" class="btn ok btn-success" onclick="SaveThemeChanges()">保存主题设置</button>
								&nbsp;
								{sb_button text="返回" class="cancel btn-danger" id="fback"}
							</td>
						</tr>
						<tr>
							<td colspan="4" align="center">
								<button class="btn btn-primary">主要</button>
								<button class="btn btn-secondary">次要</button>
								<button class="btn btn-success">成功</button>
								<button class="btn btn-info">信息</button>
								<button class="btn btn-warning">警告</button>
								<button class="btn btn-danger">危险</button>
								<button class="btn btn-light">浅</button>
								<button class="btn btn-dark">暗</button>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>