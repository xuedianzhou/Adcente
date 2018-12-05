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
    
    <title>My JSP 'details.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">

  table {
	border-collapse: collapse;
     border: none;
}
  
	a{
	 text-decoration: none;
	 color:#05c0bd; 
	}
	</style>

  </head>
  
  <body>
      <span style="margin-left: 140px;color: #aeaeae">信息中心</span><span style="color: #aeaeae">>详细信息</span>
    <div style=";margin-left:150;margin-top:15; height:500;width: 800;background-color: #fff">
    <table style="margin-left:100px;width:80%;">
      <c:forEach items="${details }" var="d">
        <tr style="border-bottom: 1px solid #2b711a;display: block; margin-top: 20">
          <td style="color: #05c0bd;width:600">${d.type }</td>
          <td style="color: #05c0bd;"><a href="messashow">返回</a></td>
        </tr>
        <tr style="background-color:#f2f2f2;display: block;margin-top: 50 ">
        <td style="color: #aeaeae" width="400">${d.matter }</td>
        <td style="color: #aeaeae">${d.ptime }</td>
        </tr>
      </c:forEach>
    </table>
    </div>
  </body>
</html>
