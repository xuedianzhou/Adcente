<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'layui.jsp' starting page</title>

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
    <script type="text/javascript" src="https://cdn.goeasy.io/goeasy.js"></script>
    <style type="text/css">
        .layui-nav-item a:HOVER {
            background-color: #036361;
            display: block;
        }

        #udesk-feedback-tab {
            position: fixed;
            right: 2px;
            top: 65%;
            margin-top: -76px;
            -webkit-box-shadow: #DDD 0px -1px 5px;
            -moz-box-shadow: #DDD 0px -1px 5px;
            box-shadow: #DDD 0px -1px 5px;
            z-index: 10000;
            cursor: pointer;
            background-image: url(../img/zxd/consult_icon.gif);
            background-repeat: no-repeat;
            background-position: center top;
            display: block;
            height: 76px;
            width: 82px;
            background-color: #FFF !important;
            z-index: 999;
        }
    </style>


    <script type="text/javascript">
        var uid =
        ${list.get(0).uid}
        var goEasy = new GoEasy({
            appkey: 'BC-d28d9b29a88a4676875adacee352444a'
        });
        goEasy.subscribe({
            channel: 'user' + uid,
            onMessage: function (message) {
                console.log(message);

                $("#a").html(message.content);
            }
        });
    </script>
</head>

<body class="layui-layout-body" style="background-color: #f6f6f6;">

<input type="hidden" id="uid" name="uid" value="${list.get(0).uid }">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header" style="background-color: #05c0bd">
        <div class="layui-logo" style="margin-left: 200;color:gren"><h3>天一广告联盟</h3></div>
        <ul class="layui-nav layui-layout-left" style="margin-left: 200;">
            <li class="layui-nav-item"><a class="test"
                                          href="center?uid=${list.get(0).uid }" target="right"
                                          style="font-size:16px">个人中心</a></li>
            <li class="layui-nav-item"><a href="https://yjh13673688161.icoc.bz/">平台首页</a></li>
            <img src="img/zxd/xiaoxi.jpg">
            <li class="layui-nav-item"><a id="a" style="color: red;" href="messashow"
                                          target="right">无未读消息</a></li>


        </ul>
        <ul class="layui-nav layui-layout-right">
            <li style="margin-right: 200" class="layui-nav-item"><a id="" href="front/note.jsp" target="right"><img
                    style="height: 25;" src="img/zxd/短信订阅.jpg">&nbsp;&nbsp;短信订阅</a></li>
            <li class="layui-nav-item">

                <a id="touxiang" href="javascript:;"
                   style="font-size:16px"><img src="${list.get(0).userimg }"
                                               class="layui-nav-img"> ${uname}
                </a></li>
            <li class="layui-nav-item"><a href="login.jsp" id="tuile" style="font-size:16px">退了</a></li>
        </ul>
    </div>
    <script type="text/javascript">
        $("#tuile").click(
            function () {
                $.ajax({
                    url: "tuile",
                    type: "post",
                    success: function (data) {
                        if (data == "1") {
                            window.location.href = "https://yjh13673688161.icoc.bz/";
                        }

                    }
                });
            }
        )


    </script>

    <div class="layui-side layui-bg-black"
         style="margin-left: 200;">
        <div class="layui-side-scroll" style="background-color: #ffffff">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <dl class="layui-nav-child">
                        <h2
                                style="background-color: #fff;font-size: 18;font-weight:bold;padding-left: 45;color: #05c0bd;padding-top: 50">
                            <img src="img/zxd/广告相关2.png">广告相关
                        </h2>
                        <dd>
                            <b><a href="JavaScript:;" id="test1" tppabs="javascript:;" target="right"
                                  style="font-size:16px;background-color: #fff;color:#e7e56a; padding-left: 73">广告列表</a></b>
                        </dd>
                        <dd>
                            <b><a href="muban/query" tppabs="muban/query" target="right"
                                  style="font-size:16px;background-color: #fff;color:#e7e56a;padding-left: 73">广告模板管理</a></b>
                        </dd>
                        <dd>
                            <b><a href="advert/query" tppabs="advert/query"
                                  target="right"
                                  style="font-size:16px;background-color: #fff; color:#e7e56a;padding-left: 73">广告管理</a><b/>
                        </dd>
                        <dd
                        <b><a href="advert/qname" tppabs="advert/qname" target="right"
                              style="font-size:16px;background-color: #fff;color:#e7e56a; padding-left: 73">发布广告</a></b></dd>
                        <dd>
                            <b><a href="ao/selao" tppabs="ao/selao" target="right"
                                  style="font-size:16px;background-color: #fff;color:#e7e56a; padding-left: 73">广告订单管理</a></b>
                        </dd>
                        <h2
                                style="background-color: #fff;font-size: 18;font-weight:bold;padding-left: 40;color: #05c0bd;">
                            <img src="img/zxd/订单.png">网站相关
                        </h2>
                        <dd>
                            <b><a href="front/findsitesorder.html" tppabs="find/findsitesorder.html" target="right"
                                  style="font-size:16px;background-color: #fff;color:#e7e56a; padding-left: 73">网站订单管理</a></b>

                        </dd>
                        <dd>
                            <b><a href="grouping" tppabs="grouping" target="right"
                                  style="font-size:16px;background-color: #fff;color:#e7e56a; padding-left: 73">发布广告位</a></b>
                        </dd>
                        <dd>
                            <b><a href="front/sites.jsp" tppabs="front/sites.jsp"
                                  target="right"
                                  style="font-size:16px;background-color: #fff;color:#e7e56a; padding-left: 73">网站主认证</a></b>
                        </dd>
                        <dd>
                            <b><a href="front/findsites.html" tppabs="front/findsites.html"
                                  target="right"
                                  style="font-size:16px;background-color: #fff;color:#e7e56a; padding-left: 73">我的网站</a></b>
                        </dd>
                        <h2
                                style="background-color: #fff;font-size: 18;font-weight:bold;padding-left: 40;color: #05c0bd;">
                            <img src="img/zxd/账号管理.png">账号管理
                        </h2>
                        <dd>
                            <b><a href="front/pwdupdate.jsp" target="right"
                                  style="font-size:16px;color:#e7e56a;background-color: #fff; padding-left: 73">修改密码</a></b>
                        </dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>

    <div class="layui-body"
         style="z-index: 0;margin-left: 200;">
        <!-- 内容主体区域 -->
        <div></div>
        <div>
            <iframe src="" tppabs="" name="right" frameborder="0" width="100%"
                    height="900"></iframe>
        </div>
    </div>

</div>


<a target="_blank"
   href="http://wpa.qq.com/msgrd?v=1&uin=2801216529&site=qq&menu=yes"
   id="udesk-feedback-tab" class="udesk-feedback-tab-left"
   style="display: block; background-color: black;"></a>

<!--qq聊天代码部分end-->


</body>
<script src="js/jquery-1.8.3.js"></script>
<script src="layer-v3.1.1/layer/layer.js"></script>

<script>
    //JavaScript代码区域
    layui.use('element', function () {
        var element = layui.element;

    });
</script>

<script type="text/javascript">
    $('#test1').on('click', function () {
        $.ajax({
            url: "state",
            data: {
                uid: $("#uid").val()
            },
            type: "post",
            success: function (data) {
                if (data != "1") {
                    layer
                        .open({
                            type: 1 //Page层类型
                            ,
                            area: ['600px',
                                '450px'],
                            title: '提示信息',
                            shade: 0.6 //遮罩透明度
                            ,
                            maxmin: true //允许全屏最小化
                            ,
                            anim: 1 //0-6的动画形式，-1不开启
                            ,
                            btn: ['取消<a href="front/sites.jsp" tppabs="front/sites.jsp" target="right" class="layui-btn">绑定一个网站</a>'],
                            content: '<center><p style="margin-top:20"><b><h2>绑定网站</h2></b></p><p style="margin-top:20"><h3>请先至少提交一个网站，即可获取广告代码，赚取佣金。</h3></p></center><img src="img/zxd/TT.jpg"  style="margin-left:210;margin-top:50;width="150px";height="100px" ><div style="margin-left: 240;margin-top: 50"></div>'
                        });
                } else {
                    right.location = "advert/product";
                }
            }
        });
    });
</script>

</html>
