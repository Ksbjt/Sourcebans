<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h4 class="lead">提交一份封禁申请</h4>
				<p>
					在这里，您将能够为违反游戏服务器规则的玩家提交封禁申请。 提交封禁申请时，我们要求您填写所有区块，以便在您的评论中尽可能具有描述性。 这将确保您的封禁提交得到更快的处理。<br /><br />
					有关如何创建demo的简短说明，请单击 <a href="javascript:void(0)" onclick="ShowBox('如何录制一个demo', '在观看违规玩家时，按键盘上的 ` 键。 然后输入record [demo的名字] 并回车。 还可以键入 sb_status 以获取 SteamBans 服务器中的额外信息。 该文件将在您的游戏文件夹中。', 'blue', '', true);">查看</a><br /><br />
				</p>
				{literal}
				<style>
					.form-group label{text-align:right;}
				</style>
				{/literal}
				<form action="index.php?p=submit" method="post" enctype="multipart/form-data">
					<input type="hidden" name="subban" value="1">
					<p class="card-description">
						封禁详情
					</p>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">玩家 SteamID:</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="SteamID" value="{$STEAMID}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">玩家 IP:</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="BanIP" value="{$ban_ip}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">玩家昵称<span class="text-danger">*</span>:</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="PlayerName" value="{$player_name}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">举报内容<span class="text-danger">*</span>:<br/>
								(请勿只写比如：“作弊”)</td></label>
								<div class="col-sm-9">
									<textarea name="BanReason" cols="30" rows="5" class="form-control">{$ban_reason}</textarea>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">你的名字:</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="SubmitName" value="{$subplayer_name}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">你的邮箱<span class="text-danger">*</span>:</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="EmailAddr" value="{$player_email}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">服务器<span class="text-danger">*</span>:</label>
								<div class="col-sm-9">
									<select class="form-control" name="server">
									{foreach from="$server_list" item="server}
									<option value="{$server.sid}" {if $server_selected == $server.sid}selected{/if}>{$server.hostname}</option>
									{/foreach}
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">上传demo:</label>
								<div class="col-sm-9">
									<input type="file" class="form-control" name="demo_file" value="{$player_email}"/>
									<p>注意:仅支持dem, <a href="http://www.winzip.com" target="_blank">ZIP</a>, <a href="http://www.rarlab.com" target="_blank">RAR</a>, <a href="http://www.7-zip.org" target="_blank">7Z</a>, <a href="http://www.bzip.org" target="_blank">BZ2</a> 或 <a href="http://www.gzip.org" target="_blank">GZ</a> 文件.	
									</td>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label"><span class="text-danger">*</span>  必填</label>
								<div class="col-sm-9">
									<input type="submit" name="save" class="btn btn-success" value="提交">
								</div>
							</div>
						</div>
					</div>
				</form>
				<p class="lead">如果有人被封禁会怎样？</p>
				<p>
					如果有人被封禁，特定的 STEAMID 或 IP 将被记录在在此 SourceBans 数据库中，并且每次该玩家尝试连接到我们的其中一个服务器时，他/她都会被阻止，并会收到一条消息，表明他们已被 SourceBans 封禁。 
				</p>
			</div>
		</div>
	</div>
</div>