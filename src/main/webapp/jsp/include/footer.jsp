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
<!--底部通用版权区：S-->
<footer class="container-fluid footer-template">
    <div class="col-sm-2 col-md-2 col-lg-2 col-sm-offset-2  col-md-offset-2  col-lg-offset-2">
        Copyright ©2017-2018 snnew.com
    </div>
    <div class="col-sm-2 col-md-2 col-lg-2">
        联系邮箱：wcxcncn@163.com
    </div>
    <div class="col-sm-1 col-md-1 col-lg-1">
        <a href="#">版权声明</a>
    </div>
    <div class="col-sm-1 col-md-1 col-lg-1">
        <a href="#">问题反馈</a>
    </div>
    <div class="col-sm-1 col-md-1 col-lg-1">
        <a href="#">站长统计</a>
    </div>
</footer>
<!--底部通用版权区：E-->