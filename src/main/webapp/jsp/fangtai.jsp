<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="app" value="${pageContext.request.contextPath}"></c:set>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
    <style type="text/css">
        #dh1{
            height: 50px;
            background: #A9A9A9;
        }
    </style>
<body>
<div class="row">
    <div class="col-md-12">
        <nav class="navbar navbar-default">
            <div class="container-fluid" id="dh1">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" name="erji" id="fangtaitu" style="color: #FFFFFF" onclick="danji1(this.id)" href="javascript:$('#right1').load('../jsp/fangtaitu.jsp')">房态图</a>
                    <a class="navbar-brand" name="erji" id="fangtaibiao" style="color: #FFFFFF" onclick="danji1(this.id)" href="javascript:$('#right1').load('../jsp/fangtaitu.jsp')">房态表</a>
                    <a class="navbar-brand" name="erji" id="yuanqifangtai" style="color: #FFFFFF" onclick="danji1(this.id)" href="javascript:$('#right1').load('../jsp/fangtaitu.jsp')">远期房态</a>
                    <a class="navbar-brand" name="erji" id="weixiufangguanli" style="color: #FFFFFF" onclick="danji1(this.id)" href="javascript:$('#right1').load('../jsp/fangtaitu.jsp')">维修房管理</a>
                    <a class="navbar-brand" name="erji" id="wupinguanli" style="color: #FFFFFF" onclick="danji1(this.id)" href="javascript:$('#right1').load('../jsp/fangtaitu.jsp')">物品管理</a>
                    <a class="navbar-brand" name="erji" id="jiaobanbaobiao" style="color: #FFFFFF" onclick="danji1(this.id)" href="javascript:$('#right1').load('../jsp/fangtaitu.jsp')">交班报表</a>
                    <a class="navbar-brand" name="erji" id="yingjibaobiao" style="color: #FFFFFF" onclick="danji1(this.id)" href="javascript:$('#right1').load('../jsp/fangtaitu.jsp')">应急报表</a>
                    <a class="navbar-brand" name="erji" id="fangtairizhi" style="color: #FFFFFF" onclick="danji1(this.id)" href="javascript:$('#right1').load('../jsp/fangtaitu.jsp')">房态日志</a>


                </div>
            </div>
        </nav>
    </div>
    <div class="col-md-12" id="right1"></div>
</div>
</body>
<script>
    function danji1(id) {
        $("a[name='erji']").attr('style',"color: #FFFFFF")
        $("#"+id).attr('style',"color: red")
    }
</script>
</html>