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
    <link href="<%=basePath %>jsp/admin/assets/dropzone/css/dropzone.css" rel="stylesheet"/>
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
        <jsp:param name="sub-menu-name" value="addNewData" />
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
                            Advanced Form validations
                        </header>
                        <%--<div class="panel-body">--%>
                            <%--<form action="assets/dropzone/upload.php" class="dropzone" id="my-awesome-dropzone"></form>--%>
                        <%--</div>--%>

                        <div class="panel-body">
                            <div class="form">
                                <form  class="cmxform form-horizontal tasi-form">
                                    <div class="form-group ">
                                        <label for="image_small_file" class="control-label col-lg-2">小图</label>
                                        <div class="col-lg-10">
                                            <input class=" form-control" data-id="image_small_file" id="image_small_file" name="file" type="file" onchange="fileUpload(this)" />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="image_big_file" class="control-label col-lg-2">大图</label>
                                        <div class="col-lg-10">
                                            <input class=" form-control" data-id="image_big_file" id="image_big_file" name="file" type="file" onchange="fileUpload(this)" />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="zip_file" class="control-label col-lg-2">压缩包</label>
                                        <div class="col-lg-10">
                                            <input class=" form-control" data-id="zip_file" id="zip_file" name="file" type="file" onchange="fileUpload(this)" />
                                        </div>
                                    </div>
                                </form>
                                <hr>
                                <p class="divider-vertical"></p>
                                <form class="cmxform form-horizontal tasi-form" id="form" method="post" action="/admin/saveNewData" >
                                    <div class="form-group ">
                                        <label for="title" class="control-label col-lg-2">SEO 标题</label>
                                        <div class="col-lg-10">
                                            <input class=" form-control" id="seo_title" name="seo_title" type="text" />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="title" class="control-label col-lg-2">SEO 关键词</label>
                                        <div class="col-lg-10">
                                            <input class=" form-control" id="seo_keywords" name="seo_keywords" type="text" />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="title" class="control-label col-lg-2">SEO 描述</label>
                                        <div class="col-lg-10">
                                            <input class=" form-control" id="seo_description" name="seo_description" type="text" />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="title" class="control-label col-lg-2">标题</label>
                                        <div class="col-lg-10">
                                            <input class=" form-control" id="title" name="title" type="text" />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="description" class="control-label col-lg-2">描述</label>
                                        <div class="col-lg-10">
                                            <input class=" form-control" id="description" name="description" type="text" />
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="belong_name" class="control-label col-lg-2">所属类别</label>
                                        <div class="col-lg-10">
                                            <input class=" form-control" id="belong_name" name="belong_name" type="hidden" />
                                            <input class=" form-control" id="belong_id" name="belong_id" type="hidden" />
                                                <select class="form-control" id="selectList">
                                                    <%--<option>1</option>--%>
                                                    <%--<option>2</option>--%>
                                                    <%--<option>3</option>--%>
                                                    <%--<option>4</option>--%>
                                                    <%--<option>5</option>--%>
                                                </select>
                                        </div>
                                    </div>
                                    <input class="form-control" id="id" name="id" value="<%=session.getAttribute("positionId")%>" type="hidden" />
                                    <input class=" form-control" id="image_small" name="image_small" type="hidden" />
                                    <input class=" form-control" id="belong_root_id" name="belong_root_id" type="hidden" />
                                    <input class=" form-control" id="image_big" name="image_big" type="hidden" />
                                    <input class=" form-control" id="show_url" name="show_url" type="hidden" />
                                    <input class=" form-control" id="download_url" name="download_url" type="hidden" />
                                    <input class=" form-control" id="upload_time" name="upload_time" type="hidden" />
                                    <input class=" form-control" id="upload_ip" name="upload_ip" type="hidden" />
                                    <div class="form-group ">
                                        <label for="browse_num" class="control-label col-lg-2">浏览数量</label>
                                        <div class="col-lg-10">
                                            <input class="form-control " id="browse_num" name="browse_num" type="number" value="0" />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="download_num" class="control-label col-lg-2">下载数量</label>
                                        <div class="col-lg-10">
                                            <input class="form-control " id="download_num" name="download_num" type="number" value="0" />
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-lg-offset-2 col-lg-10">
                                            <button class="btn btn-danger" type="submit">提交</button>
                                            <button class="btn btn-default" type="reset">清空</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
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
<script src="<%=basePath %>jsp/admin/assets/dropzone/dropzone.js"></script>

<!--common script for all pages-->
<script src="<%=basePath %>jsp/admin/js/common-scripts.js"></script>
<script src="<%=basePath %>jsp/admin/js/ajaxfileupload.js"></script>
<script>

    $(document).ready(function () {
        getSelectList();
    });
    <%--
    0：图片；
    1：压缩包
    --%>
    var Url = "/admin/fileUpload";
    function fileUpload(obj) {
        $.ajaxFileUpload({
            url : Url,
            fileElementId:$(obj).attr("id"),
            dataType : "json",
            success : function(responseStr) {
                if(responseStr.status===0){
                    console.log(responseStr);
                    console.log($(obj).attr("data-id"));
                    if($(obj).attr("data-id") == "image_small_file"){
                        $("#image_small").val(responseStr.path);
                    }
                    else if($(obj).attr("data-id") == "image_big_file"){
                        $("#image_big").val(responseStr.path);
                    }
                    else if($(obj).attr("data-id") == "zip_file"){
                        $("#download_url").val(responseStr.path);
                        $("#show_url").val(responseStr.show_url);
                    }
                }else{
                    console.log("失败");
                }
            },
            error : function(responseStr) {
                console.log("error");
            }
        });
    }

//    设置类别下拉列表
    function getSelectList() {

        $.ajax({
            url : "/admin/menuList",
            type : "post",
            dataType : 'json',
            data : {},
            contentType : "application/x-www-form-urlencoded; charset=utf-8",
            success : function(response) {
                if (response.result) {
                    console.log(response);
                    if (response.data != null && response.data != "") {

                        $("#selectList").html("");
                        loadSelectList(response.data);
                    } else {
                        //暂无数据
                    }
                } else {
                    //暂无数据
                }
            }
        });
    }


    function loadSelectList(listdata) {

        for (var i = 0; i < listdata.length; i++) {
            var n = listdata[i];
//            for(var j in listdata[i]){
//                if (listdata[i].hasOwnProperty(j)) { //filter,只输出man的私有属性
//                    console.log(j,":",listdata[i][j]);
//                };
//            }
            //表格
            if(n.second_menu_name !== null) {
                var html = "<option data-id=\""+n.second_menu_id+"\" data-rootId=\""+n.first_menu_id+"\">"+
                    n.second_menu_name+
                    "</option>";
                $("#selectList").append(html);
            }

        }
    }


//    格式化时间
//    获取当前的日期时间 格式“yyyy-MM-dd HH:MM:SS”
    function getNowFormatDate() {
        var date = new Date();
        var seperator1 = "-";
        var seperator2 = ":";
        var month = date.getMonth() + 1;
        var strDate = date.getDate();
        if (month >= 1 && month <= 9) {
            month = "0" + month;
        }
        if (strDate >= 0 && strDate <= 9) {
            strDate = "0" + strDate;
        }
        var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
            + " " + date.getHours() + seperator2 + date.getMinutes()
            + seperator2 + date.getSeconds();
        return currentdate;
    }



//    提交表单
    $("#form").submit(function (e) {
        var bn = jQuery("#selectList  option:selected").text();
        var bi = jQuery("#selectList  option:selected").attr("data-id");
        var bri = jQuery("#selectList  option:selected").attr("data-rootId");
        $("#belong_name").val(bn);
        $("#belong_id").val(bi);
        $("#belong_root_id").val(bri);
        $("#upload_time").val(getNowFormatDate());

    });
</script>
</body>
</html>
 
