<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'search_dynamic.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-1.7.2-min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

  </head>
  
  <body>
		<table class="table">
		<tr>
			<td>姓名</td>
			<td>结算日期</td>
			<td>结算金额</td>
			<td>实际结算</td>
			<td>状态</td>
		</tr>
		<c:forEach items="${list_dynamic}" var="l">
			<tr>
				<td>${l.uname }</td>
				<td>${l.dtime }</td>
				<td>${l.dmoney }</td>
				<td>${l.dreality }</td>
				<td>${l.state ==0 ? '收入' : '支出' }</td>
			</tr>
		</c:forEach>
	</table>
  </body>
</html>
