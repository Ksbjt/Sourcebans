{if NOT $permission_add}
Access Denied!
{else}
<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h3>添加游戏</h3>
				<p>有关特定主题的更多信息或帮助，请将鼠标移到问号按钮上。</p>
				<div class="table-responsive">
					<table class="table table-striped" id="group.details" cellpadding="3">
						<tr>
							<td valign="top" width="35%">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="输入您要添加的游戏的名称。"></i>
									游戏名称 
								</div>
							</td>
							<td>
								<div align="left">
									<input type="hidden" id="fromsub" value="" />
									<input type="text" TABINDEX=1 class="form-control" id="name" name="name" />
								</div>
								<div id="name.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="输入此游戏文件的名称。 例如 Counter-Strike: Source 的文件是 'cstrike'"></i>
									游戏文件 
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=2 class="form-control" id="folder" name="folder" />
								</div>
								<div id="folder.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc"><i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="(STEAM_<b>X</b>:Y:Z) 有些游戏显示 steamid 的方式与其他游戏不同。 根据此游戏的渲染方式，键入 SteamID 中的第一个数字 (<b>X</b>)。(默认: 0)."></i>Steam 全球编号</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=3 class="form-control" id="steam_universe" name="steam_universe" value="0" />
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选择此模游戏是否已启用并可分配给封禁和服务器。"></i>开启
								</div>
							</td>
							<td>
								<div align="left">
									<div class="form-group d-flex justify-content-between">
										<div class="form-check" id="loginRememberMeDiv">
											<label class="form-check-label">
											<input type="checkbox" id="enabled" name="enabled" value="1" TABINDEX=4 vspace="5px" checked="checked" class="form-check-input" checked=""> &nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top" width="35%">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="单击此处上传与此游戏关联的图标。"></i>上传图标
								</div>
							</td>
							<td>
								<div align="left">
									{sb_button text="上传游戏图标" onclick="childWindow=open('pages/admin.uploadicon.php','upload','resizable=yes,width=300,height=130');" class="save" id="upload"}
								</div>
								<div id="icon.msg" style="color:#CC0000;"></div>
							</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>		
								{sb_button text="添加游戏" onclick="ProcessMod();" class="ok" id="amod"}&nbsp;
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