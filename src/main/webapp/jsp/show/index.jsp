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
			<jsp:param name="title" value="web极致体验" />
			<jsp:param name="keywords" value="js插件库" />
			<jsp:param name="Description" value="js插件库" />
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

		<!--动画展示区：S-->
		<div class="container-fluid canvas-container">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<iframe src="<%=basePath%>statics/js/canvas-plugin/彩虹粒子组成的动画文本/index.html" frameborder="0" marginwidth="0" scrolling="no" width="100%" height="350px" seamless class="col-sm-12 col-md-12 col-lg-12"></iframe>
			</div>
		</div>
		<!--动画展示区：E-->
		<p class="my-clear"></p>

		<!--内容显示区：S-->
		<div class="container-fluid my-content-box center-block" id="listData">



		</div>

		<%--分页：S--%>
		<div class="container-fluid" >
				<div id="Pagination" class="pagination center-block" style="position: relative;"></div>

		</div>
		<%--分页：E--%>

		<!--内容显示区：E-->
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
		}
        //分页查询:S
		$(document).ready(function() {
            getDataList(0, null);
        });

        var rows = 12;
        var page = 1;
        var initFlag = true;

        function getDataList(currPage, jg) {

            $.ajax({
                url : "/getProductList",
                type : "post",
                dataType : 'json',
                data : {rows : rows,page : currPage + 1,fId:null,sId:null},
                contentType : "application/x-www-form-urlencoded; charset=utf-8",
                success : function(response) {
                    console.log(response);
                    if (response.result) {
                        if (response.data != null && response.data != ""&& response.total != undefined && response.total > 0) {
                            if (initFlag) {
                                $("#Pagination").pagination(
                                    response.total,
                                    {
                                        items_per_page : rows,
                                        num_edge_entries : 1,
                                        num_display_entries : 8,
                                        callback : getDataList//回调函数
                                    });
                                initFlag = false;
                            }
                            $("#listData").html("");
                            loadDataList(response.data);
                        } else {
                            //暂无数据
                        }
                    } else {
                        //暂无数据
                    }
                }
            });
        }


        function loadDataList(listdata) {

            for (var i = 0; i < listdata.length; i++) {
                var n = listdata[i];
                //表格
                var html = '<div class="col-sm-3 col-md-3 col-lg-3 my-content img-rounded">'+
                    '<div class="my-inner-content img-rounded">'+
                    '<a href="/showDetail/'+n.id+'">'+
                '<img src="'+n.image_big+'" class="img-responsive img-rounded my-content-img" />'+
                    '</a>'+
                    '<p class=""></p>'+
                    '<div class="my-content-text">'+
                    '<a href="/showDetail/'+n.id+'" class="my-content-a strong">'+n.title+'</a><br />'+
                    '<span class="" style="min-height: 2rem; display: block; margin-top: 5px;">'+n.description+'</span><br />'+
                '<span id="" class="my-content-last">'+
					n.belong_name+
                    '</span>'+
                    '</div>'+
                    '<div class="">'+
                    '</div>'+
                    '</div>'+
                    '</div>';
                $("#listData").append(html);
            }
        }
        //分页查询:E
	</script>

</html>