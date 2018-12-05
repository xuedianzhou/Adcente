<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zfb.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/zfbstyle.css">

  </head>
  
 <body >
  <div class="container" style="width: 800px;margin-left: 200px">
    <div class="row">
      <div class="container_logo">
        <div class="play col-xs-10 col-sm-10 col-md-10 col-lg-10">
          <img src="img/zxd/logo.png" />
        </div>
      </div>
    </div>
    <form action="transfer" method="post">
      <div class="row">
        <div class="play col-xs-10 col-sm-10 col-md-10 col-lg-10">
          <div class="form-group">
            <input type="hidden" class="getId" name="id">
            <h4>账户余额：${zfb.get(0).accountsum }</h4>
            <div class="number_amount">
              <label>￥</label>
              <input type="number" name="money">
              <span style="margin-left:250;font-size:12;color: red">提现收取百分之二的手续费</span>
            </div>
          </div>
        </div>
      </div>
      
      <div class="row">
        <div class="_submit col-xs-10 col-sm-10 col-md-10 col-lg-10">
          <input type="submit" value="提现" class="btn btn-primary submit-amount">
        </div>
      </div>
    </form>
  </div>
  </div>
    <div class="modal fade" tabindex="-1" role="dialog" id='exampleModal'>
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="modal-title">提示</h4>
        </div>
        <div class="modal-body">
          <p id="s"></p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal" aria-label="Close">确定</button>
        </div>
      </div>
    </div>
  </div>
  <div class="mask"></div>
</body>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
var $amountInput = $('[type="number"]');
var amount = '';
var $getId = $('[type="hidden"]');
var getparse=ParaMeter();
var s=${zfb.get(0).accountsum}*0.02;
var s1=${zfb.get(0).accountsum};
var s2=s1-s;
$("#s").html("不能高于"+s2);
$getId.val(getparse.id);
$(".quick_amount p").off("click").on("click", function () {
  amount = $(this).text();
  if (!$(this).hasClass('active')) {
    $(this).addClass('active').siblings().removeClass('active');
    $amountInput.val(amount);
  } else {
    $(this).removeClass('active');
    $amountInput.val('');
  }
})
$amountInput.on('input propertychange', function () {
  if ($(this).val() > s2) {
    $('#exampleModal').modal('show')
  }
  if($(this).val()!==$('.quick_amount p.active').text()){
    $('.quick_amount p').removeClass('active');
  }
})
$('#exampleModal').on('hidden.bs.modal', function (e) {
  $amountInput.val(s2);
})
function ParaMeter()
{
  var obj={};
  var arr=location.href.substring(location.href.lastIndexOf('?')+1).split("&");
  for(var i=0;i < arr.length;i++){
  var aa=arr[i].split("=");
  obj[aa[0]]=aa[1];
}
  return obj;
}
</script>
</html>
