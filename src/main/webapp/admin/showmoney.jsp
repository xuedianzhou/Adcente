<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showmoney.jsp' starting page</title>
    
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
	<table class="layui-hide" id="test"></table>
              
          
<script src="layui-v2.3.0/layui/layui.js" charset="utf-8"></script>
 

  </body>
  <script>
var $ = null;
	var table = null;
	var layer = null;
	var form = null;
	var tableload = null;
	 var flow=null;

	layui
			.use(
					[ 'layer', 'table', 'form' ],
					function() {
						$ = layui.jquery;
						table = layui.table;//获取layui的表格对象
						layer = layui.layer;
						form = layui.form;
						flow = layui.flow;
						tableload = table
								.render({
									elem : '#test',
									url : '/money/querymoney',
									page : true,
									cellMinWidth:true, //全局定义常规单元格的最小宽度，layui 2.2.1 新增

									cols : [ [ //表头
											{
												field : 'uname',
												
												title : '用户名',
												sort : true
											},
											{
												field : 'accountsum',
												title : '账户金额'
											},
											{
												field : 'frostsum',
												title : '冻结金额'
												
											},
											{
												field : 'sum',
												title : '总金额'
											}
											] ]
								});
								
			
					});
				
</script>
  
</html>
