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
    
    <title>My JSP 'showao.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="layui-v2.3.0/layui/css/layui.css"  media="all">
  <script src="js/jquery-3.1.1.js"></script>
<script src="layui-v2.3.0/layui/layui.js"></script>
  </head>
  
  <body>
    <table class="layui-table" lay-size="lg">
    <thead>
		<tr>
		<th>订单id</th>
			<th>订单标题</th>
			<th>订单金额</th>
			<th>订单状态</th>
			<th>点击量</th>
			<th>创建时间</th>
			<th>结束时间</th>
			<th>订单操作</th>
			<th>订单反馈</th>
		</tr>
		</thead>
		<c:forEach items="${list }" var="s">
		<tr>
		
			<td> <input id="oid" value=" ${s.orderid}" hidden> ${s.orderid }</td>
			<td>${s.remark }</td>
			<td>${s.sum }</td>
			<td>
				<c:if test="${s.state=='0'}">正在执行</c:if>
                <c:if test="${s.state=='1'}">订单结束</c:if>
			</td>
			<td>${s.hits }</td>
			<td>${s.ctime }</td>
			<td>
				<c:if test="${s.ftime==null}">正在执行</c:if>
                <c:if test="${s.ftime!=null}">${s.ftime }</c:if>
			</td>
			<td>
				<c:if test="${s.ftime==null}">
				<button class="layui-btn layui-btn-radius layui-btn-normal"
				 onclick="location='ao/cx?orderid=${s.orderid }'">撤销</button>
				</c:if>
                <c:if test="${s.ftime!=null}">订单已结束</c:if>
			</td>
			<td>
			<button class="layui-btn fk">订单反馈</button>
			</td>
		</tr>
		</c:forEach>
	</table>
    
  </body>
  <script type="text/javascript">
	var $ = null;
	var layer = null;
	layui
	.use(
			[ 'layer'],
			function() {
				$ = layui.jquery;
				layer = layui.layer;
			
 $(".fk").click(function(){
	 var remark=null;
	 layer.prompt({
			formType : 2,//输入框类型，支持0（文本）默认1（密码）2（多行文本）
			value : "",
			title : "请输入要反馈的内容",
			area : [ '200px', '150px' ]
		}, function(value, index){
			remark=value;		//获取反馈内容
			$.post("/f/addfk",{
				"oid":$("#oid").val(),
				"test":remark
			},function(data){
				if(data=="ok"){
					layer.msg("您的订单反馈已经发送，请关注消息列表我们将把反馈的信息发送到消息里");
				}else{
					layer.msg("反馈失败");
				}
			})
			layer.close(index);
		});
		

 })
 
			})
  </script>
</html>
