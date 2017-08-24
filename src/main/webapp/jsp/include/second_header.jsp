<%--
  Created by IntelliJ IDEA.
  User: wowill
  Date: 2017/8/7
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!--顶部通用二级菜单：S-->
<div class="my-sheader-container">
    <div class="container-fluid">
        <ul class="my-second-list row">

            <li class="col-sm-2 col-md-2 col-lg-2">
                <a href="#">悬浮层</a>
            </li>
            <li class="col-sm-2 col-md-2 col-lg-2">
                <a href="#">弹出层</a>
            </li>
        </ul>
    </div>

    <div class="container-fluid">
        <ul class="my-second-list row">
            <li class="col-sm-2 col-md-2 col-lg-2">
                <a href="#">搜索</a>
            </li>
            <li class="col-sm-2 col-md-2 col-lg-2">
                <a href="#">上传</a>
            </li>
            <li class="col-sm-2 col-md-2 col-lg-2">
                <a href="#">验证</a>
            </li>
        </ul>
    </div>
    <div class="container-fluid">
        <ul class="my-second-list row">
            <li class="col-sm-2 col-md-2 col-lg-2">
                <a href="#">地图</a>
            </li>
            <li class="col-sm-2 col-md-2 col-lg-2">
                <a href="#">视频</a>
            </li>
            <li class="col-sm-2 col-md-2 col-lg-2">
                <a href="#">轮播图</a>
            </li>
        </ul>
    </div>
    <div class="container-fluid">
        <ul class="my-second-list row">
            <li class="col-sm-2 col-md-2 col-lg-2">
                <a href="#">水平导航</a>
            </li>
            <li class="col-sm-2 col-md-2 col-lg-2">
                <a href="#">垂直导航</a>
            </li>
            <li class="col-sm-2 col-md-2 col-lg-2">
                <a href="#">手风琴</a>
            </li>
        </ul>
    </div>
    <div class="container-fluid">
        <ul class="my-second-list row">
            <li class="col-sm-2 col-md-2 col-lg-2">
                <a href="#">动画</a>
            </li>
            <li class="col-sm-2 col-md-2 col-lg-2">
                <a href="#">游戏</a>
            </li>

        </ul>
    </div>
    <div class="container-fluid">
        <ul class="my-second-list row">

        </ul>
    </div>
    <!--<div class="container-fluid">
        <ul class="my-second-list row">
            <li class="col-sm-2 col-md-2 col-lg-2">
                <a href="#">CSS</a>
            </li>
            <li class="col-sm-2 col-md-2 col-lg-2">
                <a href="#">Javascript</a>
            </li>

        </ul>
    </div>
    <div class="container-fluid">
        <ul class="my-second-list row">
            <li class="col-sm-2 col-md-2 col-lg-2">
                <a href="#">压缩</a>
            </li>
            <li class="col-sm-2 col-md-2 col-lg-2">
                <a href="#">爬虫</a>
            </li>
            <li class="col-sm-2 col-md-2 col-lg-2">
                <a href="#">大数据</a>
            </li>
            <li class="col-sm-2 col-md-2 col-lg-2">
                <a href="#">神经网络</a>
            </li>
        </ul>
    </div>-->
</div>
<!--顶部通用二级菜单：E-->