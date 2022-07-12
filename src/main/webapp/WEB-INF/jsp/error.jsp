<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>出错啦</title>
<link rel="icon" href="//res.hbgcjsxy.com/statics/skin/favicon.ico">
<style type="text/css">
	 body {font-family: arial; background: #ffffff; font-size: 8px color: white;}
	 td { font-family: verdana; font-size: 11px;color: black; }
	 p { font-family: verdana; font-size: 13px; color: black; text-align: center;}

	 a:hover {text-decoration: none;}
</style>
</head>
<body style="bgcolor: #FFFFFF">
<div style="text-align:center;">
<br>
<table width="100%" border="0" cellpadding="0" cellspacing="0" style="align: center">
<tbody><tr><td style="width: 100%" align="center">
	<table width="574" style="background-image:url(images/pasek.gif); height: 21px;" border="0" cellpadding="0" cellspacing="0">
		<tbody><tr>
			<td style="text-align: left">
			<div style="margin-left:45px"><b>Error</b></div>
			</td>
		</tr>	
	</tbody></table>
	<table width="574" border="0" cellpadding="1" cellspacing="1" style="background-color: #9c9c9c;text-align:center;">
		<tbody><tr>
			<td style="background-color: #ffffff">
				<br>
				<table style="background-color: #ffffff">
					<tbody><tr>
						<td align="center" valign="top"><img src="images/error.gif" alt="error"></td>
						<td colspan="2" align="center"><h3>[出错啦]</h3></td>
					</tr>
					<tr>
						<td align="center">&nbsp;</td>
						<td align="center">
							<p>您还没有登录哦，先去<a href="${pageContext.request.contextPath }/toLogin"><strong> 登录 </strong></a>吧~~~</p>
						</td>
					</tr>

					<tr>
						<td align="center">&nbsp;</td>
						<td align="center">
							<p>没有账号？去<a href="${pageContext.request.contextPath }/toRegister"><strong> 注册 </strong></a>~~~</p>
						</td>
					</tr>
					<tr>
						<td><img src="images/dot.gif" height="70" alt="dot"></td>
					</tr>
				</tbody></table>
			</td>
		</tr>
	</tbody></table>

</td></tr></tbody></table>
<br>
</div>
 </body>
</html>