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
    
    <title>My JSP 'profit' starting page</title>
    
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
  </head>
  
  <body>
 <div class="ucenter-info mt10" style="background-color: #fff;margin-top: 20;width: 800">
                    <!--折线图显示-->
    <div class="box">
        <div class="box-header">
        </div>
        <div class="box-body">
            <div id="echarts-line" style="height: 400px; width :800px;"></div>
        </div>
    </div>
    
     <!--Table表格显示-->
    <div class="row">
        <div class="col-xs-12">

            <div class="box">
                <div class="box-header">
                    
                </div>
                <div class="box-body">
                    <div class="table-responsive">
                      <span style="font-size: 18;color: #acd6c2;padding-left: 250">提现</span>
                        <table class="table table-striped table-echarts" style="width: 800px">
                            <b><tbody>
							<tr>
							<td>半年</td>
							<td>一年</td>
							</tr>
								<tr>
									<td class="td_ptime">${banshow.get(0).smoney}</td>
									<td class="td_hist">${yishow.get(0).smoney }</td>
								</tr>
						
						</tbody>

                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>
    
       
</div>
  </body>
 <script type="text/javascript">
 $(function () {
	 
	  var td_ptime=$(".td_ptime").html();
      var td_hist=$(".td_hist").html();
	
 var lineEchart = echarts.init(document.getElementById('echarts-line'));
 option = {
     title: {
         text: '平台盈利情况',
     
     },
     tooltip: {
         trigger: 'axis',
         axisPointer: {
             type: 'shadow'
         }
     },
     legend: {
         data: ['半年', '一年']
     },
     grid: {
         left: '3%',
         right: '4%',
         bottom: '3%',
         containLabel: true
     },
     xAxis: {
         type: 'value',
         boundaryGap: [0, 1]
     },
     yAxis: {
         type: 'category',
         data: ['提现','查订单异常总金额','充数','充数','充数']
     },
     series: [
         {
             name: '半年',
             type: 'bar',
             data: [td_ptime,'','','','']
         },
         {
             name: '一年',
             type: 'bar',
             data: [td_hist,'','','','']
         }
     ]
 };
 lineEchart.setOption(option);
 });
 </script>
</html>
