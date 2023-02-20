<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h3>玩家邮箱  <i class="btn btn-outline-primary btn-rounded btn-fw" style="height:20px;padding:0px 10px;line-height:18px;">{$email_addr}</i></h3>
				<div class="table-responsive">
					<table id="group.details" class="table table-striped">
						<tr>
							<td>
								<div class="rowdesc"><i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="输入邮件的主题"></i>
									主题 
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=1 class="form-control"  id="subject" name="subject" />
								</div>
								<div id="subject.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc"><i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="输入邮件具体内容"></i>
									信息 
								</div>
							</td>
							<td>
								<div align="left">
									<textarea class="form-control"  TABINDEX=2 cols="35" rows="7" id="message" name="message"></textarea>
								</div>
								<div id="message.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>
								{sb_button text="发送邮箱" onclick="$email_js" class="ok btn-success" id="aemail" submit=false}
								&nbsp;
								{sb_button text="返回" onclick="history.go(-1)" class="cancel btn-danger" id="back" submit=false}
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>