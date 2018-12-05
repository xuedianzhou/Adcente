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
    
    <title>My JSP 'usermoney.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	     <link href="css/UserCSS.css" rel="stylesheet" type="text/css" />
      <script src="js/jquery-1.9.1.js"></script>
    <!-- 你必须先引入jQuery1.8或以上版本 -->
    <script src="layer-v3.1.1/layer/layer.js"></script>
    <script src="js/bootstrap.min.js"></script>
     <!-- 引入 ECharts 文件 -->
    <script src="js/echarts.min.js"></script>
    <link rel="stylesheet" href="layui-v2.4.3/layui/css/layui.css">
<script type="text/javascript" src="js/echarts.js"></script>
  </head>
  
  <body>
 	   <div class="ucenter-info mt10" style="background-color: #fff;width: 800;height: 600">
                    <div class="info-title">
                        <h5>
                            我的个人资料</h5>
                    </div>
                    <div class="info">
                        <ul class="info-img">
                            <li>
                        <div class="info-main">
                        <c:forEach items="${user }" var="user">
                            <div class="row">
                                <label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;    用户名：</label>${user.uname }</div>
                            <div class="row">
                                <label>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 时间：</label>${user.ctime }</div>
                            <div class="row">
                                <label>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  手机号：</label>${user.phone }</div>
                            <div class="row">
                                <label>
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;     角色：</label><span class="orange">普通会员 &nbsp;&nbsp;</span></div>
                            <div class="row">
                                <label>
               </c:forEach>
               <c:forEach items="${list }" var="list">                
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;       总余额：</label><span id="z" class="orange">${list.sum }</span>&nbsp;元
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;               
                                    冻结金额：<span id="d" class="orange">${list.frostsum }</span>&nbsp;元
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         
                                    账户余额：<span id="g" class="orange">${list.accountsum }</span>&nbsp;元<br/><br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                </c:forEach>             </div>
                        </div>
                        <div class="clear">
                        </div>
                    </div>
                    <div id="container" style="height: 400px;width: 800px"></div>
                </div> 
  	
  </body>
  <script type="text/javascript">

var dom = document.getElementById("container");
var myChart = echarts.init(dom);
var app = {};
option = null;
option = {
    xAxis: {
        type: 'category',
        data: ['${tims6}', '${tims5}', '${tims4}', '${tims3}', '${tims2}', '${tims1}', '${tims}']
    },
    yAxis: {
        type: 'value'
    },
    series: [{
        data: [${g}, ${f}, ${e}, ${d}, ${c}, ${b}, ${a}],			
        type: 'line'
    }]
};
;
if (option && typeof option === "object") {
    myChart.setOption(option, true);
}
       </script>
</html>
