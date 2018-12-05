<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'zhucejsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="/v3f/css/r.css">
<link rel="stylesheet" href="/v3f/css/common.css">
<script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
<style type="text/css">
body {
	background-image: url("/v3f/css/img/2.png");
	color: yellow;
}
</style>
</head>
<body>
	<div class="big_con">
		<!--注册-->


		<div class="register">
			<div class="register_tit">
				<img
					src="/v3f/css/img/e2fb6a638a8e04a4681df064ad64adc7_register_tit.png" />
			</div>
			<!--表单-->
			<form action="add" method="post" id="f">
				<!--账户信息-->
				<div class="account_info">
					<div class="left_text">

					</div>
					<div class="right_input">
						<input type="text" id="uname" name="uname" class="input_text"
							maxlength="11" placeholder="用户名" onfocus="t_mobile();"
							onblur="v_mobile()" /> <span class="prompt mobile_text"></span>
						<div class="mimaKuang">
							<input type="password" name="rpwd" id="rpwd" class="input_text"
								placeholder="设置密码" onfocus="t_password();"
								onblur="v_password();" /> <span class="prompt password_text"></span>

						</div>
						<div class="mimaKuang">
							<input type="password" id="password" name="password"
								class="input_text" placeholder="确认密码" onfocus="t_password();"
								onblur="v_password();" /> <span class="prompt passwordre_text"></span>
						</div>
						<div class="account_info">
							<div class="right_input">
								<input type="text" id="phone" name="phone" class="input_text"
									maxlength="11" placeholder="手机号" onfocus="t_mobile();"
									onblur="v_mobile()" /> <span class="prompt mobile_text"></span>

								<div class="mimaKuang">
									<input type="text" id="code" class="input_text" maxlength="6"
										placeholder="短信验证码" onfocus="t_smsCode();"
										onblur="v_smsCode();" /> &nbsp;
									<div class="getCode" onclick="sendCode()" id="getSmsCode">获取验证码</div>
									<span class="prompt smsCode_text"></span>
								</div>
								<div class="mimaKuang">
									<input type="hidden" id="proof" name="proof"
										class="input_text" placeholder="身份证号" onfocus="t_password();"
										onblur="v_password();" /> <span class="prompt passwordre_text"></span>
								</div>
							</div>
						</div>
						<div class="clear"></div>
						<span class="prompt terms_text"
							style="margin-left: 100px;margin-top: 5px;"></span>
						<div class="registerSubmit">
							<button type="submit" id="submit">提交注册</button>
						</div>
						</script>

					</div>
				</div>
			</form>
		</div>
	</div>


</body>
<script type="text/javascript">
	var c = null;
	function sub() {
		var name = document.getElementById('uname').value;
		var pass = document.getElementById('rpwd').value;
		if (name != null && pass != null ) {
			 return false;
		} 
	}
	function sendCode() {
		var p = document.getElementById('phone').value;
		$.ajax({
			url : "code",
			type : "post",
			data : {
				phone : p
			},
			success : function(data) {
				alert(data);
				if (data != "") {
					c = data;
				}
			}
		});

	}
	$("#code").blur(function() {
		if ($("#code").val() != c) {
			alert("验证码有错");
			return;
		}
	})
	$("#phone").blur(function() {
		var phone = $(this).val();
		var pattern = /^1[34578]\d{9}$/;
		if (phone != "") {
			if (phone.substring(0, 1) == 1) {
				if (pattern.test(phone)) {

				} else {

				}
			} else {

			}
		} else {

		}
	})
</script>
</html>