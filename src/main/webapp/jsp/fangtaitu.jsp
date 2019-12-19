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
<script>
    $(function () {
        $.ajax({
            url:"${app}/RoomController/selectAllByRoom",
            data:{"admin_id":${sessionScope.admin.id}},
            type:"post",
            datatype:"json",
            success:function (data) {
                $.each(data,function (i,p) {
                    var html = $("<span  style='color: #FFFFFF; font-size: 18px'>").html(p.room_number);
                    var html1 = $("<span style='color: #FFFFFF; font-size: 18px'>").html(p.room_name);
                    /*
                    * 外层最大div
                    * */
                    var div =$("<div class='col-md-1'>");
                    /*
                    * init_status入住状态
                    * */
                    if (p.init_status=="在住房"){
                        div.attr('style',"font-weight:bold;background: #0000CD;height: 100px;width: 150px;margin-left: 8px;margin-top: 8px;position: relative;")
                    }else if(p.init_status=="欲抵房"){
                        div.attr('style',"font-weight:bold;background: #2aabd2;height: 100px;width: 150px;margin-left: 8px;margin-top: 8px;position: relative;")
                    }else if(p.init_status=="续住房"){
                        div.attr('style',"font-weight:bold;background: #191970;height: 100px;width: 150px;margin-left: 8px;margin-top: 8px;position: relative;")
                    }else{
                        div.attr('style',"font-weight:bold;background: #00FA9A;height: 100px;width: 150px;margin-left: 8px;margin-top: 8px;position: relative;")
                    }
                    /*
                    * 订单div
                    * */
                    var div1 = $("<div id='dingdan'>");
                    /*
                    * 卫生状态div
                    * */
                    var div2 = $("<div id='zhuangt'>");
                    div.append(html).append($("<br/>")).append(html1).append(div1).append(div2)
                    /*
                    * health_status卫生状态
                    * */
                    if (p.health_status=="脏房"){
                        var span = $("<span style='color: #FA8072;'class='glyphicon glyphicon-exclamation-sign'>");
                        div2.append(span)
                    }else {}
                    /*
                    * rom_status故障状态
                    * */
                    if(p.room_status=="维护"){
                        var span1 = $("<span  style='color: #FFFF00;'class='glyphicon glyphicon-cog'>");
                        div2.append(span1)
                    }else if(p.room_status=="停用"){
                        var span2 = $("<span style='color: red;'class='glyphicon glyphicon-ban-circle'>");
                        div2.append(span2)
                    }
                    /*
                    * 鼠标移入事件
                    * */
                    div.mouseover(function () {
                        $("ul").remove()
                        var li = $("<li class=\"list-group-item\">").html("ss");
                        var li1 = $("<li class=\"list-group-item\">").html("ww");
                        var ul = $("<ul class=\"list-group\"style='z-index:9999;position: relative;'>");
                        ul.append(li).append(li1)
                        div.append(ul)
                    })

                    /*
                    * 鼠标移出事件
                    * */
                    $("#right_col").append(div)

                })
            }
        })
        



    })
</script>
<body>
    <%--左侧查询--%>
    <div class="row">
        <div class="col-md-2">
            <%--左侧搜索框--%>
            <form class="navbar-form navbar-left" style="width: 250px">
                <div class="form-group">
                    <input type="text" class="form-control" style="width: 150px" id="input">
                </div>
                <button type="button" class="btn btn-default" id="tijiao">搜索</button>
            </form>
            <button type="button" class="btn btn-default active" style="width: 250px">房间筛选</button>
                <%--单选框--%>
                <table style="margin-left: 10px">
                    <tr>
                        <td>
                            <div>
                                <div style="background: #2aabd2;width: 15px;height: 15px;margin-left: 25px;margin-top: 15px"></div>
                                <span style="margin-left: 7px">欲抵房</span>
                                <label><input type="radio" name="status" value="欲抵房" onclick="shaixuan(this.value)"></label>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div style="background: blue;width: 15px;height: 15px;margin-left: 25px;margin-top: 15px"></div>
                                <span style="margin-left: 7px">在住房</span>
                                <label><input type="radio" name="status" value="在住房" onclick="shaixuan(this.value)"></label>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div style="background: #00FF7F;width: 15px;height: 15px;margin-left: 25px;margin-top: 15px"></div>
                                <span style="margin-left: 7px">空&nbsp;&nbsp;&nbsp;房</span>
                                <label><input type="radio" name="status" value="空房" onclick="shaixuan(this.value)"></label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>
                                <div style="background: #191970;width: 15px;height: 15px;margin-left: 25px;margin-top: 30px"></div>
                                <span style="margin-left: 7px">续住房</span>
                                <label><input type="radio" name="status" value="续住房" onclick="shaixuan(this.value)"></label>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <span style="width: 15px;height: 15px;margin-left: 25px;margin-top: 30px" class="glyphicon glyphicon-question-sign"></span>
                                </div>
                                <span style="margin-left: 7px">干净房</span>
                                <label><input type="radio" name="status" value="干净房" onclick="weisheng(this.value)"></label>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <span style="color: #FA8072; width: 15px;height: 15px;margin-left: 25px;margin-top: 30px" class="glyphicon glyphicon-exclamation-sign"></span>
                                </div>
                                <span style="margin-left: 7px">脏&nbsp;&nbsp;&nbsp;房</span>
                                <label><input type="radio" name="status" value="脏房" onclick="weisheng(this.value)"></label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>
                                <div>
                                    <span style="color: #FFFF00; width: 15px;height: 15px;margin-left: 25px;margin-top: 30px" class="glyphicon glyphicon-cog"></span>
                                </div>
                                <span style="margin-left: 7px">维&nbsp;&nbsp;&nbsp;护</span>
                                <label><input type="radio" name="status" value="维护" onclick="guzhang(this.value)"></label>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <span style=" color: red;width: 15px;height: 15px;margin-left: 25px;margin-top: 30px" class="glyphicon glyphicon-ban-circle"></span>
                                </div>
                                <span style="margin-left: 7px">停&nbsp;&nbsp;&nbsp;用</span>
                                <label><input type="radio" name="status" value="停用" onclick="guzhang(this.value)"></label>
                            </div>
                        </td>
                        <td>
                            <div>
                                <div>
                                    <span style="width: 15px;height: 15px;margin-left: 25px;margin-top: 30px" class="glyphicon glyphicon-question-sign"></span>
                                </div>
                                <span style="margin-left: 7px">可&nbsp;&nbsp;&nbsp;用</span>
                                <label><input type="radio" name="status" value="可用" onclick="guzhang(this.value)"></label>
                            </div>
                        </td>
                    </tr>
                </table>
        </div>
        <%--右侧房态表--%>
        <div class="col-md-10" id="right_col">

        </div>
    </div>
</body>
<script>
    /*
    搜索指定房号
    *
    * */
    $("#tijiao").click(function () {
        var val = $("#input").val();
        $.ajax({
            url:"${app}/RoomController/selectOneByRoom",
            data:{"admin_id":${sessionScope.admin.id},"room_number":val},
            type:"post",
            datatype:"json",
            success:function (data) {

            }
        })
    })
    /*
    * 筛选房间
    *
    * 房间入住情况
    * */
    function shaixuan(val) {
        $("#right_col").empty()
        $.ajax({
            url:"${app}/RoomController/selectStatusByRoom",
            data:{"admin_id":${sessionScope.admin.id},"init_status":val},
            type:"post",
            datatype:"json",
            success:function (data) {
                $.each(data,function (i,p) {
                    var html = $("<span  style='color: #FFFFFF; font-size: 18px'>").html(p.room_number);
                    var html1 = $("<span style='color: #FFFFFF; font-size: 18px'>").html(p.room_name);
                    /*
                    * 外层最大div
                    * */
                    var div = $("<div class='col-md-1'>");
                    /*
                    * init_status入住状态
                    * */
                    if (p.init_status=="在住房"){
                        div.attr('style',"font-weight:bold;background: #0000CD;height: 100px;width: 150px;margin-left: 8px;margin-top: 8px")
                    }else if(p.init_status=="欲抵房"){
                        div.attr('style',"font-weight:bold;background: #2aabd2;height: 100px;width: 150px;margin-left: 8px;margin-top: 8px")
                    }else if(p.init_status=="续住房"){
                        div.attr('style',"font-weight:bold;background: #191970;height: 100px;width: 150px;margin-left: 8px;margin-top: 8px")
                    }else{
                        div.attr('style',"font-weight:bold;background: #00FA9A;height: 100px;width: 150px;margin-left: 8px;margin-top: 8px")
                    }
                    /*
                    * 订单div
                    * */
                    var div1 = $("<div id='dingdan'>");
                    /*
                    * 卫生状态div
                    * */
                    var div2 = $("<div id='zhuangt'>");
                    div.append(html).append($("<br/>")).append(html1).append(div1).append(div2)
                    /*
                    * health_status卫生状态
                    * */
                    if (p.health_status=="脏房"){
                        var span = $("<span style='color: #FA8072;'class='glyphicon glyphicon-exclamation-sign'>");
                        div2.append(span)
                    }else {}
                    /*
                    * rom_status故障状态
                    * */
                    if(p.room_status=="维护"){
                        var span1 = $("<span  style='color: #FFFF00;'class='glyphicon glyphicon-cog'>");
                        div2.append(span1)
                    }else if(p.room_status=="停用"){
                        var span2 = $("<span style='color: red;'class='glyphicon glyphicon-ban-circle'>");
                        div2.append(span2)
                    }
                    $("#right_col").append(div)

                })
            }
        })
    }
    /*
    * 卫生情况
    * */
    function weisheng(val) {
        $("#right_col").empty()
        $.ajax({
            url:"${app}/RoomController/selectHealthByRoom",
            data:{"admin_id":${sessionScope.admin.id},"health_status":val},
            type:"post",
            datatype:"json",
            success:function (data) {
                $.each(data,function (i,p) {
                var html = $("<span  style='color: #FFFFFF; font-size: 18px'>").html(p.room_number);
                var html1 = $("<span style='color: #FFFFFF; font-size: 18px'>").html(p.room_name);
                /*
                * 外层最大div
                * */
                var div = $("<div class='col-md-1'>");
                /*
                * init_status入住状态
                * */
                if (p.init_status=="在住房"){
                    div.attr('style',"font-weight:bold;background: #0000CD;height: 100px;width: 150px;margin-left: 8px;margin-top: 8px")
                }else if(p.init_status=="欲抵房"){
                    div.attr('style',"font-weight:bold;background: #2aabd2;height: 100px;width: 150px;margin-left: 8px;margin-top: 8px")
                }else if(p.init_status=="续住房"){
                    div.attr('style',"font-weight:bold;background: #191970;height: 100px;width: 150px;margin-left: 8px;margin-top: 8px")
                }else{
                    div.attr('style',"font-weight:bold;background: #00FA9A;height: 100px;width: 150px;margin-left: 8px;margin-top: 8px")
                }
                /*
                * 订单div
                * */
                var div1 = $("<div id='dingdan'>");
                /*
                * 卫生状态div
                * */
                var div2 = $("<div id='zhuangt'>");
                div.append(html).append($("<br/>")).append(html1).append(div1).append(div2)
                /*
                * health_status卫生状态
                * */
                if (p.health_status=="脏房"){
                    var span = $("<span style='color: #FA8072;'class='glyphicon glyphicon-exclamation-sign'>");
                    div2.append(span)
                }else {}
                /*
                * rom_status故障状态
                * */
                if(p.room_status=="维护"){
                    var span1 = $("<span  style='color: #FFFF00;'class='glyphicon glyphicon-cog'>");
                    div2.append(span1)
                }else if(p.room_status=="停用"){
                    var span2 = $("<span style='color: red;'class='glyphicon glyphicon-ban-circle'>");
                    div2.append(span2)
                }
                $("#right_col").append(div)
                })
            }
        })
    }
    /*
    * 故障情况
    * */
    function guzhang(val) {
        $("#right_col").empty()
        $.ajax({
            url:"${app}/RoomController/selectRoomByRoom",
            data:{"admin_id":${sessionScope.admin.id},"room_status":val},
            type:"post",
            datatype:"json",
            success:function (data) {
                $.each(data,function (i,p) {
                    var html = $("<span  style='color: #FFFFFF; font-size: 18px'>").html(p.room_number);
                    var html1 = $("<span style='color: #FFFFFF; font-size: 18px'>").html(p.room_name);
                    /*
                    * 外层最大div
                    * */
                    var div = $("<div class='col-md-1'>");
                    /*
                    * init_status入住状态
                    * */
                    if (p.init_status=="在住房"){
                        div.attr('style',"font-weight:bold;background: #0000CD;height: 100px;width: 150px;margin-left: 8px;margin-top: 8px")
                    }else if(p.init_status=="欲抵房"){
                        div.attr('style',"font-weight:bold;background: #2aabd2;height: 100px;width: 150px;margin-left: 8px;margin-top: 8px")
                    }else if(p.init_status=="续住房"){
                        div.attr('style',"font-weight:bold;background: #191970;height: 100px;width: 150px;margin-left: 8px;margin-top: 8px")
                    }else{
                        div.attr('style',"font-weight:bold;background: #00FA9A;height: 100px;width: 150px;margin-left: 8px;margin-top: 8px")
                    }
                    /*
                    * 订单div
                    * */
                    var div1 = $("<div id='dingdan'>");
                    /*
                    * 卫生状态div
                    * */
                    var div2 = $("<div id='zhuangt'>");
                    div.append(html).append($("<br/>")).append(html1).append(div1).append(div2)
                    /*
                    * health_status卫生状态
                    * */
                    if (p.health_status=="脏房"){
                        var span = $("<span style='color: #FA8072;'class='glyphicon glyphicon-exclamation-sign'>");
                        div2.append(span)
                    }else {}
                    /*
                    * rom_status故障状态
                    * */
                    if(p.room_status=="维护"){
                        var span1 = $("<span  style='color: #FFFF00;'class='glyphicon glyphicon-cog'>");
                        div2.append(span1)
                    }else if(p.room_status=="停用"){
                        var span2 = $("<span style='color: red;'class='glyphicon glyphicon-ban-circle'>");
                        div2.append(span2)
                    }
                    $("#right_col").append(div)
                })
            }
        })
    }

</script>
</html>