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
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="<%=basePath%>statics/images/favicon.ico">

    <title>Basic Table</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=basePath %>jsp/admin/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath %>jsp/admin/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="<%=basePath %>jsp/admin/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="<%=basePath %>jsp/admin/css/style.css" rel="stylesheet">
    <link href="<%=basePath %>jsp/admin/css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
    <script src="<%=basePath %>jsp/admin/js/html5shiv.js"></script>
    <script src="<%=basePath %>jsp/admin/js/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<section id="container" class="">
    <!--header start-->
    <jsp:include page="include/header.jsp" flush="true" />
    <!--header end-->
    <!--sidebar start-->
    <jsp:include page="include/sidebar.jsp" flush="false">
        <jsp:param name="sub-menu-name" value="dataListManager" />
    </jsp:include>

    <!--sidebar end-->
    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <!-- page start-->

            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Advanced Table
                        </header>
                        <table class="table table-striped table-advance table-hover">
                            <thead>
                            <tr>
                                <th><i class="icon-bullhorn"></i> Company</th>
                                <th class="hidden-phone"><i class="icon-question-sign"></i> Descrition</th>
                                <th><i class="icon-bookmark"></i> Profit</th>
                                <th><i class=" icon-edit"></i> Status</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><a href="#">Vector Ltd</a></td>
                                <td class="hidden-phone">Lorem Ipsum dorolo imit</td>
                                <td>12120.00$ </td>
                                <td><span class="label label-info label-mini">Due</span></td>
                                <td>
                                    <button class="btn btn-success btn-xs"><i class="icon-ok"></i></button>
                                    <button class="btn btn-primary btn-xs"><i class="icon-pencil"></i></button>
                                    <button class="btn btn-danger btn-xs"><i class="icon-trash "></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#">
                                        Adimin co
                                    </a>
                                </td>
                                <td class="hidden-phone">Lorem Ipsum dorolo</td>
                                <td>56456.00$ </td>
                                <td><span class="label label-warning label-mini">Due</span></td>
                                <td>
                                    <button class="btn btn-success btn-xs"><i class="icon-ok"></i></button>
                                    <button class="btn btn-primary btn-xs"><i class="icon-pencil"></i></button>
                                    <button class="btn btn-danger btn-xs"><i class="icon-trash "></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#">
                                        boka soka
                                    </a>
                                </td>
                                <td class="hidden-phone">Lorem Ipsum dorolo</td>
                                <td>14400.00$ </td>
                                <td><span class="label label-success label-mini">Paid</span></td>
                                <td>
                                    <button class="btn btn-success btn-xs"><i class="icon-ok"></i></button>
                                    <button class="btn btn-primary btn-xs"><i class="icon-pencil"></i></button>
                                    <button class="btn btn-danger btn-xs"><i class="icon-trash "></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#">
                                        salbal llb
                                    </a>
                                </td>
                                <td class="hidden-phone">Lorem Ipsum dorolo</td>
                                <td>2323.50$ </td>
                                <td><span class="label label-danger label-mini">Paid</span></td>
                                <td>
                                    <button class="btn btn-success btn-xs"><i class="icon-ok"></i></button>
                                    <button class="btn btn-primary btn-xs"><i class="icon-pencil"></i></button>
                                    <button class="btn btn-danger btn-xs"><i class="icon-trash "></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td><a href="#">Vector Ltd</a></td>
                                <td class="hidden-phone">Lorem Ipsum dorolo imit</td>
                                <td>12120.00$ </td>
                                <td><span class="label label-primary label-mini">Due</span></td>
                                <td>
                                    <button class="btn btn-success btn-xs"><i class="icon-ok"></i></button>
                                    <button class="btn btn-primary btn-xs"><i class="icon-pencil"></i></button>
                                    <button class="btn btn-danger btn-xs"><i class="icon-trash "></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#">
                                        Adimin co
                                    </a>
                                </td>
                                <td class="hidden-phone">Lorem Ipsum dorolo</td>
                                <td>56456.00$ </td>
                                <td><span class="label label-warning label-mini">Due</span></td>
                                <td>
                                    <button class="btn btn-success btn-xs"><i class="icon-ok"></i></button>
                                    <button class="btn btn-primary btn-xs"><i class="icon-pencil"></i></button>
                                    <button class="btn btn-danger btn-xs"><i class="icon-trash "></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td><a href="#">Vector Ltd</a></td>
                                <td class="hidden-phone">Lorem Ipsum dorolo imit</td>
                                <td>12120.00$ </td>
                                <td><span class="label label-success label-mini">Due</span></td>
                                <td>
                                    <button class="btn btn-success btn-xs"><i class="icon-ok"></i></button>
                                    <button class="btn btn-primary btn-xs"><i class="icon-pencil"></i></button>
                                    <button class="btn btn-danger btn-xs"><i class="icon-trash "></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#">
                                        Adimin co
                                    </a>
                                </td>
                                <td class="hidden-phone">Lorem Ipsum dorolo</td>
                                <td>56456.00$ </td>
                                <td><span class="label label-warning label-mini">Due</span></td>
                                <td>
                                    <button class="btn btn-success btn-xs"><i class="icon-ok"></i></button>
                                    <button class="btn btn-primary btn-xs"><i class="icon-pencil"></i></button>
                                    <button class="btn btn-danger btn-xs"><i class="icon-trash "></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td><a href="#">Vector Ltd</a></td>
                                <td class="hidden-phone">Lorem Ipsum dorolo imit</td>
                                <td>12120.00$ </td>
                                <td><span class="label label-info label-mini">Due</span></td>
                                <td>
                                    <button class="btn btn-success btn-xs"><i class="icon-ok"></i></button>
                                    <button class="btn btn-primary btn-xs"><i class="icon-pencil"></i></button>
                                    <button class="btn btn-danger btn-xs"><i class="icon-trash "></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#">
                                        Adimin co
                                    </a>
                                </td>
                                <td class="hidden-phone">Lorem Ipsum dorolo</td>
                                <td>56456.00$ </td>
                                <td><span class="label label-warning label-mini">Due</span></td>
                                <td>
                                    <button class="btn btn-success btn-xs"><i class="icon-ok"></i></button>
                                    <button class="btn btn-primary btn-xs"><i class="icon-pencil"></i></button>
                                    <button class="btn btn-danger btn-xs"><i class="icon-trash "></i></button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </section>
                </div>
            </div>
            <!-- page end-->
        </section>
    </section>
    <!--main content end-->
    <!--footer start-->
    <jsp:include page="include/footer.jsp" flush="true" />
    <!--footer end-->
</section>

<!-- js placed at the end of the document so the pages load faster -->
<script src="<%=basePath %>jsp/admin/js/jquery.js"></script>
<script src="<%=basePath %>jsp/admin/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="<%=basePath %>jsp/admin/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="<%=basePath %>jsp/admin/js/jquery.scrollTo.min.js"></script>
<script src="<%=basePath %>jsp/admin/js/jquery.nicescroll.js" type="text/javascript"></script>
<script src="<%=basePath %>jsp/admin/js/respond.min.js" ></script>

<!--common script for all pages-->
<script src="<%=basePath %>jsp/admin/js/common-scripts.js"></script>

</body>
</html>
