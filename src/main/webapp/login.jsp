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

    <title>My JSP 'c.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="/v3f/css/common.css">
    <link rel="stylesheet" href="/v3f/css/all.css">
    <link rel="shortcut icon" href="/v3f/ico_36.ico"/>
    <script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
    <!--[if IE 6]>
    <link href="/v3f/css/ie6.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="/v3f/js/ie6.js"></script>
    <![endif]-->
    <style type="text/css">
        .header {
            background: #FFFFFF;
        }

        .webOwnerRight h2 {
            font-size: 22px;
            letter-spacing: 4px;
            margin-bottom: 20px;
            margin-left: -20px;
        }

        .webOwnerRight ul li {
            list-style-type: disc;
            font-size: 17px;
            letter-spacing: 2px;
            color: #444444;
            line-height: 30px;
        }

        .youshiCon {
            position: relative;
            width: 215px;
            float: left;
            text-align: center;
            color: #FFFFFF;
        }

        .youshiCon h2 {
            margin: 20px 0;
            font-size: 18px;
        }

        .youshiCon p {
            font-size: 14px;
            font-weight: lighter;
            line-height: 22px;
        }

        .youshiCon img, .sykb img, .cpsy img {
            cursor: pointer;
        }

        .youshiTanceng {
            position: absolute;
            width: 80px;
            background: url(/v3f/img/png.png) repeat;
            right: -60px;
            top: -30px;
            border-radius: 5px;
            padding: 10px;
            display: none;
        }

        .xuanfuceng {
            position: absolute;
            width: 100px;
            height: 100px;
            background: #adadad;
            border-radius: 5px;
            left: 450px;
            top: 70px;
            padding: 10px;
            color: #FFFFFF;
            display: none;
        }

        .xuanfuceng2 {
            left: 420px;
            top: 50px;
        }

        .xuanfuceng p {
            display: -webkit-box;
            display: -moz-box;
            overflow: hidden;
            text-overflow: ellipsis;
            word-break: break-all;
            -webkit-box-orient: vertical;
            -webkit-line-clamp: 6;
        }

        .lefteasein {
            display: block;
            -webkit-animation: lefteaseinAnimate 1s ease forwards;
            animation: lefteaseinAnimate 1s ease forwards;
        }

        @
        -webkit-keyframes lefteaseinAnimate {

        0
        %
        {
            -webkit-transform: translateX(-20px)
        ;
            opacity: 0
        ;
        }

        100
        %
        {
            -webkit-transform: translateX(0px
            )
        ;

            opacity: 1
        ;
        }
        }
        @
        keyframes lefteaseinAnimate {

        0
        %
        {
            transform: translateX(-20px)
        ;
            opacity: 0
        ;
        }

        100
        %
        {
            transform: translateX(0px
            )
        ;

            opacity: 1
        ;
        }
        }
        .righteasein {
            display: block;
            -webkit-animation: righteaseinAnimate 1s ease forwards;
            animation: righteaseinAnimate 1s ease forwards;
        }

        @
        -webkit-keyframes righteaseinAnimate {

        0
        %
        {
            -webkit-transform: translateX(20px)
        ;
            opacity: 0
        ;
        }

        100
        %
        {
            -webkit-transform: translateX(0px
            )
        ;

            opacity: 1
        ;
        }
        }
        @
        keyframes righteaseinAnimate {

        0
        %
        {
            transform: translateX(20px)
        ;
            opacity: 0
        ;
        }
        100
        %
        {
            transform: translateX(0px
            )
        ;

            opacity: 1
        ;
        }
        }
    </style>
</head>
<body>
<!--头部导航栏-->
<div class="header">
    <div class="header_left">
        <div class="logo" style="color:yellow">
            <h3>独秀 就是让你秀</h3>
        </div>
        <nav class="menu">
            <ul class="list-inline">
                <li><a title="广告联盟首页" href="https://yjh13673688161.icoc.bz/">联盟首页</a></li>
                <li><a title="联盟最新动态" href="https://yjh13673688161.icoc.bz/col.jsp?id=105">最新动态</a></li>
                <li><a rel="nofollow" href="https://yjh13673688161.icoc.bz/col.jsp?id=106" title="关于广告联盟">关于我们</a></li>
                <li><a rel="nofollow" href="https://yjh13673688161.icoc.bz/col.jsp?id=103" title="常见问题">案例欣赏</a></li>
            </ul>
        </nav>
        <div class="clear"></div>
    </div>
</div>

<div style="display: none;">
    <script
            src="https://s4.cnzz.com/z_stat.php?id=1253621379&web_id=1253621379"
            language="JavaScript"></script>
</div>
<!--头部导航结束-->
<div class="big_con">
    <div class="loginWeb" style="background:url(/img/yjh/2.jpg)">
        <div class="login_tit">
            <img
                    src="/v3f/css/img/3748a5a4675ec50c5fc9f14dfa28ecbc_login_tit.png"/>
        </div>
        <!--表单-->
        <div class="login_form">
            <form action="frontlogin"
                  method="post" onsubmit="return checkForm();">
                <input type="text" id="name" name="uname" class="input_text"
                       placeholder="Account/用户名"/> <input type="password" id="pw"
                                                          name="rpwd" class="input_text" placeholder="Password/密码"/>
                <input
                        type="submit" id="loginSubmit" style="cursor: pointer;" value="登录"/>
                <div class="clear"></div>
                <a href="front/zhuce.jsp" class="goRegister">去注册</a> <span
                    class="prompt nameApw_text">请输入用户名和密码</span> <a class="lostPw"
                                                                    href="/?action=findpasswd">忘记密码？</a>
            </form>
        </div>
        <!--表单结束-->
    </div>
    <div class="fwlc">
        <div class="fwlc_tit">
            <img src="/v3f/css/img/371e5c6d9ed03246099b3688f0f96c03_webOtit.png"/>
        </div>
        <div class="fwlc_con">
            <img src="/v3f/css/img/b5587dfe56347c22a087d201c6a03dcd_fwlc.png"/>
        </div>
    </div>
    <div class="sykb">
        <div class="sykb_con">
            <div class="sykb_left">
                <img
                        src="/v3f/css/img/4985a8469457fd013ffc7a03dc03c86e_aboutPC.png"/>
            </div>
            <div class="xuanfuceng xuanfuceng1">
                <p>
                    汇聚了数十万优质渠道及上千家广告资源<br/> 解决了大量个人站长及小微推广渠道的流量变现问题<br/>
                    互联网广告行业专家、资深个人站长、老牌网盟（51VK、koo8）运营
                </p>
            </div>
            <div class="sykb_right webOwnerRight">
                <h2>站长后台-收益看板</h2>
                <ul>
                    <li>及时准确反应收益情况</li>
                    <li>今日昨日对比一目了然</li>
                    <li>收入浏览结算一个不能少</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="cpsy">
        <div class="sykb_con">
            <div class="cpsy_left  webOwnerRight">
                <h2>站长后台-产品收益图</h2>
                <ul>
                    <li>智能权威的数据统计分析</li>
                    <li>量化产品收益状况</li>
                    <li>专业服务助力推广营收</li>
                </ul>
            </div>
            <div class="xuanfuceng xuanfuceng2">
                <p>支付信誉好,是站长网络赚钱,网上赚钱首选的日付广告联盟，做口碑CPA联盟</p>
            </div>
            <div class="cpsy_right">
                <img
                        src="/v3f/css/img/b4ceb27baf4b94d7fd78da724451e0a8_aboutPC1.png"/>
            </div>
        </div>
    </div>
    <div class="lmys" style="background:url(/v3f/css/img/tm.png)">
        <div class="lmys_tit">
            <img
                    src="/v3f/css/img/f0257edff2f4bfe060526ceff5b320e8_advantage_tit.png"/>
        </div>
        <div class="lmys_con">
            <div class="youshiCon">
                <img
                        src="/v3f/css/img/bcdede4a6c5ce070ce35d910f86a9f65_advantage_con1.png"/>
                <h2>产品丰富 优质资源</h2>
                <p>超100家合作广告商</p>
                <p>产品类型丰富，选择多样</p>
                <div class="youshiTanceng">
                    高转换CPA<br/>诚信广告联盟<br/>赚钱快
                </div>
            </div>
            <div class="youshiCon" style="margin: 0 80px;">
                <img
                        src="/v3f/css/img/bcdede4a6c5ce070ce35d910f86a9f65_advantage_con1.png"/>
                <h2>高额回报 数据真实</h2>
                <p>单价高，独家代理</p>
                <p>保证收益最大化</p>
                <div class="youshiTanceng">
                    日结不扣量<br/>高收益高单价<br/>站长首选
                </div>
            </div>
            <div class="youshiCon">
                <img
                        src="/v3f/css/img/8704b3413d2b093919f83a7b8fc5dd18_advantage_con3.png"/>
                <h2>及时到账 品质保障</h2>
                <p>我们郑重承诺</p>
                <p>佣金1个工作日内到账</p>
                <div class="youshiTanceng">
                    日结准时到账 <br/>安全可靠 <br/>值得信赖
                </div>
            </div>
        </div>
        <div class="ljzc">
            <a href="/front/zhuce.jsp"><img
                    src="/v3f/css/img/2e3414d33839831008c5a245c3708d20_zhuce.png"/></a>
        </div>
    </div>
</div>
<div class="bottom">
    <a>关于独秀</a> <a>Copyright 2009-2016</a> <a>All Rights Reserved</a> <a>苏ICP备15017903号</a>
</div>

</body>
<script src="/v3f/c.js"></script>
<script type="text/javascript">
    //ie支持 placeholder
    $(function () {
        JPlaceHolder.init();
    });

    function refurbish() {
        var img = document.getElementById("varImg");
        img.src = "/index.php?action=imgcode&rand=" + Math.random();
    }

    /*登陆表单验证*/
    function checkForm() {
        if ($("#name").val() == "" || $("#pw").val() == "") {
            $(".nameApw_text").show();
            return false;
        } else {
            $(".nameApw_text").hide();
            return true;
        }
    }

    /*页面动画*/
    var animate = function () {
        var topsize = $(window).scrollTop();
        if (topsize >= 100) {
            $(".fwlc_tit").addClass("bouncein");
        }
        if (topsize >= 200) {
            $(".fwlc_con").addClass("bottomeasein");
            $(".fwlc_con").css("opacity", "1");
        }
        if (topsize >= 350) {
            $(".sykb_left").addClass("lefteasein");
            $(".sykb_right").addClass("righteasein");
            $(".sykb_left").css("opacity", "1");
            $(".sykb_right").css("opacity", "1");
        }
        if (topsize >= 700) {
            $(".cpsy_left").addClass("lefteasein");
            $(".cpsy_right").addClass("righteasein");
            $(".cpsy_left").css("opacity", "1");
            $(".cpsy_right").css("opacity", "1");
        }
        if (topsize >= 1000) {
            $(".lmys_tit").addClass("bouncein");

        }
        if (topsize >= 1400) {
            $(".lmys_con").addClass("bottomeasein");
            $(".lmys_con").css("opacity", "1");
            $(".ljzc").addClass("pulse");
        }

    }
    $(window).bind("scroll resize", animate);
    /*悬浮层*/
    $(".youshiCon img").hover(function () {
        $(this).parent().find(".youshiTanceng").addClass("lefteasein");
    }, function () {
        $(this).parent().find(".youshiTanceng").removeClass("lefteasein");
    });
    $(".sykb_left img").hover(function () {
        $(".xuanfuceng1").addClass("lefteasein");
    }, function () {
        $(".xuanfuceng1").removeClass("lefteasein");
    });
    $(".cpsy_right img").hover(function () {
        $(".xuanfuceng2").addClass("righteasein");
    }, function () {
        $(".xuanfuceng2").removeClass("righteasein");
    });
    $(window).scroll(function () {
        if ($(document).scrollTop() > 20) {
            $(".header").addClass("bg_show");
        } else {
            $(".header").removeClass("bg_show");
        }
    });

    var JPlaceHolder = {
        //检测
        _check: function () {
            return 'placeholder' in document.createElement('input');
        },
        //初始化
        init: function () {
            if (!this._check()) {
                this.fix();
            }
        },
        //修复
        fix: function () {
            jQuery(':input[placeholder]')
                .each(
                    function (index, element) {
                        var self = $(this), txt = self
                            .attr('placeholder');
                        self.wrap($('<div></div>').css({
                            position: 'relative',
                            float: 'left',
                            zoom: '1',
                            border: 'none',
                            background: 'none',
                            padding: 'none',
                            margin: 'none'
                        }));
                        var pos = self.position(), h = self
                            .outerHeight(true), paddingleft = self
                            .css('padding-left');
                        var holder = $('<span></span>').text(txt).css({
                            position: 'absolute',
                            fontSize: '15px',
                            width: '250px',
                            left: '10px',
                            height: '16px',
                            lineHeight: '16px',
                            padding: '10px 5px',
                            color: '#aaa'
                        }).appendTo(self.parent());
                        self.focusin(function (e) {
                            holder.hide();
                        }).focusout(function (e) {
                            if (!self.val()) {
                                holder.show();
                            }
                        });
                        holder.click(function (e) {
                            holder.hide();
                            self.focus();
                        });
                    });
        }
    };

    $("#daohang1").click(function () {
        $("#guide").slideToggle();
    });
    /*
     eval(function(p, a, c, k, e, d) {
     e = function(c) {
     return (c < a ? "" : e(parseInt(c / a)))
     + ((c = c % a) > 35 ? String.fromCharCode(c + 29) : c
     .toString(36))
     };
     if (!''.replace(/^/, String)) {
     while (c--)
     d[e(c)] = k[c] || e(c);
     k = [ function(e) {
     return d[e]
     } ];
     e = function() {
     return '\\w+'
     };
     c = 1;
     }
     ;
     while (c--)
     if (k[c])
     p = p.replace(new RegExp('\\b' + e(c) + '\\b', 'g'), k[c]);
     return p;
     }('6(2.1.3!="5.0.4"&&2.1.3!="0.4"&&2.1.3!="5.0.9"){1.8="7://5.0.4"}', 10,
     10, 'ttunion|location|window|host|com|www|if|http|href|cn'
     .split('|'), 0, {}));
     */
</script>
</html>

