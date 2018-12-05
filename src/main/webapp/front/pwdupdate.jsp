<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>修改密码</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

    <!-- The stylesheet -->
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="layui-v2.4.3/layui/css/layui.css">

</head>

<body>

<div id="main">


    <form method="post">

        <h2>${uname }</h2>
        <br/><br/>

        <div class="row pass">
            <input type="password" id="password1" name="password1" placeholder="密码"/>
        </div>
        <div style="color:red;font-size: 10">请输入10位字母加数字</div>
        <div class="row pass">
            <input type="password" id="password2" name="rpwd" placeholder="重复密码" disabled="true"/>
        </div>

        <!-- The rotating arrow -->
        <div class="arrowCap"></div>
        <div class="arrow"></div>

        <p class="meterText">Password Meter</p>
        <input style="margin-top: 220" type="button" class="layui-btn layui-btn-fluid" id="updatepwd" value="修改"/>
    </form>


</div>

<!-- JavaScript includes - jQuery, the complexify plugin and our own script.js -->
<script src="assets/js/jquery-1.7.2.min.js"></script>
<script src="assets/js/jquery.complexify.js"></script>
<script src="assets/js/script.js"></script>
<script type="text/javascript">
    $("#updatepwd").click(
        function () {
            $.ajax({
                url: "updatepwd",
                data: {rpwd: $("#password2").val()},
                type: "post",
                success: function (data) {
                    if (data == "1") {
                        alert(data);
                        window.parent.frames.location.href = "http://localhost:8080/login.jsp";

                    }

                }
            });
        }
    )


</script>
</body>
