<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h3>服务器在线管理员 <i class="btn btn-outline-primary btn-rounded btn-fw" style="width:20px;height:20px;padding:0px;line-height:18px;">总数:{$admin_count}</i></h3>
				<br /><br />
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th width="50%">管理员名称</th>
								<th width="50%">管理员SteamID</th>
							</tr>
						</thead>
						{foreach from=$admin_list item=admin}
						{if $admin.user}
						<tr class="opener tbl_out" onmouseout="this.className='tbl_out'" onmouseover="this.className='tbl_hover'">
							<td class="listtable_1{if $admin.ingame}_unbanned{/if}" style="border-bottom: solid 1px #ccc">{$admin.user|escape:'html'}</td>
							<td class="listtable_1{if $admin.ingame}_unbanned{/if}" style="border-bottom: solid 1px #ccc">{$admin.authid}</td>
						</tr>
						<tr align="left">
							<td colspan="7" align="center">
								<div class="opener">
									{if $admin.ingame}
									<table width="80%" cellspacing="0" cellpadding="0" class="listtable">
										<tr>
											<td align="left" colspan="5">
												管理员游戏详情
											</td>
										</tr>
										<tr align="left">
											<td width="30%">名称</td>
											<td width="20%">Steam ID</td>
											<td width="20%">IP</td>
											<td width="20%">连接时间</td>
											<td width="20%">延迟</td>
										</tr>
										<tr align="left">
											<td>
												{$admin.iname|escape:'html'}
											</td>
											<td>
												{$admin.authid}
											</td>
											<td>
												{$admin.iip}
											</td>
											<td>
												{$admin.itime}
											</td>
											<td>
												{$admin.iping}
											</td>
										</tr>
									</table>
									{/if}
								</div>
							</td>
						</tr>
						{/if}
						{/foreach}
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<script>InitAccordion('tr.opener', 'div.opener', 'mainwrapper');</script>