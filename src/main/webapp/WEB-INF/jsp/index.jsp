<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		
</head>
<body>
<div class="container-fluid topbg">
			<div class="container">
				<div class="row">
					<div class="col-xs-6">
						<img src="images/logo_05.png" class="img-responsive pt-lg" width="470" height="103" alt="">
					</div>
					<c:if test="${empty USER_SESSION }">
					<div class="col-xs-6 mt-lg2x">
						<div class=" text-right mb-lg fw-800">
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
									<input type="text" class="form-control" name="q" id="q" placeholder="请输入关键词">
									<button class="btn btn-primary" type="submit"><span class="glyphicon glyphicon-search"></span></button>
								</form>
							</div>
						</div>
					</div>
					</c:if>
					<c:if test="${!empty USER_SESSION }">
					<div class="col-xs-6 mt-lg2x">
						<div class=" text-right mb-lg fw-800">
							<span>当前用户：${USER_SESSION.usercode }</span>
							<span class="fa fa-ellipsis-v padding-left-5 padding-right-5 color-grey"></span>
							<a href="${pageContext.request.contextPath }/logout">退出登录</a> 
							<span class="fa fa-ellipsis-v padding-left-5 padding-right-5 color-grey"></span>
							<a href="${pageContext.request.contextPath }/findUserById_center?id=${USER_SESSION.id}">
								<span>个人中心</span>
							</a>
						</div>				
						<div class="pull-right">
							<div class="">
								<form class="form-inline" action="http://api.hbgcjsxy.com/search.php" method="get" target="_blank">
									<input type="text" class="form-control" name="q" id="q" placeholder="请输入关键词">
									<button class="btn btn-primary" type="submit"><span class="glyphicon glyphicon-search"></span></button>
								</form>
							</div>
						</div>
					</div>
					</c:if>
				</div>
			</div>
		</div>
		
		<div class="container-fluid">
			<nav class="hg-header-menu navbar navbar-default" id="hg-header-menu">
				<div class="container">
					
					<div class="collapse navbar-collapse" id="hg-header-menu-list">
						<ul class="nav navbar-nav hg-header-menu-list">

							<!--一级菜单-->
							<li class="hg-menu-li active">
								<a href="http://www.hbgcjsxy.com" class="dropdown-toggle">网站首页</a>
							</li>
							<li class="hg-menu-li">
								<!--二级菜单-->
								<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
									学校概况<span class="caret"></span> </a>
								<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/xxgk/xxjj/">学校简介</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/xxgk/xrld/">现任领导</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/xxgk/bxln/">办学理念</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/xxgk/csjg/">常设机构</a>
									</li>

									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/xxgk/xsjg/">其他机构</a>
									</li>
								</ul>
							</li>

							<li class="hg-menu-li">

								<!--二级菜单-->
								<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
									党群思政<span class="caret"></span> </a>

								<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/xdw/" target="_blank">党建工作</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/xdw/xcgz" target="_blank">宣传思想</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/xdw/xsjw" target="_blank">学思践悟</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://jiaogong.hbgcjsxy.com" target="_blank">教工之家</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com###" target="_blank">团的建设</a>
									</li>
								</ul>
							</li>

							<li class="hg-menu-li">
								<!--二级菜单-->
								<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
									教学单位<span class="caret"></span> </a>

								<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://jzxy.hbgcjsxy.com" target="_blank">建筑与设计学院</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://tgxy.hbgcjsxy.com" target="_blank">土木工程学院</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://rjxy.hbgcjsxy.com" target="_blank">软件学院</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://szxy.hbgcjsxy.com/" target="_blank">人工智能与大数据学院</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://wtxy.hbgcjsxy.com/" target="_blank">网络与通信学院</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://sxy.hbgcjsxy.com" target="_blank">商学院</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://ycxy.hbgcjsxy.com" target="_blank">艺术与传媒学院</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://jxjyxy.hbgcjsxy.com/" target="_blank">继续教育学院</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/szjxb/bmgk/" target="_blank">思政教学部</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/tyjxb/bmgk/" target="_blank">体育教学部</a>
									</li>
								</ul>
							</li>
							
							<li class="hg-menu-li">
								<!--二级菜单-->
								<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
									人才培养<span class="caret"></span> </a>

								<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">

									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/rcpy/szdw/">
											师资队伍
										</a>

									</li>

									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/rcpy/jsfz/">
											教师发展
										</a>

									</li>

									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/rcpy/hzbx/">
											合作办学
										</a>

									</li>

									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com#" target="_blank">
											精品课程
										</a>

									</li>

									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://guofang.hbgcjsxy.com" target="_blank">
											国防教育
										</a>

									</li>
								</ul>

							</li>

							<li class="hg-menu-li">

								<!--二级菜单-->
								<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
									科学研究<span class="caret"></span> </a>

								<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">

									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/kxyj/kypt/">
											科研平台
										</a>

									</li>

									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/kxyj/zrkx/">
											自然科学
										</a>

									</li>

									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/kxyj/rwsk/">
											人文社科
										</a>

									</li>

									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/kxyj/xb/">
											学报
										</a>

									</li>
								</ul>

							</li>

							<li class="hg-menu-li">

								<!--二级菜单-->
								<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
									产教融合<span class="caret"></span> </a>

								<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">

									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/cjrh/xwsx/">
											校外实训
										</a>

									</li>

									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/cjrh/ddpy/">
											订单培养
										</a>

									</li>

									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/cjrh/cxhz/">
											产学合作
										</a>

									</li>

									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/cjrh/kckf/">
											课程开发
										</a>

									</li>

									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/cjrh/xhxh/">
											学会协会
										</a>

									</li>
								</ul>

							</li>

							<li class="hg-menu-li">

								<!--二级菜单-->
								<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
									招生就业<span class="caret"></span> </a>

								<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">

									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://zhaosheng.hbgcjsxy.com" target="_blank">
											招生服务										</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://jiuye.hbgcjsxy.com" target="_blank">
											就业服务
										</a>
									</li>
								</ul>
							</li>
							<li class="hg-menu-li">
								<!--二级菜单-->
								<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/xxzt/rczp/" target="_blank">
									人才引进 </a>
							</li>
							<li class="hg-menu-li">
								<!--二级菜单-->
								<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
									公共服务<span class="caret"></span> </a>

								<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">

									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/ggfw/ldxx/">
											领导信箱
										</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/xsgzb/zytz" target="_blank">
											学生工作
										</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/tsg/" target="_blank">
											图书馆
										</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/xkxb/" target="_blank">
											校报校刊
										</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://office.hbgcjsxy.com/" target="_blank">
											内网办公
										</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/hqgzb/tzgg/" target="_blank">
											后勤服务
										</a>
									</li>
									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/aqgzb/tzgg/" target="_blank">
											安全工作
										</a>

									</li>

									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/xyh/bmjj/" target="_blank">
											校友事务
										</a>

									</li>

									<li class="dropdown-menu-li">
										<!--三级菜单-->
										<a class="dropdown-toggle" href="http://www.hbgcjsxy.com/ggfw/lxwm/">
											联系我们
										</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
					
				</div>
			</nav>
		</div>
	
		<div class="container-fluid">
			<script src="//www.hbgcjsxy.com/xxzt/sylbt/"></script>
		</div>
		
		<div class="container-fluid">
			<div class="container">
				<div class="row">
					<div class="col-xs-3 posrel">
						<div class="hg-menu-left">
							
							<h3 class="hg-menu-left-hd">学校专题</h3>
							<ul class="hg-menu-left-list">
								<li class="active">
									<a href="${pageContext.request.contextPath}/displayJobTitle">
										<span class="fa fa-angle-double-right pull-right" aria-hidden="true"></span>
										<span class="fa fa-plus-square" aria-hidden="true"></span> 人才招聘 <span class="clearfix"></span>
									</a>
								</li>

								<li class="">
									<a href="${pageContext.request.contextPath}/displayNoticeTitle">
										<span class="fa fa-angle-double-right pull-right" aria-hidden="true"></span>
										<span class="fa fa-plus-square" aria-hidden="true"></span> 通知公告 <span class="clearfix"></span>
									</a>
								</li>
							</ul>
						</div>
						<div class="logo-bg"></div>
					</div>

					<div class="col-xs-9">
						<div class="col-xs-12 border-bottom-e4">
							<div class="col-xs-3 h50 padding-0 margin-top margin-bottom-5">
								<h3 class="ml-sm font-00bff3">人才招聘</h3>
							</div>
							<div class="col-xs-9 text-right padding-0 margin-top margin-bottom-5">
								<ol class="breadcrumb bre-crumb">
									<span class="fa fa-home fw-800"> 当前位置：</span>
									<a href="http://www.hbgcjsxy.com"> 学校首页</a> &gt;
									<a href="${pageContext.request.contextPath }/index">学校专题</a> &gt;
									<a href="${pageContext.request.contextPath }/index">人才招聘</a> 
								</ol>
							</div>
							<span class="clearfix"></span> </div>
						<div class="col-xs-12 titext mb-xl">
							<div class="hg-article">
								<div class="hg-article-list">
									<ul class="hg-article-list-ul">
									<c:if test="${!empty jobList }">
									  	<c:forEach items="${jobList }" var="job">
									  	 <li class="">
									  	 <span class="more"></span>
										 <a href="${pageContext.request.contextPath }/findJobByTitle?title=${job.title }">
									      ${job.title }
									     </a>
									     </li>
									     </c:forEach>
  									</c:if> 
  									
  									<c:if test="${!empty noticeList }">
									  	<c:forEach items="${noticeList }" var="notice">
									  	 <li class="">
									  	 <span class="more"></span>
										 <%-- <a href="${pageContext.request.contextPath }/uFindNoticeByTitle?noticeTitle=${notice.noticeTitle}">
									      ${notice.noticeTitle }
									     </a> --%>
									     <a href="${pageContext.request.contextPath }/findNoticeByTitle?title=${notice.title}">
									      ${notice.title }
									     </a>
									     </li>
									     </c:forEach>
  									</c:if>
									</ul>
								</div>
								<div class="text-center" aria-label="分页导航">
									<ul class="pagination pagination-sm">
									</ul>
								</div>
							</div>

						</div>

					</div>
				</div>
			</div>
		</div>
		
		<div class="container-fluid footbg1 p-lg">
			<div class="container footer-text">
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

		<div class="container-fluid footbg2 p-lg">
			<div class="container footer-text2">
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