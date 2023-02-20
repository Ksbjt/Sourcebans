{if NOT $permission_protests}
Access Denied!
{else}
<div id="protests" class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body" id="add-group1">
				<h3>封禁申诉 <i class="btn btn-outline-primary btn-rounded btn-fw" style="width:20px;height:20px;padding:0px;line-height:18px;">所有申诉:{$protest_count}</i></h3>
				<p>点开一名玩家的昵称来查看他的封禁情况</p>
				<br /><br />
				<div class="table-responsive">
					<div class="col-12 my-2 text-xl-right text-lg-left">
						<div id="banlist-nav" class="btn btn-inverse-light  btn-rounded btn-fw p-1 p-md-2 p-xl-2">
							{$protest_nav}
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
						{foreach from="$protest_list" item="protest"}
						<tr style="cursor:pointer;" data-toggle="collapse" data-target="#expand_protest_{$protest.pid}" aria-expanded="false" aria-controls="collapseExample">
							<td><a href="./index.php?p=banlist&advSearch={$protest.authid}&advType=steamid" title="查看封禁">{$protest.name}</a></td>
							<td>{if $protest.authid!=""}{$protest.authid}{else}{$protest.ip}{/if}</td>
							<td>
								{if $permission_editban}
								<a href="#" onclick="RemoveProtest('{$protest.pid}', '{if $protest.authid!=""}{$protest.authid}{else}{$protest.ip}{/if}', '1');">删除</a> -
								{/if}
								<a href="index.php?p=admin&c=bans&o=email&type=p&id={$protest.pid}">联系</a>
							</td>
						</tr>
						<tr id="pid_{$protest.pid}a" >
							<td id="ban_details_{$protest.pid}" style="padding:0;" colspan="3">
								<div class="collapse" id="expand_protest_{$protest.pid}" data-parent="#protests">
									<table class="table tbl-sm" width="100%">
										<tr>
											<td height="16" align="left" class="listtable_top" colspan="3">
												<b>封禁详情</b>
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">玩家</td>
											<td height="16">{$protest.name}</td>
											<td width="30%" rowspan="11" class="listtable_2">
												<div class="ban-edit">
													{literal}
													<style>
														.list-arrow > li > a > img { width:16px; height:16px;}
													</style>
													{/literal}
													<ul class="list-arrow"  id="fix_banlinks">
														<li>{$protest.protaddcomment}</li>
													</ul>
												</div>
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">SteamID</td>
											<td height="16">
												{if $protest.authid == ""}
												<i><font color="#677882">暂无steamID</font></i>
												{else}
												{$protest.authid}
												{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">IP 地址</td>
											<td height="16">
												{if $protest.ip == 'none' || $protest.ip == ''}
												<i><font color="#677882">暂无IP地址</font></i>
												{else}
												{$protest.ip}
												{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">调用日期</td>
											<td height="16">{$protest.date}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">截止日期</td>
											<td height="16">
												{if $protest.ends == 'never'}
												<i><font color="#677882">不适用</font></i>
												{else}
												{$protest.ends}
												{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">原因</td>
											<td height="16">{$protest.ban_reason}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">被管理员封禁</td>
											<td height="16">{$protest.admin}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">封自</td>
											<td height="16">{$protest.server}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">申诉者 IP</td>
											<td height="16">{$protest.pip}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">申诉提交日期</td>
											<td height="16">{$protest.datesubmitted}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">申诉内容</td>
											<td height="16">{$protest.reason}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16">评论</td>
											<td height="60" colspan="3">
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
															<i><font color="#677882">已被管理员删除</font></i>
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
							{$protest_nav}
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>InitAccordion('tr.opener2', 'div.opener2', 'protests');</script>
{/if}