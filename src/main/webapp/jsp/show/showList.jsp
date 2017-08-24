<%--
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

<!DOCTYPE html>
<html>

	<head>
		<jsp:include page="/jsp/include/include.jsp" flush="true">
			<jsp:param name="title" value="js插件列表" />
			<jsp:param name="keywords" value="js插件列表" />
			<jsp:param name="Description" value="js插件列表" />
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
		
			
		<!--面包屑导航：S-->
		<div class="container-fluid my-bread">
			<ol class="breadcrumb">
				<li>
					<a href="#">主页</a>
				</li>
				<li class="active">媒体</li>
			</ol>
		</div>
		<!--面包屑导航：E-->
		<p class="my-clear"></p>

		<!--内容显示区：S-->
		<div class="container-fluid my-content-box center-block">
			<div class="col-sm-3 col-md-3 col-lg-3 my-content img-rounded">
				<div class="my-inner-content img-rounded">
					<a href="showDetail.jsp" class="">
						<img src="<%=basePath %>demo-img/1.png" class="img-responsive img-rounded my-content-img" />
					</a>
					<p class=""></p>

					<div class="my-content-text">
						<a href="showDetail.jsp" class="my-content-a strong">重力正弦波</a><br />
						<span class="">HTML5 CANVAS 在重力下延迟分崩离析的正弦波</span><br />
						<span id="" class="my-content-last">
						canvas
					</span>
					</div>
					<div class="">

					</div>
				</div>

			</div>
			<div class="col-sm-3 col-md-3 col-lg-3 my-content img-rounded">
				<div class="my-inner-content img-rounded">
					<a href="#" class="">
						<img src="<%=basePath %>demo-img/1.png" class="img-responsive img-rounded my-content-img" />
					</a>
					<p class=""></p>

					<div class="my-content-text">
						<a href="#" class="my-content-a strong">重力正弦波</a><br />
						<span class="">HTML5 CANVAS 在重力下延迟分崩离析的正弦波</span><br />
						<span id="" class="my-content-last">
						canvas
					</span>
					</div>
					<div class="">

					</div>
				</div>

			</div>
			<div class="col-sm-3 col-md-3 col-lg-3 my-content img-rounded">
				<div class="my-inner-content img-rounded">
					<a href="#" class="">
						<img src="<%=basePath %>demo-img/1.png" class="img-responsive img-rounded my-content-img" />
					</a>
					<p class=""></p>

					<div class="my-content-text">
						<a href="#" class="my-content-a strong">重力正弦波</a><br />
						<span class="">HTML5 CANVAS 在重力下延迟分崩离析的正弦波</span><br />
						<span id="" class="my-content-last">
						canvas
					</span>
					</div>
					<div class="">

					</div>
				</div>

			</div>
			<div class="col-sm-3 col-md-3 col-lg-3 my-content img-rounded">
				<div class="my-inner-content img-rounded">
					<a href="#" class="">
						<img src="<%=basePath %>demo-img/1.png" class="img-responsive img-rounded my-content-img" />
					</a>
					<p class=""></p>

					<div class="my-content-text">
						<a href="#" class="my-content-a strong">重力正弦波</a><br />
						<span class="">HTML5 CANVAS 在重力下延迟分崩离析的正弦波</span><br />
						<span id="" class="my-content-last">
						canvas
					</span>
					</div>
					<div class="">

					</div>
				</div>

			</div>
			<div class="col-sm-3 col-md-3 col-lg-3 my-content img-rounded">
				<div class="my-inner-content img-rounded">
					<a href="#" class="">
						<img src="<%=basePath %>demo-img/1.png" class="img-responsive img-rounded my-content-img" />
					</a>
					<p class=""></p>

					<div class="my-content-text">
						<a href="#" class="my-content-a strong">重力正弦波</a><br />
						<span class="">HTML5 CANVAS 在重力下延迟分崩离析的正弦波</span><br />
						<span id="" class="my-content-last">
						canvas
					</span>
					</div>
					<div class="">

					</div>
				</div>

			</div>
			<div class="col-sm-3 col-md-3 col-lg-3 my-content img-rounded">
				<div class="my-inner-content img-rounded">
					<a href="#" class="">
						<img src="<%=basePath %>demo-img/1.png" class="img-responsive img-rounded my-content-img" />
					</a>
					<p class=""></p>

					<div class="my-content-text">
						<a href="#" class="my-content-a strong">重力正弦波</a><br />
						<span class="">HTML5 CANVAS 在重力下延迟分崩离析的正弦波</span><br />
						<span id="" class="my-content-last">
						canvas
					</span>
					</div>
					<div class="">

					</div>
				</div>

			</div>
			<div class="col-sm-3 col-md-3 col-lg-3 my-content img-rounded">
				<div class="my-inner-content img-rounded">
					<a href="#" class="">
						<img src="<%=basePath %>demo-img/1.png" class="img-responsive img-rounded my-content-img" />
					</a>
					<p class=""></p>

					<div class="my-content-text">
						<a href="#" class="my-content-a strong">重力正弦波</a><br />
						<span class="">HTML5 CANVAS 在重力下延迟分崩离析的正弦波</span><br />
						<span id="" class="my-content-last">
						canvas
					</span>
					</div>
					<div class="">

					</div>
				</div>
			</div>
			<div class="col-sm-3 col-md-3 col-lg-3 my-content img-rounded">
				<div class="my-inner-content img-rounded">
					<a href="#" class="">
						<img src="<%=basePath %>demo-img/1.png" class="img-responsive img-rounded my-content-img" />
					</a>
					<p class=""></p>

					<div class="my-content-text">
						<a href="#" class="my-content-a strong">重力正弦波</a><br />
						<span class="">HTML5 CANVAS 在重力下延迟分崩离析的正弦波</span><br />
						<span id="" class="my-content-last">
						canvas
					</span>
					</div>
					<div class="">

					</div>
				</div>
			</div>
			<div class="col-sm-3 col-md-3 col-lg-3 my-content img-rounded">
				<div class="my-inner-content img-rounded">
					<a href="#" class="">
						<img src="<%=basePath %>demo-img/1.png" class="img-responsive img-rounded my-content-img" />
					</a>
					<p class=""></p>

					<div class="my-content-text">
						<a href="#" class="my-content-a strong">重力正弦波</a><br />
						<span class="">HTML5 CANVAS 在重力下延迟分崩离析的正弦波</span><br />
						<span id="" class="my-content-last">
						canvas
					</span>
					</div>
					<div class="">

					</div>
				</div>
			</div>
			<div class="col-sm-3 col-md-3 col-lg-3 my-content img-rounded">
				<div class="my-inner-content img-rounded">
					<a href="#" class="">
						<img src="<%=basePath %>demo-img/1.png" class="img-responsive img-rounded my-content-img" />
					</a>
					<p class=""></p>

					<div class="my-content-text">
						<a href="#" class="my-content-a strong">重力正弦波</a><br />
						<span class="">HTML5 CANVAS 在重力下延迟分崩离析的正弦波</span><br />
						<span id="" class="my-content-last">
						canvas
					</span>
					</div>
					<div class="">

					</div>
				</div>
			</div>

		</div>
		<!--内容显示区：E-->
		<p class="my-clear"></p>
		<!--底部通用版权区：S-->
		<jsp:include page="/jsp/include/footer.jsp" />
		<!--底部通用版权区：E-->
	</body>
	<jsp:include page="/jsp/include/javascript.jsp" />
	<script type="text/javascript">
		//
		window.onload = function(){
			effect.header_init();
		}
		
	</script>
</html>