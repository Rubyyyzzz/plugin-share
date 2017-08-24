<%--
  Created by IntelliJ IDEA.
  User: wowill
  Date: 2017/8/7
  Time: 15:52
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
<script src="<%=basePath %>statics/js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=basePath %>statics/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=basePath %>statics/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=basePath %>statics/js/effect.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=basePath %>statics/js/jquery.pagination.js"></script>