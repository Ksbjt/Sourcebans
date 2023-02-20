{if NOT $permission_addgroup}
访问拒绝！
{else}
<div class="row" id="add-group">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h3>新建用户组</h3>
				<div class="table-responsive" id="group.details">
					<table class="table table-striped">
						<tr>
							<td valign="top" width="35%">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="输入你想添加的玩家组名"></i>
									用户组名 
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=1 class="form-control" id="groupname" name="groupname" />
								</div>
								<div id="name.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="这定义了您将要创建的玩家组的类型。 这有助于识别和分类组列表。"></i>
									玩家组类型 
								</div>
							</td>
							<td>
								<div align="left">
									<select onchange="UpdateGroupPermissionCheckBoxes()" TABINDEX=2 class="form-control" name="grouptype" id="grouptype">
										<option value="0">请选择...</option>
										<option value="1">网页管理员组</option>
										<option value="2">服务器管理员</option>
										<option value="3">服务器组</option>
									</select>
								</div>
								<div id="type.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td colspan="2" id="perms" valign="top" style="height:5px;overflow:hidden;"></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>      
								{sb_button text="保存" onclick="ProcessGroup();" class="ok" id="agroup" submit=false}
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