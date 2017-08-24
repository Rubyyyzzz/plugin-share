<%--
  Created by IntelliJ IDEA.
  User: wowill
  Date: 2017/8/7
  Time: 15:50
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

    <!--顶部通用导航栏：S-->
    <header class="container-fluid header-template">
        <div class="row">
            <div class="col-sm-1 col-md-1 col-lg-1 text-center my-logo">
                <a href="#">SNNEW.com</a>

            </div>

            <div class="col-sm-1 col-md-1 col-lg-1 col-sm-offset-1 col-md-offset-1 col-lg-offset-1 header-content">
                <a href="#">
                            <span id="" class="iconfont icon-UI_Thefire">

                            </span> UI
                </a>

            </div>
            <div class="col-sm-1 col-md-1 col-lg-1 header-content">
                <a href="#">
                            <span id="" class="iconfont icon-UI-">

                            </span> 输入
                </a>

            </div>
            <div class="col-sm-1 col-md-1 col-lg-1 header-content">
                <a href="#">
                            <span id="" class="iconfont icon-meitiweidu">

                            </span> 媒体
                </a>

            </div>
            <div class="col-sm-1 col-md-1 col-lg-1 header-content">
                <a href="#">
                            <span id="" class="iconfont icon-importedlayers">

                            </span> 导航
                </a>

            </div>
            <div class="col-sm-1 col-md-1 col-lg-1 header-content">
                <a href="#">
                            <span id="" class="iconfont icon-qita2">

                            </span> 其他
                </a>

            </div>
            <div class="col-sm-1 col-md-1 col-lg-1 header-content">
                <a href="#">
                            <span id="" class="iconfont icon-mobanfuzhi">

                            </span> 模板
                </a>

            </div>
            <!--<div class="col-sm-1 col-md-1 col-lg-1 header-content">
                <a href="#">
                    <span id="" class="iconfont icon-jiaocheng">

                    </span> 教程
                </a>

            </div>
            <div class="col-sm-1 col-md-1 col-lg-1 header-content">
                <a href="#">
                    <span id="" class="iconfont icon-jiaocheng">

                    </span> 算法
                </a>

            </div>-->
            <!--<div class="col-sm-1 col-md-1 col-lg-1" style="padding: 0px;">
                <a href="#">
                    <span id="" class="iconfont icon-zhuce1">

                    </span>
                    注册/登陆
                </a>

            </div>-->
            <div class="col-sm-3 col-md-3 col-lg-3 pull-right">
                <form action="" method="post" class="my-search-form">
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" name="search" id="search" value="" class="form-control input-sm" placeholder="输入关键词..." />
                            <a class="input-group-addon my-search-addon">
                                搜索
                            </a>
                        </div>

                    </div>
                </form>

            </div>
        </div>
    </header>
    <!--顶部通用导航栏：E-->

