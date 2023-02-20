{if NOT $permission_protests}
访问拒绝！
{else}
<div id="protestsa" class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body" id="add-group1">
				<h3>封禁申诉归档 <i class="btn btn-outline-primary btn-rounded btn-fw" style="width:20px;height:20px;padding:0px;line-height:18px;">总归档数:{$protest_count_archiv}</i></h3>
				<p>点击一个玩家的昵称来查看他的封禁情况</p>
				<br /><br />
				<div class="table-responsive">
					<div class="col-12 my-2 text-xl-right text-lg-left">
						<div id="banlist-nav" class="btn btn-inverse-light  btn-rounded btn-fw p-1 p-md-2 p-xl-2">
							{$aprotest_nav}
						</div>
					</div>
					<table class="table">
						<thead>
							<tr>
								<th>昵称</th>
								<th>SteamID</th>
								<th>行为</th>
							</tr>
						</thead>
						{foreach from="$protest_list_archiv" item="protest"}
						<tr style="cursor:pointer;" data-toggle="collapse" data-target="#expand_protestsa_{$protest.pid}" aria-expanded="false" aria-controls="collapseExample">
							<td class="toggler" style="border-bottom: solid 1px #ccc">{if $protest.archiv!=2}<a href="./index.php?p=banlist{if $protest.authid!=""}&advSearch={$protest.authid}&advType=steamid{else}&advSearch={$protest.ip}&advType=ip{/if}" title="查看封禁">{$protest.name}</a>{else}<i><font color="#677882">封禁已被删除</font></i>{/if}</td>
							<td style="border-bottom: solid 1px #ccc">{if $protest.authid!=""}{$protest.authid}{else}{$protest.ip}{/if}</td>
							<td style="border-bottom: solid 1px #ccc">
								{if $permission_editban}
								<a href="#" onclick="RemoveProtest('{$protest.pid}', '{if $protest.authid!=""}{$protest.authid}{else}{$protest.ip}{/if}', '2');">重置</a> -
								<a href="#" onclick="RemoveProtest('{$protest.pid}', '{if $protest.authid!=""}{$protest.authid}{else}{$protest.ip}{/if}', '0');">删除</a> -
								{/if}
								<a href="index.php?p=admin&c=bans&o=email&type=p&id={$protest.pid}">联系</a>
							</td>
						</tr>
						<tr id="pid_{$protest.pid}a" >
							<td id="ban_details_{$protest.pid}" style="padding:0;" colspan="4">
								<div class="collapse" id="expand_protestsa_{$protest.pid}" data-parent="#protestsa">
									<table class="table tbl-sm" width="100%">
										<tr>
											<td height="16" align="left" colspan="5">
												<b>封禁详情</b>
											</td>
										</tr>
										<tr align="left">
											<td height="16" align="left" class="listtable_1" colspan="2">
												<b>因 {$protest.archive} 被归档</b>
											</td>
											<td width="30%" rowspan="{if $protest.archiv == "2"}5{else}13{/if}" class="listtable_2">
											<div class="ban-edit">
												<ul class="list-arrow"  id="fix_banlinks">
													<li>{$protest.protaddcomment}</li>
												</ul>
											</div>
											</td>
										</tr>
										{if $protest.archiv!=2}
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">玩家</td>
											<td height="16" class="listtable_1">{$protest.name}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">SteamID</td>
											<td height="16" class="listtable_1">
												{if $protest.authid == ""}
												<i><font color="#677882">暂无steamID</font></i>
												{else}
												{$protest.authid}
												{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">IP 地址</td>
											<td height="16" class="listtable_1">
												{if $protest.ip == 'none' || $protest.ip == ''}
												<i><font color="#677882">暂无IP地址</font></i>
												{else}
												{$protest.ip}
												{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">被调用日期</td>
											<td height="16" class="listtable_1">{$protest.date}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">截止日期</td>
											<td height="16" class="listtable_1">
												{if $protest.ends == 'never'}
												<i><font color="#677882">不适用</font></i>
												{else}
												{$protest.ends}
												{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">原因</td>
											<td height="16" class="listtable_1">{$protest.ban_reason}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">被管理员封禁</td>
											<td height="16" class="listtable_1">{$protest.admin}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">被封自</td>
											<td height="16" class="listtable_1">{$protest.server}</td>
										</tr>
										{/if}
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">归档自</td>
											<td height="" class="listtable_1">
												{if !empty($protest.archivedby)}
												{$protest.archivedby}
												{else}
												<i><font color="#677882">管理员删除</font></i>
												{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">申诉者IP</td>
											<td height="16" class="listtable_1">{$protest.pip}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">申诉提交于</td>
											<td height="16" class="listtable_1">{$protest.datesubmitted}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">申诉内容</td>
											<td height="16" class="listtable_1">{$protest.reason}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">评论</td>
											<td height="60" class="listtable_1" colspan="3">
												{if $protest.commentdata != "None"}
												<table width="100%" border="0">
													{foreach from=$protest.commentdata item=commenta}
													{if $commenta.morecom}
													<tr>
														<td colspan="3">
															<hr />
														</td>
													</tr>
													{/if}
													<tr>
														<td>
															{if !empty($commenta.comname)}
															<b>{$commenta.comname|escape:'html'}</b>
															{else}
															<i><font color="#677882">管理员删除</font></i>
															{/if}
														</td>
														<td align="right"><b>{$commenta.added}</b>
														</td>
														{if $commenta.editcomlink != ""}
														<td align="right" class="imgfix linkfix">
															{$commenta.editcomlink} {$commenta.delcomlink}
														</td>
														{/if}
													</tr>
													<tr>
														<td colspan="2" style="word-break: break-all;word-wrap: break-word;">
															{$commenta.commenttxt}
														</td>
													</tr>
													{if !empty($commenta.edittime)}
													<tr>
														<td colspan="3">
															<span style="font-size:6pt;color:grey;">最后一次在 {$commenta.edittime} 由 {if !empty($commenta.editname)}{$commenta.editname}{else} 编辑<i><font color="#677882">管理员删除</font></i>{/if}</span>
														</td>
													</tr>
													{/if}
													{/foreach}
												</table>
												{/if}
												{if $protest.commentdata == "None"}
												{$protest.commentdata}
												{/if}
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
						{/foreach}
					</table>
					<div class="col-12 my-2 text-xl-right text-lg-left">
						<div id="banlist-nav" class="btn btn-inverse-light  btn-rounded btn-fw p-1 p-md-2 p-xl-2">
							{$aprotest_nav}
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>InitAccordion('tr.opener5', 'div.opener5', 'protests');</script>
{/if}