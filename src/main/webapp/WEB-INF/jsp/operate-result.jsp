<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>操作结果</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/global.css" />
</head>
<body class="bg-white">
	<div class="nk-container">
		<!-- 内容 -->
		<div class="main">
			<div class="container mt-5">
				<div class="jumbotron">
					<p class="lead">${msg}</p>
					<p class="lead">${addApplyUserMsg}</p>
					<p class="lead">${changePwdMsg}</p>
					<p class="lead">${sendResumeMsg}</p>
					<hr class="my-4">
					<p>
						系统会在 <span id="seconds" class="text-danger">8</span> 秒后自动跳转,
						您也可以点此 <a id="target" href="${pageContext.request.contextPath }/index" class="text-primary">链接</a>, 手动跳转!
					</p>
				</div>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>
	<script>
		$(function(){
			setInterval(function(){
				var seconds = $("#seconds").text();
				$("#seconds").text(--seconds);
				if(seconds == 0) {
					location.href = $("#target").attr("href");
				}
			}, 1000);
		});
	</script>
</body>
</html>