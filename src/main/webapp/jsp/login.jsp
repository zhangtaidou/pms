<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="app" value="${pageContext.request.contextPath}"></c:set>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>管理员登陆页面</title>
    <!-- Custom Theme files -->
    <link href="${app}/css/styleone.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- Custom Theme files -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <!--Google Fonts-->
    <link href='http://fonts.useso.com/css?family=Roboto:500,900italic,900,400italic,100,700italic,300,700,500italic,100italic,300italic,400' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
</head>
<body style="background: #2aabd2">
<div class='login'>
<h2>Login</h2>
<div class="login-top">
    <h1>登陆</h1>
        <form action="${app}/AdminController/login" method="post">
           用户名：<input type="text" name="username"/><br/>
           密  码：<input type="password" name="password"/>
            <div class='forgot'>
                <input type="submit" value="登陆" />
            </div>
        </form>
</div>
</div>
</body>
</html>