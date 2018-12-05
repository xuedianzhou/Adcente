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

<title>My JSP 'cjwt.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body {
	background: #f5f5f5;
}

.questionCon {
	position: relative;
	top: 71px;
	width: 760px;
	padding: 50px 120px;
	background: #FFFFFF;
	left: 50%;
	margin-left: -500px;
}

h1.title {
	display: block;
	font-size: 26px;
	text-align: center;
	margin-top: 100px;
	margin-bottom: 40px;
}

.two,.three,.four,.five {
	margin-top: 40px;
}

.ques_Q {
	margin-bottom: 20px;
}

.ques_Q h2,.ques_Q h3 {
	display: inline-block;
	_zoom: 1;
	*display: inline;
	color: #ff7f18;
}

.ques_Q h2 {
	font-size: 50px;
	margin-right: 30px;
}

.ques_Q h3 {
	font-size: 22px;
}

.ques_A h2 {
	color: #000000;
	float: left;
	font-size: 35px;
	margin: 0 40px 0 10px;
}

.ques_A p {
	display: block;
	width: 650px;
	float: left;
	font-size: 15px;
	line-height: 30px;
}
</style>
</head>

<body>
	<div class="big_con">
		<div class="questionCon">
			<h1 class="title">常见问题</h1>
			<div class="one">
				<div class="ques_Q">
					<h2>Q</h2>
					<h3>如何加入广告联盟?</h3>
				</div>
				<div class="ques_A">
					<h2>A</h2>
					<p>
						1、登录 <a href=""https://yjh13673688161.jz.fkw.com/>https://yjh13673688161.jz.fkw.com/</a> 注册，需要验证站点才能提取广告代码；<br />
						2、注册后您将获得在天一广告联盟唯一的计费ID、账户名和密码，注意牢记和保密；<br />
						3、点击"创建广告位"，选择适合您网站的形式、尺寸及风格的广告代码；<br /> 4、将广告代码添加在您网站适宜的位置；<br />
						5、登陆天一联盟查看收入情况；<br /> 
						站长首选广告联盟！
					</p>
					<div class="clear"></div>
				</div>
			</div>
			<div class="two">
				<div class="ques_Q">
					<h2>Q</h2>
					<h3>我有多个网站，可以同时投放广告吗？</h3>
				</div>
				<div class="ques_A">
					<h2>A</h2>
					<p>不可以，投放天一联盟的广告代码每个网站都须通过天一联盟的网站验证，部分产品还需审核站点之后才能投放，
						代码和站点是一一对应的，不允许代码投放再多个站点上，否则广告代码无法显示或不计收益。 （CPA广告联盟直链不受此条限制）</p>
					<div class="clear"></div>
				</div>
			</div>
			<div class="three">
				<div class="ques_Q">
					<h2>Q</h2>
					<h3>如何验证网站?</h3>
				</div>
				<div class="ques_A">
					<h2>A</h2>
					<p>
						1、 链接验证：在您的网站首页添加天一联盟的唯一标识链接，然后点击认证即可；<br />
						2、文件验证：将下载的验证文件上传至您网站的根目录，然后点击认证即可；<br />
						3、元标记验证：在您的网站首页添加天一广告联盟的唯一标识的元标记，然后点击认证 即可；<br />
						如有任何疑问请联系我们的客服人员电话：4006035888或QQ：4006861818
					</p>
					<div class="clear"></div>
				</div>
			</div>
			<div class="four">
				<div class="ques_Q">
					<h2>Q</h2>
					<h3>计费方式和收费标准问题须知</h3>
				</div>
				<div class="ques_A">
					<h2>A</h2>
					<p>
						1、天一联盟计费方式是怎么算的<br />
						答：本站在用户正常使用中不会收取任何费用，只有在用户提现时收取2%的手续费用和广告订单提前撤销时扣除广告主用户的5%的已完成费用。计费方式为广告主发布订单时选择点击的单价和预算金额本站将自动折算为点击量，订单结束时根据该网站主的点击量从冻结金额中发放给网站主金额里。<br /> 2、我的收款信息需要修改，为何后台修改不了？<br />
						答：为了确保会员的佣金安全，收款信息都须由我们的工作人员经过核实后方能修改，故请联系我们的客服人员电话：4006035888或QQ：4006861818为您修改。
					</p>
					<div class="clear"></div>
				</div>
			</div>
			<div class="five">
				<div class="ques_Q">
					<h2>Q</h2>
					<h3>在什么情况下会被拒付广告费？</h3>
				</div>
				<div class="ques_A">
					<h2>A</h2>
					<p>
						1、网站本身及广告违反了国家法律或含有恶性代码与病毒，及包含成人、性、色情、淫 秽、赌博、暴力、反动等等不健康的内容。<br />
						2、所投放广告的网页不属于会员拥有。<br /> 3、牵涉到知识产权纠纷的网站（如非法 MP3 、盗版软件网站，黑客站点，软件序列号
						站点，注册机、注册码站点，或链接至这些网页的站点）。<br />
						4、链接、讨论或提供影响网络秩序的内容，如提供邮件炸弹、计算机病毒等的网站。<br />
						5、对作弊的帐户我们一旦查出，将拒绝支付当周全部的佣金，并锁定帐户。<br /> 6、被查出同一人注册多个帐号的网站。<br />
						7、使用非 HTML 手段、 JAVASRIPT 窗口、隐藏 FRAME 、CGI 自动生成、网页 REFRESH/AUTOLOAD
						等手段来演绎广告代码。<br /> 8、不可由会员本人或指示、暗示第三方点击广告以获取非法广告费。
					</p>
					<div class="clear"></div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>
