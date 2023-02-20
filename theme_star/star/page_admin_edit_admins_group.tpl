<form action="" method="post">
	<div id="admin-page-content">
		<div class="row">
			<div class="col-lg-12 grid-margin">
				<div class="card">
					<div class="card-body" id="add-group">
						<h3>管理员组</h3>
						<p>有关特定主题的更多信息或帮助，请将鼠标移到问号按钮上。<br /><br />
							选择你想 <b>{$group_admin_name}</b> 出现在的管理员组.
						</p>
						<br /><br />
						<div class="table-responsive">
							<table class="table" id="group.details">
								<tr>
									<td valign="middle">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选择您希望此管理员出现的组以获得网页管理权限"></i>
										网页管理员组
									</td>
									<td>
										<div align="left" id="wadmingroup">
											<select name="wg" id="wg" class="form-control">
												<option value="-1">无分组</option>
												<optgroup label="Groups" style="font-weight:bold;">
													{foreach from=$web_lst item=wg}
													<option value="{$wg.gid}"{if $wg.gid == $group_admin_id} selected="selected"{/if}>{$wg.name}</option>
													{/foreach}
												</optgroup>
											</select>
										</div>
										<div id="wgroup.msg" class="badentry"></div>
									</td>
								</tr>
								<tr id="nsgroup" valign="top" style="height:5px;overflow:hidden;">
								</tr>
								<tr>
									<td valign="middle">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选择您希望此管理员出现的组以获得服务器管理员权限"></i>
										服务器管理员组 
									</td>
									<td>
										<div align="left" id="wadmingroup">
											<select name="sg" id="sg" class="form-control">
												<option value="-1">无分组</option>
												<optgroup label="Groups" style="font-weight:bold;">
													{foreach from=$group_lst item=sg}
													<option value="{$sg.id}"{if $sg.id == $server_admin_group_id} selected="selected"{/if}>{$sg.name}</option>
													{/foreach}
												</optgroup>
											</select>
										</div>
										<div id="sgroup.msg" class="badentry"></div>
									</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>
										{sb_button text="保存" class="ok" id="agroups" submit=true}
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
	</div>
</form>