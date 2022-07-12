<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html><head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet">
<link href="css/font-awesome.min.css" type="text/javascript" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/bootsnav.css" type="text/css" rel="stylesheet">
<link href="css/normalize.css" type="text/css" rel="stylesheet">
<link href="css/css.css" rel="stylesheet" type="text/css">
<script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/bootsnav.js" type="text/javascript"></script>
<script src="js/jquery.js" type="text/javascript"></script>
<title>后台 - 管理员登录</title>
<link rel="icon" href="//res.hbgcjsxy.com/statics/skin/favicon.ico">
</head>

<body class="logobg_style">
  	<div id="large-header" class="large-header login-page" style="height: 754px;">
  	<div style="width:50px;height:50px;margin-left:20px;margin-top:20px;">
	    <a href="${pageContext.request.contextPath }/index" class="text-white rounded d-inline-block text-center">
	        <span class="glyphicon glyphicon-home"></span>
	    </a>
	</div>
  		<canvas id="demo-canvas" width="1536" height="754"></canvas>
  		<div class="login-form">
  			<div class="login-content">
  				<h1 class="title_name">管理员登录</h1>
  				<form method="post" role="form" id="form_login" class="login_padding" action="${pageContext.request.contextPath }/manager_login">
				<div class="form-group clearfix">
					<div class="input-group">
						<div class="input-group-addon">
							<i class="glyphicon glyphicon-user" style="margin:auto;"></i>
						</div>
						<input type="text" class="form-control" name="staffCode" id="staffCode" placeholder="请输入职工号" required="">
					</div>
				</div>

				<div class="form-group clearfix">
					<div class="input-group">
						<div class="input-group-addon">
							<i class="glyphicon glyphicon-lock"></i>
						</div>
						<input type="password" class="form-control" name="password" id="password" placeholder="请输入密码" required="">
					</div>
				</div>
				
				<div class="form-group clearfix">
					<div class="input-group">
						<div class="input-group-addon">
							<i class="glyphicon glyphicon-bell"></i>
						</div>
						<select class="from-select form-control" name="role" style="min-width:100px;" required="">
							<option selected>选择角色</option>
							<option value="1">系统管理员</option>
							<option value="2">人事处管理员</option>
							<option value="3">学院管理员</option>
						</select>
					</div>
				</div>
				
					<div class=" textright"><a href="#" class="forget">忘记密码？</a></div>
                 <div class="tishi" style="color:red;">${msg }</div> 
                 <%-- <c:if test="${college }"></c:if> --%>
				<div class="form-group">
					<input type="submit" class="btn btn-danger btn-block btn-login" value="登录"><!-- onclick="cliLogin()" -->		
				</div>
	
			</form>
  			</div>
  			
  		</div>
  	</div>
  	
<script src="js/TweenLite/TweenLite.min.js"></script>
<script src="js/TweenLite/EasePack.min.js"></script>
<script src="js/TweenLite/rAF.js"></script>
<script src="js/TweenLite/demo-1.js"></script>


</body></html>