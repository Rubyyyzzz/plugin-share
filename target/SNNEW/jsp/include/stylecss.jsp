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
<link rel="stylesheet" type="text/css" href="<%=basePath %>statics/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath %>statics/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath %>statics/css/index.css" />
<link rel="stylesheet" type="text/css" href="http://at.alicdn.com/t/font_maapw5sw3cbzw7b9.css" />
<link rel="shortcut icon" type="image/x-icon" href="<%=basePath %>statics/images/favicon.ico" />
<link rel="stylesheet" href="<%=basePath %>statics/css/pagination.css" />