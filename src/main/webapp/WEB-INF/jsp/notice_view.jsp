<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>人才招聘 - 河北工程技术学院</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1"> 
<link rel="icon" href="//res.hbgcjsxy.com/statics/skin/favicon.ico">
<link href="//res.hbgcjsxy.com/statics/skin/assets/css/normalize.css" rel="stylesheet"/>
<link href="//res.hbgcjsxy.com/statics/skin/assets/plugins/font_awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
<link href="//res.hbgcjsxy.com/statics/skin/assets/plugins/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="//res.hbgcjsxy.com/statics/skin/assets/plugins/bootstrap/3.3.7/css/bootstrap-theme.min.css" rel="stylesheet">

<!-- 取消自适应功能-->
<link href="//res.hbgcjsxy.com/statics/skin/assets/css/bootstrap_/ie10-viewport-bug-workaround.css" rel="stylesheet">
<link href="//res.hbgcjsxy.com/statics/skin/assets/css/bootstrap_/non-responsive.css" rel="stylesheet">
<script src="//res.hbgcjsxy.com/statics/skin/assets/css/bootstrap_/ie-emulation-modes-warning.js"></script>

<!-- 自定义样式 -->
<link href="//res.hbgcjsxy.com/statics/skin/assets/css/common.css" rel="stylesheet">

<link rel="stylesheet" href="//res.hbgcjsxy.com/statics/skin/hbgc/2020/css/public.css" >
<link rel="stylesheet" href="//res.hbgcjsxy.com/statics/skin/hbgc/2020/css/main.css" >
<link rel="stylesheet" href="//res.hbgcjsxy.com/statics/skin/hbgc/2020/css/index.css" >
<link rel="stylesheet" href="//res.hbgcjsxy.com/statics/skin/hbgc/2020/css/list.css" >
 
<link href="static/css/nice-select.css" rel="stylesheet">
<link href="static/css/jquery.dataTables.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<style type="text/css">
   body{
   	font-size: 14px;
   	line-height: 1.42857143;
   }
   .container1{
   	width:970px;
   	padding-right: 15px;
   	padding-left: 15px;
  	margin-right: auto;
   	margin-left: auto;
   	box-sizing: border-box;
   	display: block;
   }
   .container-fluid1{
   	padding-left: 0px;
   	padding-right: 0px;
   	margin-right: auto;
   	margin-left: auto;
	box-sizing: border-box;
   }
  	.input_q{
  	display:inline-block;
  	width:auto;
  	vertical-align:middle;
  	height: 34px;
   	padding: 6px 12px;
   font-size: 14px;
   line-height: 1.42857143;
   color: #555;
   border: 1px solid #ccc;
   border-radius: 4px;
   box-shadow: inset 0 1px 1px ;
   }
   .btn{
   color: #fff;
   background-image: linear-gradient(to bottom,#337ab7 0,#265a88 100%);
   background-repeat: repeat-x;
   text-shadow: 0 -1px 0 rgb(0 0 0 / 20%);
   box-shadow: inset 0 1px 0 rgb(255 255 255 / 15%), 0 1px 1px rgb(0 0 0 / 8%); 
   display: inline-block;
   padding: 6px 12px;
   margin-bottom: 0;
   font-size: 14px;
   font-weight: 400;
   text-align: center;
   white-space: nowrap;
   vertical-align: middle;
   touch-action: manipulation;
   cursor: pointer;
   user-select: none;
   border: 1px solid transparent;
   border-color: #245580;
   border-radius: 4px;
   text-transform: none;
   overflow: visible;
   margin: 0;
   font: inherit;
   }
</style>	 
   
</head>
<body>
<div class="container-fluid1 topbg" style="width: 100%;height: 131px;">
	<div class="container1">
			<div class="col-xs-6">
				<img src="images/logo_05.png" class="img-responsive pt-lg" width="470" height="103" alt="">
			</div>
			<c:if test="${USER_SESSION.id==null }">
			<div class="col-xs-6 mt-lg2x">
				<div class=" text-right mb-lg fw-800" style="font-weight: 800">
					<a href="${pageContext.request.contextPath }/toLogin">
						<span>登录</span>
					</a>
					<span class="fa fa-ellipsis-v padding-left-5 padding-right-5 color-grey"></span>
					<a href="${pageContext.request.contextPath }/toRegister">
						<span>注册</span>
					</a>
					<span class="fa fa-ellipsis-v padding-left-5 padding-right-5 color-grey"></span>
					<a href="${pageContext.request.contextPath }/toManagerLogin">管理员登录</a>
				</div>
				<div class="pull-right">
					<div class="">
						<form class="form-inline" action="http://api.hbgcjsxy.com/search.php" method="get" target="_blank">
							<input type="text" class="input_q" name="q" id="q" placeholder="请输入关键词">
							<button class="btn" type="submit"><span class="glyphicon glyphicon-search"></span></button>
						</form>
					</div>
				</div>
			</div>
			</c:if>
			<c:if test="${USER_SESSION.id!=null }">
			<div class="" style="float:left;width:400px;padding-top:30px;">
				<div class=" text-right mb-lg fw-800">
					<a href="">
						<span>当前用户：${USER_SESSION.usercode }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="${pageContext.request.contextPath }/logout">退出登录</a> 
					</a>
					<span class="fa fa-ellipsis-v padding-left-5 padding-right-5 color-grey"></span>
					<a href="${pageContext.request.contextPath }/">
						<span>个人中心</span>
					</a>
				</div>				
				<div class="pull-right">
					<div class="">
						<form class="form-inline" action="http://api.hbgcjsxy.com/search.php" method="get" target="_blank">
							<input type="text" class="input_q" name="q" id="q" placeholder="请输入关键词">
							<button class="btn" type="submit"><span class="glyphicon glyphicon-search"></span></button>
						</form>
					</div>
				</div>
			</div>
			</c:if>
		</div>
	</div>

	<br><br>
		
	<div class="container-fluid" style="width:1100px;">
		<div class="container">
			<div class="row">		
			<c:if test="${!empty notice }">
 				   <c:forEach items="${notice }" var="notice">	
					<div class="row">
						<div class="col-xl-12">
							<div class="card">
								<div class="card-header d-block">
									<h3 class="fs-20 d-block">${notice.title }</h3>
								</div>
								<div class="card-body">
								
									<h3 class="fs-20 mb-3" _msthash="3029299" _msttexthash="6157333">内容</h3>
									<div class="ms-4">
										<p><font>${notice.info }</font></p>		
									</div>
									
									<hr>
									
									<div class="d-flex justify-content-between py-4 border-bottom border-top flex-wrap">
										<span _msthash="3736850" _msttexthash="21123180"></span>
										<span _msthash="3737006" _msttexthash="14190969">发布者： 河北工程技术学院人事处
										/ <fmt:formatDate value="${notice.createTime}" type="date"/>
										</span>
									</div>
									</div>
									
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
				
			</div>
		</div>
	</div>
		
	<div class="container-fluid footbg1 p-lg" style="width:100%;">
		<div class="container footer-text" style="width:1100px;">
			<div class="col-xs-6">
				<div class="col-xs-3 footer-text-logo">
					<img src="images/xiaohui.png" width="96">
				</div>
				<div class="col-xs-9">
					<ul class="footer-text-list">
						<li>地址：河北省石家庄市桥西区宫北路11号 </li>
						<li>邮编：050091</li>
						<li>校办电话：0311-83831598 </li>
						<li>招生电话：0311-89653577/88/99</li>
					</ul>
				</div>
			</div>
			<div class="col-xs-6">
				<div class="col-xs-3">
					<img src="images/Index-0514_49.png" width="105">
				</div>
				<div class="col-xs-9">
					<ul class="footer-text-list">
						<li>河北工程技术学院微平台 </li>
						<li>微信号 hegongweipingtai</li>
						<li>关注我们，及时了解学校最新</li>
						<li>动态、通知公告等信息。</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid footbg2 p-lg" style="width:100%;">
		<div class="container footer-text2" style="width:1100px;">
			<div class="col-xs-3">
				<span id="_ideConac" style="float:right;"><a href="https://bszs.conac.cn/sitename?method=show&amp;id=29BBA14E107E555BE053012819AC0FF4" target="_blank">
					<img id="imgConac" vspace="0" hspace="0" border="0" src="images/blue.png" data-bd-imgshare-binded="1"></a></span>
				<script src="http://dcs.conac.cn/js/05/000/0000/60664728/CA050000000606647280002.js" type="text/javascript"></script><span id="_ideConac"></span>
			</div>
			<div class="col-xs-9 footer-text2-p">
				河北工程技术学院网站 版权所有 转载请注明出处
				<a href="https://beian.miit.gov.cn">冀ICP备14011511号</a> <br> 技术支持：宣传与信息化中心 管理员邮箱： admin@hbgcjsxy.com
			</div>
		</div>
	</div> 

</body>
</html>