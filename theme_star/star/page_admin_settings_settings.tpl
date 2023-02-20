<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<form action="" method="post">
					<input type="hidden" name="settingsGroup" value="mainsettings" />
					<h3>主要设置</h3>
					<p>有关特定主题的更多信息或帮助，请将鼠标移到问号按钮上。</p>
					<br /><br />
					<div class="table-responsive">
						<table class="table table-striped">
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="在浏览器标题中显示的标题。"></i>
										标题 
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=1 class="form-control" id="template_title" name="template_title" value="{$config_title}" />
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="您可以在此处定义logo的新位置，以便使用自己的图像。"></i>
										logo地址 
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=2 class="form-control" id="template_logo" name="template_logo" value="{$config_logo}" />
										<p class="mt-1 mb-0">对于最小的迷你logo，请在文件末尾添加&quot;-mini&quot; . <code>sb-logo.png &gt; sb-logo-mini.png</code></p>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="密码的最短长度。"></i>
										密码最短长度 
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=3 class="form-control" id="config_password_minlength" name="config_password_minlength" value="{$config_min_password}" />
									</div>
									<div id="minpasslength.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="在这里您可以更改日期格式，显示在封禁列表和其他页面中。"></i>
										日期格式 
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=4 class="form-control" id="config_dateformat" name="config_dateformat" value="{$config_dateformat}" />
										<a href="http://www.php.net/date" target="_blank">点此查看: PHP date()用法</a>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选中此框以永久启用调试模式。"></i>
										调试模式
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="config_debug" type="checkbox" TABINDEX=6 name="config_debug" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top" colspan="2">
									<h3>展示面板设定</h3>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="设置介绍板介绍的标题。"></i>
										介绍标题 
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=7 class="form-control" id="dash_intro_title" name="dash_intro_title" value="{$config_dash_title}" />
									</div>
									<div id="dash.intro.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Set the text for the dashboard introduction."></i>
										介绍内容 
									</div>
								</td>
								<td>
									<div align="left">  </div>
								</td>
							</tr>
							<tr>
								<td valign="top" colspan="2"> <textarea TABINDEX=6 cols="80" rows="20" id="dash_intro_text" name="dash_intro_text">{$config_dash_text}</textarea>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选中此框可禁用日志信息弹出窗口并使用直接链接。"></i>
										禁用日志弹出
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="dash_nopopup" type="checkbox" TABINDEX=8 name="dash_nopopup" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top" colspan="2">
									<h3>页面设定</h3>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选中此框以启用申诉禁令页面。"></i>
										开启申诉封禁
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_protest" type="checkbox" TABINDEX=9 name="enable_protest" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选中此框以启用提交封禁页面。"></i>
										开启提交封禁
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_submit" type="checkbox" TABINDEX=10 name="enable_submit" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选中此框以启用通讯屏蔽封禁页面。"></i>
										启用通讯屏蔽列表
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_commslist" type="checkbox" TABINDEX=10 name="enable_commslist" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选中此框以仅将申诉发至封禁玩家的管理员邮箱。"></i>
										只发送一封邮件
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="protest_emailonlyinvolved" type="checkbox" TABINDEX=9 name="protest_emailonlyinvolved" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选择打开网址看到的第一页面。"></i>
										默认页面
									</div>
								</td>
								<td>
									<div align="left">
										<select class="form-control" TABINDEX=11 name="default_page" id="default_page">
											<option value="0">展示面板</option>
											<option value="1">封禁列表</option>
											<option value="2">服务器</option>
											<option value="3">提交封禁</option>
											<option value="4">申诉封禁</option>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="单击此按钮，清理themes_c 文件夹。"></i>
										清理缓存
									</div>
								</td>
								<td>
									<div align="left">
										{sb_button text="清除缓存" onclick="xajax_ClearCache();" class="cancel" id="clearcache" submit=false}
									</div>
									<div id="clearcache.msg"></div>
								</td>
							</tr>
							<tr>
								<td valign="top" colspan="2">
									<h3>封禁列表设置</h3>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选择要在每页上显示的项目数。"></i>
										每页的选项 
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=12 class="form-control" id="banlist_bansperpage" name="banlist_bansperpage" value="{$config_bans_per_page}" />
									</div>
									<div id="bansperpage.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="如果您想在封禁信息中隐藏管理员的名称，请选中此框。"></i>
										隐藏管理员名称
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="banlist_hideadmname" type="checkbox" TABINDEX=13 name="banlist_hideadmname" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div id="banlist_hideadmname.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="如果您不想在封禁列表中显示 IP 之外的国家/地区，请选中此框。 如果您遇到显示问题，请使用。"></i>
										取消国家显示
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="banlist_nocountryfetch" type="checkbox" TABINDEX=14 name="banlist_nocountryfetch" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div id="banlist_nocountryfetch.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="如果您想对公众隐藏玩家 IP，请选中此框。"></i>
										隐藏玩家IP
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="banlist_hideplayerips" type="checkbox" TABINDEX=15 name="banlist_hideplayerips" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div id="banlist_hideplayerips.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="输入您希望在下拉菜单中显示的自定义原因。"></i>
										自定义封禁原因
									</div>
								</td>
								<td>
									<div align="left">
										<table width="100%" border="0" style="border-collapse:collapse;" id="custom.reasons" name="custom.reasons">
											{foreach from="$bans_customreason" item="creason"}
											<tr>
												<td><input type="text" class="form-control" name="bans_customreason[]" id="bans_customreason[]" value="{$creason}"/></td>
											</tr>
											{/foreach}
											<tr>
												<td><input type="text" class="form-control" name="bans_customreason[]" id="bans_customreason[]"/></td>
											</tr>
											<tr>
												<td><input type="text" class="form-control" name="bans_customreason[]" id="bans_customreason[]"/></td>
											</tr>
										</table>
										<table>
											<tr>
												<td>
													<a href="javascript:void(0)" onclick="MoreFieldsNewCss();" title="Add more fields" class="btn btn-primary"> 添加更多板块</a>
												</td>
											</tr>
										</table>
									</div>
									<div id="bans_customreason.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top" colspan="2">&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>
									{sb_button text="保存" class="ok btn-success" id="asettings" submit=true}
									&nbsp;
									{sb_button text="返回" class="cancel btn-danger" id="aback"}
								</td>
							</tr>
						</table>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<script>$('sel_timezoneoffset').value = "{$config_time}";</script>
{literal}
<script type="text/javascript">
	function MoreFieldsNewCss()
	{
		var t = document.getElementById("custom.reasons");
		var tr = t.insertRow("-1");
		var td = tr.insertCell("-1");
		var inp = document.createElement("input");
		inp.setAttribute("type","text");
		inp.className = "submit-fields form-control";
		inp.setAttribute("name","bans_customreason[]");
		inp.setAttribute("id","bans_customreason[]");
		td.appendChild(inp);
	}
</script>
{/literal}