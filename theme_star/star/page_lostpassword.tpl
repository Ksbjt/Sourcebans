<div class="card" id="lostpassword">
	<div class="col-lg-5 mx-auto p-lg-4">
		<h4 class="card-title mb-4">
			请在下面的框中输入您的电子邮件地址以重置您的密码。 
		</h4>
		<div class="auto-form-wrapper " id="login-content">
			<div id="msg-red" style="display:none;">
				<i>
				<img src="./images/warning.png" alt="Warning" />
				</i>
				<b>错误</b>
				<br />
				您提供的电子邮件地址未在系统上注册。</i>
			</div>
			<div id="msg-blue" style="display:none;">
				<i>
				<img src="./images/info.png" alt="Warning" />
				</i>
				<b>信息</b>
				<br />
				请检查您的电子邮件收件箱（和垃圾邮件）以获取有助于您重置密码的链接。</i>
			</div>
			<div class="form-group" id="loginPasswordDiv">
				<label class="label" for="email">您的电子邮件地址</label>
				<div class="input-group">
					<input type="text" class="form-control" id="email" name="password" value="">
				</div>
			</div>
			<div id="loginSubmit" class="form-group text-center">
				{sb_button text=Ok onclick="xajax_LostPassword($('email').value);" class="btn btn-primary submit-btn btn-block" id=alogin submit=false}
			</div>
		</div>
	</div>
</div>