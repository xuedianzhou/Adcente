<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'note.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <link rel="stylesheet" href="layui-v2.4.3/layui/css/layui.css">
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script src="js/jquery-1.8.3.js"></script>
<script src="layer-v3.1.1/layer/layer.js"></script>
  
  <style type="text/css">
    	.WhiteCon{ color: #5b5b5b;padding-top: 60px; padding-bottom: 400px;}
    	.duanxinDYtable{width: 90%;margin: 0 auto;}
    	.duanxinDYtable thead th{background: #14a1e8; text-align: left;color: #FFFFFF;height: 40px;
    	padding-left: 20px;border-bottom: 2px solid #FFFFFF;}
    	.duanxinDYtable thead th img{margin-right: 5px;vertical-align: middle;}
    	.duanxinDYtable tr td{height: 73px;color: #444444;border-bottom: 2px solid #FFFFFF;}
    	.duanxinDYtable tr td:nth-child(1){background: #bae7fd;border-right: 2px solid #FFFFFF;}
    	.duanxinDYtable tr td:nth-child(2){background: #ddf4ff;border-right: 2px solid #FFFFFF;}
    	.duanxinDYtable tr td:nth-child(3){background: #eef9ff;}
    	a.updatePhone{display: inline-block;background: #1fbdb9;width: 70px; height: 25px; text-align: center;line-height: 25px; color: #FFFFFF;}
    	a.updatePhone:hover{background: #1ba6a2;}
    	input{ width: 30px;position: absolute; z-index:-1; top: 40px;}
    	.winTishi,.winTishi1{display: none;position: fixed; top: 50%; margin-top: -38px; left: 50%; z-index: 999;}
			@media only screen and (max-width:1190px ) {
				#header{width: 1025px;}
				#content{width: 1025px;}
				#right{ width:820px;}
			}
			td
{
    text-align:center;
}
		
  </style>
  </head>
    
  <body>
	
						<!--右侧-->
			<div id="right" style="margin-left: 150">
				<div class="rightCon">
					<h3 class="tit">短信订阅</h3>
					<div class="WhiteCon" style="background: #FFFFFF;">
						<div class="securCon">
					
							<table class="duanxinDYtable" cellpadding="0" cellspacing="0" border="0">
								<thead>
									<tr>
										<th colspan="3"><img src="img/zxd/phone.png"/>确认手机号</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>当前手机号</td>
										<td><span>${list.get(0).phone }</td>
										<td><a href="JavaScript:;" class="updatePhone">修改</a></td>
									</tr>
								</tbody>
							</table>
							
							<table class="duanxinDYtable" cellpadding="0" cellspacing="0" border="0" style="margin-top: 50px;">
								<thead>
									<tr>
										<th colspan="3"><img src="img/zxd/dingyue.png"/>订阅服务</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>订单跟踪</td>
										<td>免费短信告知订单信息</td>
										<td>
											<label id="iosCheck1" class="iosCheck iosCheck1"><i></i></label>
										</td>
									</tr>
									<tr>
										<td>报毒提醒</td>
										<td>广告链接智能监测，报毒后免费短信告知</td>
										<td>敬请期待</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
				
			</div>
			
		</div>
	
  </body>
  <script type="text/javascript">

        $(".updatePhone").click(
        		function(){
        			//例子2
        			layer.prompt({
        			  formType: 2,
        			  title: '请输入修改后的手机号',
        			  area: ['300px', '30px'] //自定义文本域宽高
        			   
        			}, function(value, index, elem){
        				var c=value;
        			   $.post("updatephone",{data:c},function(data){
        				   if(data=="1"){
        					   alert("成功")
        				   }else{
        					   alert("失败")
        				   }
        			   })
        			   
        			  layer.close(index);
        			 
        			   window.location.reload();
        			});
        			
        		}		
        )
    
        
  </script>
</html>
