<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'center.jsp' starting page</title>
    
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
  
  <body style="width: 100%;background-color: #f6f6f6;padding-top: 20">    
   
            <div class="ucenter"  style="margin-left: 200">
                <div class="ucenter-info mt10" style="background-color: #fff;width: 800;height: 240">
                    <div class="info-title">
                        <h5>
                            我的个人资料</h5>
                    </div>
                    <div class="info">
                        <ul class="info-img">
                            <li>
                                <a id="touxiang"><img src="${list.get(0).userimg }" class="avatar" /></a></li></ul>
                        <div class="info-main">
                            <div class="row">
                                <label>
                                    用户名：</label>${list.get(0).uname }</div>
                            <div class="row">
                                <label>
                                    时间：</label>${list.get(0).ctime }</div>
                            <div class="row">
                                <label>
                                    手机号：</label>${list.get(0).phone }</div>
                            <div class="row">
                                <label>
                                    角色：</label><span class="orange">普通会员 &nbsp;&nbsp;</span></div>
                            <div class="row">
                                <label>
                                
                                    总余额：</label><span id="z" class="orange">${zfb.get(0).sum }</span>&nbsp;元
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;               
                                    冻结金额：<span id="d" class="orange">${zfb.get(0).frostsum }</span>&nbsp;元
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         
                                    账户余额：<span id="g" class="orange">${zfb.get(0).accountsum }</span>&nbsp;元<br/><br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                          <a href="front/zfb.jsp" class="layui-btn layui-btn-primary">充值</a>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                          <a href="front/zfbtx.jsp" class="layui-btn layui-btn-primary">提现</a>
                            </div>
                        </div>
                        <div class="clear">
                        </div>
                    </div>
                </div> 
              
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
    <div class="row" style="display: none;">
        <div class="col-xs-12">

            <div class="box">
                <div class="box-header">

                </div>
                <div class="box-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-echarts" style="width: 800px">
                            <tbody>

								<tr>
									<td class="td_ptime">${checkshow.get(0).sum}</td>
								</tr>

						</tbody>

                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>
                </div>      
                
               <%--  <div class="ucenter-info mt10" style="height: 300;background-color: #fff;margin-top: 20;width: 800">
                 <span style="color:#05c0bd;font-size: 16;font-weight:bold ">最新结算</span><img src="img/zxd/结算.png" style="margin-top: -5">
                 <table class="table" style="width: 100%;border-collapse: separate; border-spacing:0px 10px ;">
		<tr style="border-bottom: 1px black solid; color:black;">
			<td>结算日期</td>
			<td>结算金额</td>
			<td>用户编号</td>
			<td>手续费(%)</td>
			<td>实际结算</td>
			<td>申请时间</td>
			<td>状态</td>
		</tr>
		<c:forEach items="${list_dynamic}" var="l">
			<tr style="border-bottom: 1px #f0f0f0 solid; ">
				<td>  <fmt:formatDate value="${l.dtime}" pattern="yyyy-MM-dd"/></td>
				<td>${l.dmoney }</td>
				<td>${l.uid }</td>
				<td>${l.dcharge }</td>
				<td>${l.dreality }</td>
				<td>  <fmt:formatDate value="${l.dapply }" pattern="yyyy-MM-dd"/></td>
				<td>${l.state ==0 ? '收入' : '支出' }</td>
			</tr>
		</c:forEach>
	</table>
	</div>--%>
                 <div class="ucenter-info mt10" style="background-color: #fff;margin-top: 20;width: 800">
                    <span style="color:#05c0bd;font-size: 16;font-weight:bold ">交易记录</span><img src="img/zxd/结算.png" style="margin-top: -5">
                 <table class="table" style="width: 100%;border-collapse: separate; border-spacing:0px 10px ;">
		<tr style="border-bottom: 1px black solid; color:black;">
			<td>日期</td>
			<td>类型</td>
			<td>金额</td>
			<td>备注</td>
			
		</tr>
		<c:forEach items="${list_rService}" var="l">
			<tr style="border-bottom: 1px #f0f0f0 solid; ">
				
				<td>${l.ptime }</td>
				<td>${l.type }</td>
				<td>${l.dsum }</td>
				<td>${l.remark }</td>
				
			</tr>
		</c:forEach>
	</table>
          </div>     
                 
                 
		<div id="shangchuan" style="background-color: #acd6c2;width: 450;display: none;margin-top: -800">
			<form class="layui-form" action="updateuserimg" method="post" enctype="multipart/form-data">
				<label class="layui-form-label"> <img style="width: 100;height: 100"
					src="${list.get(0).userimg }" class="layui-nav-img">
				</label>
				
  <div style="margin-left: 150px">
   <input type="file"  name="imgs"  id="doc" onchange="javascript:setImagePreview();">
   <div id="localImag"><img id="preview" width=-1 height=-1 style="diplay:none" /></div>
</div><br/>
				
				<div class="layui-form-item">
					<div class="layui-input-block">
						<input type="submit" style="margin-left: 30px;"
							class="layui-btn" lay-submit="" lay-filter="demo1" value="立即提交">
						
						<input type="button" id="quxiao" class="layui-btn layui-btn-primary" value="取消">
					</div>
				</div>
			</form>
		</div>

	</div>
</body>
<script type="text/javascript">
    $(function () {
        var td_ptime = $(".td_ptime").html();
       alert(td_ptime)
        var lineEchart = echarts.init(document.getElementById('echarts-line'));
        option = {
            title: {
                text: '个人网站统计'
            },
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                data:['收入','点击量']
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            toolbox: {
                feature: {
                    saveAsImage: {}
                }
            },
            xAxis: {
                type: 'category',
                boundaryGap: false,
                data:['总收入']
            },
            yAxis: {
                type: 'value'
            },
            series: [
                {
                    name:'点击量',
                    type:'line',
                    stack: '总量',
                    data:[td_ptime]
                },

            ]
        };

        lineEchart.setOption(option);

    })

</script>
    <script type="text/javascript">
       $("#touxiang").click(
    		function(){
    			$("#shangchuan").show();
    		})
       $("#quxiao").click(
    		function(){
    			$("#shangchuan").hide();
    		})
    </script>
    
    
    <script type="text/javascript">
    function setImagePreview() {
  	  var docObj=document.getElementById("doc");
  	  var imgObjPreview=document.getElementById("preview");
  	  if(docObj.files && docObj.files[0]){
  	  //火狐下，直接设img属性
  	  imgObjPreview.style.display = 'block';
  	  imgObjPreview.style.width = '300px';
  	  imgObjPreview.style.height = '120px';
  	  //imgObjPreview.src = docObj.files[0].getAsDataURL();
  	  //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
  	  imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
  	  }else{
  	  //IE下，使用滤镜
  	  docObj.select();
  	  var imgSrc = document.selection.createRange().text;
  	  var localImagId = document.getElementById("localImag");
  	  //必须设置初始大小
  	  localImagId.style.width = "250px";
  	  localImagId.style.height = "200px";
  	  //图片异常的捕捉，防止用户修改后缀来伪造图片
  	  try{
  	  localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
  	  localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
  	  }catch(e){
  	  alert("您上传的图片格式不正确，请重新选择!");
  	  return false;
  	  }
  	  imgObjPreview.style.display = 'none';
  	  document.selection.empty();
  	  }
  	  return true;
  	  }
    </script>
</html>
