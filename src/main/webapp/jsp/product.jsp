<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>My JSP 'product.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script type="text/javascript" src="layui-v2.3.0/layui/layui.all.js"></script>
<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
<link rel="stylesheet" href="css/styled.css" tppabs="css/style.css" />
<link rel="stylesheet" href="css/youxia.css" tppabs="css/youxia.css" />
<script type="text/javascript" src="js/ssd.js"></script>
<script type="text/javascript" src="layui-v2.3.0/layui/layui.js"></script>
<link rel="stylesheet" href="layui-v2.3.0/layui/css/layui.css"
	tppabs="layui-v2.3.0/layui/css/layui.css" />
</head>
<style type="text/css">
#sa a {
	font-size: 20px;
}
</style>
<body>
	<span id="sa" class="layui-breadcrumb" lay-separator="|"> <a
		href="advert/product">全部</a> <c:forEach items="${aform }" var="l">
			<a href="advert/productaform?aform=${l.aform }">${l.aform }</a>
		</c:forEach>

	</span>

	<div class="danpin" style="overflow-x:hidden;overflow-y:hidden">
		<div class="main">
			<c:forEach items="${advert}" var="s">
				<div class="mingxing fl">
					<div class="sub_mingxing">
						<a><img src="${s.mimg }" id="img5" alt=""></a>
					</div>
					<div class="pinpai">
						<a href="">${s.mname }</a>
					</div>
					<div class="youhui">${s.remark }</div>
					<div class="jiage">${s.unit }</div>
					<div>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="hidden" id="aid"
							value="${s.aid }">
						<button class="layui-btn layui-btn-primary btn"<%-- onclick="location='advert/selaid?aid=${s.aid }'" --%>>查看广告详情</button>
					</div>
				</div>
			</c:forEach>
			<div class="clear"></div>
		</div>
	</div>



</body>


<script>
	layui.use(['element', 'layer'],function() {
		var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

		//监听导航点击
		element.on('nav(demo)', function(elem) {
			//console.log(elem)
			layer.msg(elem.text());
		});

		$(".btn").click(function() {
			var aid = $(this).prev().val();
			$.post("advert/selaid", {
				"aid" : $(this).prev().val()
			}, function(data) {
				if (data == "0") {
					layer.msg("该广告订单已创建，请选择其他广告进行推广");
				} else {
					window.location = "advert/createorder?aid=" + aid;
				}
			})

		})
	});
</script>
</html>
