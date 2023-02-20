{if NOT $permission_listmods}
访问拒绝！
{else}
<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h3>服务器游戏 <i class="btn btn-outline-primary btn-rounded btn-fw" style="width:20px;height:20px;padding:0px;line-height:18px;">所有模式:{$mod_count}</i></h3>
				<div id="banlist" class="table-responsive">
					<table class="table table-striped tbl-sm">
						<thead>
							<tr>
								<th width="50%">名称</th>
								<th width="25%">游戏文件</th>
								<th width="10%">
									<center>游戏图标</center>
								</th>
								<th width="2%"><span data-toggle="tooltip" data-placement="bottom" data-html="true" title="SteamID 全球 <br>(X of STEAM_X:Y:Z)">SU</span></th>
								{if $permission_editmods || $permission_deletemods}
								<th>行为</th>
								{/if}
							</tr>
						</thead>
						<tbody>
							{foreach from="$mod_list" item="mod" name="gaben"}
							<tr id="mid_{$mod.mid}">
								<td>{$mod.name|htmlspecialchars}</td>
								<td>{$mod.modfolder|htmlspecialchars}</td>
								<td align="center"><img src="themes/star/images/games/{$mod.icon}" class="img-ss"></td>
								<td>{$mod.steam_universe|htmlspecialchars}</td>
								{if $permission_editmods || $permission_deletemods}
								<td>
									{if $permission_editmods}
									<a href="index.php?p=admin&c=mods&o=edit&id={$mod.mid}" class="badge badge-primary"><i class="icon-sm mdi mdi-pencil"></i>编辑</a> - 
									{/if}
									{if $permission_deletemods}
									<a href="#" onclick="RemoveMod('{$mod.name|escape:'quotes'|htmlspecialchars}', '{$mod.mid}');"  class="badge badge-danger"><i class="icon-sm mdi mdi-delete"></i>删除</a>
									{/if}
								</td>
								{/if}
							</tr>
							{/foreach}
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
{/if}