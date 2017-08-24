<%--
  Created by IntelliJ IDEA.
  User: wowill
  Date: 2017/8/8
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<head>
    <jsp:include page="/jsp/include/include.jsp" flush="true">
        <jsp:param name="title" value="404 web极致体验" />
        <jsp:param name="keywords" value="404页面" />
        <jsp:param name="Description" value="404页面" />
    </jsp:include>
    <jsp:include page="/jsp/include/stylecss.jsp" />
    <%--404 css--%>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>statics/css/404/animate.css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath %>statics/css/404/style.css.map" />
    <link rel="stylesheet" type="text/css" href="<%=basePath %>statics/css/404/style.css" />

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>

</head>
<body>




<div class="container fh5co-container">

    <div class="row">
        <div class="col-md-12 animate-box" data-animate-effect="fadeIn">
            <div class="fh5co-404-wrap" id="video" data-vide-bg="<%=basePath %>statics/video/Crocodile" data-vide-options="position: 0 50%">
                <div class="overlay"></div>
            </div>
        </div>
        <div class="col-md-12 text-center fh5co-404-text animate-box"  data-animate-effect="fadeIn">
            <h4>你看起来是迷路了~</h4>
            <p><a href="/" class="btn btn-primary">返回首页</a></p>
            <%--<h3>你是不是迷路了呀</h3>--%>
        </div>
        <div class="col-md-12 text-center fh5co-copyright animate-box" data-animate-effect="fadeInUp">

        </div>
    </div>

</div>

<jsp:include page="/jsp/include/javascript.jsp" />
<%--404 js--%>
<script src="<%=basePath %>statics/js/404/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=basePath %>statics/js/404/jquery.vide.min.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=basePath %>statics/js/404/jquery.waypoints.min.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=basePath %>statics/js/404/main.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=basePath %>statics/js/404/modernizr-2.6.2.min.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=basePath %>statics/js/404/respond.min.js" type="text/javascript" charset="utf-8"></script>


</body>
</html>


