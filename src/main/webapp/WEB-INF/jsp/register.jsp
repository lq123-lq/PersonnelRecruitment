<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>人才招聘 - 用户注册</title>
<link rel="icon" href="//res.hbgcjsxy.com/statics/skin/favicon.ico">
<link rel="shortcut icon" href="${pageContext.request.contextPath }/images/favicon.ico">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/materialdesignicons.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/selectize.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/nice-select.css" />
<!-- Custom  Css -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css" />
<style type="text/css">
 	#tishi{
 		align: center;
 		font-size: small;
 		color: red;
 		/* padding-left: 80px;
 		padding-bottom: 20px; */
 	}
 	
 </style>
</head>
<body>
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
                                <div class="login_page bg-white shadow rounded p-4">
                                    <div class="text-center">
                                        <h4 class="mb-4">用户注册</h4>  
                                    </div>
                                    <form class="login-form" action="${pageContext.request.contextPath }/register" method="post">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group position-relative">                                               
                                                    <label>账号 <span class="text-danger">*</span></label>
                                                    <input type="text" class="form-control" placeholder="请输入账号" name="usercode" required="">
                                                  
                                                    <div class="invalid-feedback" id="message">${usercodeMsg}</div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group position-relative">
                                                    <label>密码 <span class="text-danger">*</span></label>
                                                    <input type="password" class="form-control" name="password" id="pwd" placeholder="请输入密码" required="">
                                                    <div class="invalid-feedback" id="message">${passwordMsg}</div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group position-relative">
                                                    <label>确认密码 <span class="text-danger">*</span></label>
                                                    <input type="password" class="form-control" name="repassword" id="repwd" placeholder="请再次输入密码" onkeyup="checkpassword()" required="">
                                                    <span id="tishi"></span>
                                                    <div class="invalid-feedback"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group position-relative">
                                                    <label>邮箱 <span class="text-danger">*</span></label>
                                                    <input type="email" class="form-control" placeholder="请输入邮箱" name="email" required="">
                                                    <div class="invalid-feedback" id="message">${emailMsg}</div>
                                                </div>
                                            </div>
                                            <%-- <div id="message">${msg }</div> --%>
                                            <div class="col-md-12">
                                                <button class="btn btn-primary w-100">注册</button>
                                            </div>
                                            <div class="mx-auto">
                                                <p class="mb-0 mt-3"><small class="text-dark mr-2">已有帐户 ?</small> <a href="${pageContext.request.contextPath }/toLogin" class="text-dark font-weight-bold">登录</a></p>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div> <!--end col-->
                        </div><!--end row-->
                    </div> <!--end container-->
                </div>
            </div>
        </section><!--end section-->
        <!-- Hero End -->
<script type="text/javascript">
	function checkpassword(){
		var password = document.getElementById("pwd").value;
		var repassword = document.getElementById("repwd").value;
		if(password == repassword){
			document.getElementById("tishi").innerHTML="<br><font color='green'>两次密码输入一致</font>";
			document.getElementById("submit").disabled = false;
		}else{
			document.getElementById("tishi").innerHTML="<br><font color='red'>两次输入密码不一致!</font>";
   		 	document.getElementById("submit").disabled = true;
		}
	}
</script>
</body>
</html>