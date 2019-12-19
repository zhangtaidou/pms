<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="app" value="${pageContext.request.contextPath}"></c:set>
<html lang="en">
<head>
    <link rel="icon" href="../img/favicon.ico">
    <link rel="stylesheet" href="../boot/css/bootstrap.min.css">
    <link rel="stylesheet" href="../jqgrid/css/jquery-ui.css">
    <link rel="stylesheet" href="../jqgrid/css/trirand/ui.jqgrid-bootstrap.css">
    <script src="${app}/js/jquery-3.3.1.min.js"></script>
    <script src="${app}/boot/js/bootstrap.min.js"></script>
    <script src="${app}/jqgrid/js/trirand/jquery.jqGrid.min.js"></script>
    <script src="${app}/jqgrid/js/trirand/i18n/grid.locale-cn.js"></script>
    <script src="${app}/boot/js/ajaxfileupload.js"></script>

</head>
<style type="text/css">
    #dh{
        background: #003333;
        margin-bottom: -15px;
    }
</style>
<body>
<%--导航条--%>
<div class="row">
    <div class="col-md-12">
        <nav class="navbar navbar-default" id="dh" style="text-align: center">
            <div class="container-fluid">
                <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand">${sessionScope.admin.name}房态管理系统V1.0</a>
                    <span class="navbar-brand" style="margin-left: 150px;"></span>
            <a class="navbar-brand" name="yiji" id="fangtaizhongxin" onclick="danji(this.id)" style="color: #FFFFFF;" href="javascript:$('#right-sidebar').load('../jsp/fangtai.jsp')">房态中心</a>
            <a class="navbar-brand" name="yiji" id="yudingguanli" onclick="danji(this.id)" style="color: #ffffff;" href="javascript:$('#right-sidebar').load('../jsp/fangtai.jsp')">预定管理</a>
            <a class="navbar-brand" name="yiji" id="huiyuanzhongxin" onclick="danji(this.id)" style="color: #ffffff;" href="javascript:$('#right-sidebar').load('../jsp/fangtai.jsp')">会员中心</a>
        </div>
    </div>
    </nav>
</div>
    <div class="col-md-12" id="right-sidebar"></div>
</div>
</body>
<script>
    function danji(id) {
        $("a[name='yiji']").attr('style',"color: #FFFFFF")
        $("#"+id).attr('style',"color: red;")
    }
</script>
</html>