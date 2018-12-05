<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<base href="<%=basePath%>">

	<title>My JSP 'message.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
        <link rel="stylesheet" type="text/css" href="styles.css">
        -->

	<link rel="stylesheet" href="layui-v2.4.3/layui/css/layui.css">


	<style type="text/css">
		a{
			color: #aeaeae;
		}
		td a:HOVER {
			color: #05c0bd;
		}
	</style>
</head>


<body>
<span style="margin-left: 140px;color: #aeaeae">信息中心</span>
<div class="layui-tab" style=";margin-left: 150;height: 500;width: 800;background-color: #fff">
	<ul class="layui-tab-title">
		<li class="layui-this">我的消息</li>
		<li>历史消息</li>
	</ul>
	<div class="layui-tab-content">
		<div class="layui-tab-item layui-show">
			<table style="margin-left:100px;width:80%;border-collapse: separate; border-spacing:0px 20px ;">
				<c:forEach items="${list }" var="l">

					<tr  style="border-bottom: 1px #f0f0f0 solid;color: #aeaeae">
						<td><a href="details?wordid=${l.wordid }">${l.type }</a></td>
						<td><a>${l.ptime }</a></td>
					</tr>

				</c:forEach>
			</table>
		</div>
		<div class="layui-tab-item">
			<table style="margin-left:100px;width:80%;border-collapse: separate; border-spacing:0px 20px ;">
				<c:forEach items="${lishimessageshow }" var="l">

					<tr  style="border-bottom: 1px #f0f0f0 solid;color: #aeaeae">
						<td><a href="details?wordid=${l.wordid }">${l.type }</a></td>
						<td><a>${l.ptime }</a></td>
					</tr>

				</c:forEach>
			</table>
		</div>
	</div>
</div>
</body>
<script src="js/jquery-1.8.3.js"></script>
<script src="layui-v2.4.3/layui/layui.js"></script>
<script>
    //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function(){
        var element = layui.element;

        //…
    });
</script>
</html>
