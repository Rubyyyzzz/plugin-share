<%@ page import="com.snnew.www.pojo.Product" %><%--
  Created by IntelliJ IDEA.
  User: wowill
  Date: 2017/8/4
  Time: 22:20
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
<%
	Product product = (Product) request.getAttribute("product");
%>
<!DOCTYPE html>
<html>

	<head>
		<jsp:include page="/jsp/include/include.jsp" flush="true">
			<jsp:param name="title" value="js插件下载" />
			<jsp:param name="keywords" value="js插件下载" />
			<jsp:param name="Description" value="js插件下载" />
		</jsp:include>
		<jsp:include page="/jsp/include/stylecss.jsp" />
	</head>

	<body>
		<!--顶部通用导航栏：S-->
		<jsp:include page="/jsp/include/header.jsp" />
		<!--顶部通用导航栏：E-->

		<!--顶部通用二级菜单：S-->
		<jsp:include page="/jsp/include/second_header.jsp" />
		<!--顶部通用二级菜单：E-->


		<div class="container-fluid">
			<div class="row">
				<!--面包屑导航：S-->
				<div class="col-sm-12 col-md-12 col-lg-12 my-bread">
					<ol class="breadcrumb">

						<li>
							<a href="#">媒体</a>
						</li>
						<li>
							<a href="#">轮播图</a>
						</li>
						<li class="active">最酷炫的Html5轮播图</li>
					</ol>
				</div>
				<!--面包屑导航：E-->

				<!--内容展示：S-->
				<div class="col-sm-12 col-md-12 col-lg-12">
					<div class="col-sm-5 col-md-5 col-lg-5 my-detail-left">
						<div class="">
							<img src="<%=basePath %>statics/demo-img/1-detail.png" class="img-responsive" />
						</div>
						<div class="">
							<nav>
								<ul class="pager">
									<li class="previous">
										<a href="<%=basePath %>showDetail/<%=product.getId()-1%>"><span aria-hidden="true">&larr;</span> 上一个</a>
									</li>
									<li class="next">
										<a href="<%=basePath %>showDetail/<%=product.getId()+1%>">下一个 <span aria-hidden="true">&rarr;</span></a>
									</li>
								</ul>
							</nav>
						</div>
					</div>
					<div class="col-sm-4 col-md-4 col-lg-4 my-detail-right">
						<h3 class="my-detail-title"><%=product.getTitle()%></h3>
						<div class="">
							<span id="views" class="label label-primary"><%=product.getBrowse_num()%> views</span>
							<span id="downloads" class="label label-info">downloads</span>
						</div>
						<p class="my-clear"></p>
						<div class="my-detail-labels">

							<button type="button" class="btn btn-default">（链接）Link</button>
							<button type="button" class="btn btn-default">（链接）Link</button>
						</div>
						<p class="my-clear"></p>
						<div class="my-detail-result">
							<a href="<%=product.getShow_url()%>" type="button" class="btn btn-primary"><span class="iconfont icon-yulan"></span> 在线预览</a>
							<a href="<%=product.getDownload_url()%>" id="downloadBtn" type="button" class="btn btn-success"><span class="iconfont icon-xiazai"></span> 免费下载</a>
						</div>
					</div>
				</div>
				<!--内容展示：E-->
			</div>

		</div>



		<p class="my-clear"></p>
		<!--底部通用版权区：S-->
		<jsp:include page="/jsp/include/footer.jsp" />
		<!--底部通用版权区：E-->
	</body>
	<jsp:include page="/jsp/include/javascript.jsp" />
	<script type="text/javascript">
		//
		window.onload = function() {
			effect.header_init();
            downloadInit();
            downloadRecord();
		}
		function downloadInit() {
            $.ajax({
                url : "/showDownloadNum",
                type : "post",
                dataType : 'json',
                data : {positionId:<%=product.getId()%>},
                contentType : "application/x-www-form-urlencoded; charset=utf-8",
                success : function(response) {
                    if (response.result) {
                        console.log(response);
                        if (response.data != null && response.data != "") {

                            $("#downloads").html(response.data+" downloads");
                        } else {
                            //暂无数据
                        }
                    } else {
                        //暂无数据
                    }
                }
            });
        }
		function downloadRecord() {
		    document.getElementById("downloadBtn").addEventListener("click",function () {
                $.ajax({
                    url : "/updateDownloadNum",
                    type : "post",
                    dataType : 'json',
                    data : {positionId:<%=product.getId()%>},
                    contentType : "application/x-www-form-urlencoded; charset=utf-8",
                    success : function(response) {
                        if (response.result) {
                            console.log(response);
                            if (response.data != null && response.data != "") {

                                $("#downloads").html(response.data+" downloads");

                            } else {
                                //暂无数据
                            }
                        } else {
                            //暂无数据
                        }
                    }
                });
            });

        }
        function getBreadMenu() {
            document.getElementById("downloadBtn").addEventListener("click",function () {
                $.ajax({
                    url : "/getBreadMenu",
                    type : "post",
                    dataType : 'json',
                    data : {sid:<%=product.getBelong_id()%>},
                    contentType : "application/x-www-form-urlencoded; charset=utf-8",
                    success : function(response) {
                        if (response.result) {
                            console.log(response);
                            if (response.data != null && response.data != "") {

                                $("#downloads").html(response.data+" downloads");

                            } else {
                                //暂无数据
                            }
                        } else {
                            //暂无数据
                        }
                    }
                });
            });
        }
	</script>

</html>