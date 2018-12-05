<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showrecord.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="layui-v2.3.0/layui/css/layui.css"  media="all">
  </head>
  
  <body>
    <div style="width: 280px;margin:5px;float: left;">
	      <button class="layui-btn layui-btn-fluid" onclick="location='money/queryday?day=record'">全部交易记录</button>
    </div>	
    <div style="width: 280px; margin:5px;float: left;">
	      <button class="layui-btn layui-btn-fluid" onclick="location='money/queryday?day=week'">近七天交易记录</button>
    </div>	
    <div style="width: 280px; margin:5px;float: left;">
	      <button class="layui-btn layui-btn-fluid" onclick="location='money/queryday?day=month'">本月交易记录</button>
    </div>	
    <div style="width: 280px; margin:5px;float: left;">
	      <button class="layui-btn layui-btn-fluid" onclick="location='money/queryday?day=year'">本年交易记录</button>
    </div>	

 
<div class="layui-form">
  <table class="layui-table">
    <colgroup>
      <col width="150">
      <col width="150">
      <col width="200">
      <col>
    </colgroup>
    <thead>
      <tr>
        <th>用户名</th>
        <th>操作</th>
        <th>交易金额</th>
        <th>交易时间</th>
        <th>交易备注</th>
      </tr> 
    </thead>
    <tbody>
    <c:forEach items="${list }" var="l">
      <tr>
        <td>${l.uname }</td>
        <td>
        	<c:if test="${l.type=='1' }">冻结金额</c:if>
        	<c:if test="${l.type=='3' }">订单撤销</c:if>
        	<c:if test="${l.type=='5' }">订单完成</c:if>
        </td>
        <td>${l.dsum }</td>
        <td>${l.ptime }</td>
        <td>${l.remark }</td>
      </tr>
</c:forEach>
    </tbody>
  </table>
</div>
  </body>
 
</html>
