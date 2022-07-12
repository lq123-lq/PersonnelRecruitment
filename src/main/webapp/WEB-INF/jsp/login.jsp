<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<base href="${pageContext.request.contextPath }/">
<title>人才招聘 - 用户登录</title>
<link rel="icon" href="//res.hbgcjsxy.com/statics/skin/favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="Themesdesign">

    <link rel="shortcut icon" href="${pageContext.request.contextPath }/images/favicon.ico">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <!--Material Icon -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/materialdesignicons.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/selectize.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/nice-select.css">
    <!-- Custom  Css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css">
 <style type="text/css">
 	#message{
 		align: center;
 		font-size: small;
 		color: red;
 		padding-left: 80px; 
 		padding-bottom: 20px;
 	}
 </style>
</head>
 <body style="overflow: visible;">
<!-- Loader -->
<div id="preloader" style="display: none;">
    <div id="status" style="display: none;">
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>
    </div>
</div>
<!-- Loader -->

<div class="back-to-home rounded d-none d-sm-block">
    <a href="${pageContext.request.contextPath }/index" class="text-white rounded d-inline-block text-center">
        <span class="glyphicon glyphicon-home"></span>
    </a>
</div>

<!-- Hero Start -->
<section class="vh-100" style="background: url('images/user.jpg') center center;">

    <div class="home-center">
        <div class="home-desc-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-4 col-md-6">
                        <div class="login-page bg-white shadow rounded p-4">
                            <div class="text-center">
                                <h4 class="mb-4">登&nbsp;&nbsp;&nbsp;录</h4>
                            </div>
                            <form class="login-form" method="post" action="${pageContext.request.contextPath }/login">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-group position-relative">
                                            <label>账号 <span class="text-danger">*</span></label>
                                            <input type="text"
                                                   class="form-control"
                                                   placeholder="请输入账号" name="usercode" required="">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group position-relative">
                                            <label>密码 <span class="text-danger">*</span></label>
                                            <input type="password"
                                                   class="form-control"
                                                   placeholder="请输入密码" name="password" required="">
                                            <c:if test="${map!=null }">
                                            </c:if>
                                        </div>
                                    </div>
                                    
                                    <div class="col-lg-12">
                                        <p class="float-right forgot-pass"><a href="${pageContext.request.contextPath }/recovery_password}" class="text-dark font-weight-bold">忘记密码 ?</a></p>
                                        <div class="form-group">
                                            <div class="custom-control m-0 custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="customCheck1" name="rememberme">&nbsp;&nbsp;
                                                <label class="custom-control-label" for="customCheck1">记住我</label>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div id="message">${msg }</div>
                                    
                                    <div class="col-lg-12 mb-0">
                                        <input type="submit" class="btn btn-primary w-100" value="登录"><br>
                                    </div>
                                    <div class="col-12 text-center">
                                        <br>
                                        <p class="mb-0 mt-3"><small class="text-dark mr-2">没有账号 ?</small> <a href="${pageContext.request.contextPath }/toRegister" class="text-dark font-weight-bold">去注册 </a></p>
                                    </div>
                                </div>
                            </form>
                        </div><!---->
                    </div> <!--end col-->
                </div><!--end row-->
            </div> <!--end container-->
        </div>
    </div>
</section><!--end section-->
<!-- Hero End -->

<!-- javascript -->
<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.easing.min.js"></script>
<script src="${pageContext.request.contextPath }/js/plugins.js"></script>
<!-- selectize js -->
<script src="${pageContext.request.contextPath }/js/selectize.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath }/js/app.js"></script>
</body>
</html>