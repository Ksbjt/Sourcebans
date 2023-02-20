{if NOT $permission_addban}
Access Denied!
{else}
{if NOT $groupbanning_enabled}
This feature is disabled! Only follow links!
{else}
<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h3>添加组封禁</h3>
				{if NOT $list_steam_groups}
				<p>在这你可以给一个steam组的人封禁<br />
					e.g. <code>http://steamcommunity.com/groups/interwavestudios</code>
				</p>
				<br /><br />
				<div class="table-responsive">
					<table class="table table-striped" id="group.details">
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="输入steam组的链接"></i>
									组链接 
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=1 class="form-control" id="groupurl" name="groupurl" />
								</div>
								<div id="groupurl.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="输入你要封禁该steam组的原因"></i>
									封禁组的原因 
								</div>
							</td>
							<td>
								<div align="left">
									<textarea class="form-control" TABINDEX=2 cols="30" rows="5" id="groupreason" name="groupreason" /></textarea>
								</div>
								<div id="groupreason.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>
								{sb_button text="添加组封禁" onclick="ProcessGroupBan();" class="ok btn-success" id="agban" submit=false}
								&nbsp;
								{sb_button text="返回" onclick="history.go(-1)" class="cancel btn-danger" id="aback"}
							</td>
						</tr>
					</table>
				</div>
				{else}
				<p>玩家 {$player_name} 所在的steam组已列出<br />
					选择你要封禁的组
				</p>
				<br /><br />
				<div id="steamGroupsText" name="steamGroupsText">正在载入组...</div>
				<div id="steamGroups" name="steamGroups" style="display:none;" class="table-responsive">
					<table id="steamGroupsTable" class="table" name="steamGroupsTable" border="0" width="500px">
						<tr>
							<td height="16" class="listtable_1" style="padding:0px;width:3px;" align="center">
								<div class="ok" style="display:none;height:16px;width:16px;cursor:pointer;" id="tickswitch" name="tickswitch" onclick="TickSelectAll();"></div>
								<button type="button" class="btn btn-icons btn-outline-primary" onclick="TickSelectAll()" style="width:20px;height:20px;padding:0px;">
								<i class="mdi mdi-select-all"></i>
								</button>
							</td>
							<td height="16" class="listtable_top" align="center"><b>组</b></td>
						</tr>
					</table>
					&nbsp;&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-outline-primary btn-rounded btn-fw" style="height:24px;padding: 2px 10px; min-width:85px;" 
						onclick="TickSelectAll();return false;" title="Select All" name="tickswitchlink" id="tickswitchlink">选择全部</button><br /><br />
					<div class="table-responsive">
						<table  id="group.details" class="table">
							<tr>
								<td valign="top" width="35%">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="输入你要封禁该steam社区组的原因"></i> 
										组封禁原因 
									</div>
								</td>
								<td>
									<div align="left">
										<textarea class="form-control" TABINDEX=2 cols="30" rows="5" id="groupreason" name="groupreason" /></textarea>
									</div>
									<div id="groupreason.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;
								</td>
								<td>
									<input type="button" class="btn ok btn-success" onclick="CheckGroupBan();" name="gban" id="gban" onmouseover="ButtonOver('gban');" onmouseout="ButtonOver('gban');" value="Add Group Ban">
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div id="steamGroupStatus" name="steamGroupStatus" width="100%"></div>
				<script type="text/javascript">$('tickswitch').value = 0;xajax_GetGroups('{$list_steam_groups}');</script>
				{/if}
			</div>
		</div>
	</div>
</div>
{/if}
{/if}