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

    <title>My JSP 'click.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
<body>


点击量
<DIV id=img1
     style="Z-INDEX: 100; LEFT: 2px; WIDTH: 59px; POSITION: absolute; TOP: 43px; HEIGHT: 61px;visibility: visible;"><a
        href="http://172.20.10.2:8080/click/findip?aid=15&uid=15" target="_blank"><img
        src="http://192.168.43.117:8080/img/dcy/1e07b8b1-5411-4948-9c2d-306a82d2f7ce.jpg" width="160" height="120"
        border="0"></a></DIV>
<SCRIPT
        src="https://www.jb51.net/adtest/11/js/js.js"></SCRIPT>
</body>
</html>
