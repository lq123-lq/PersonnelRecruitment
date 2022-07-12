<%@ page language="java" contentType="text/html; charset=UTF-8"  import="java.util.*,java.io.*"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>人才招聘 - 用户中心</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1"> 
<link rel="icon" href="//res.hbgcjsxy.com/statics/skin/favicon.ico">
<link href="//res.hbgcjsxy.com/statics/skin/assets/css/normalize.css" rel="stylesheet"/>
<link href="//res.hbgcjsxy.com/statics/skin/assets/plugins/font_awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
<link href="//res.hbgcjsxy.com/statics/skin/assets/plugins/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="//res.hbgcjsxy.com/statics/skin/assets/plugins/bootstrap/3.3.7/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="//res.hbgcjsxy.com/statics/skin/assets/css/bootstrap_/ie10-viewport-bug-workaround.css" rel="stylesheet">
<link href="//res.hbgcjsxy.com/statics/skin/assets/css/bootstrap_/non-responsive.css" rel="stylesheet">
<script src="//res.hbgcjsxy.com/statics/skin/assets/css/bootstrap_/ie-emulation-modes-warning.js"></script>
<link href="//res.hbgcjsxy.com/statics/skin/assets/css/common.css" rel="stylesheet">
<link rel="stylesheet" href="//res.hbgcjsxy.com/statics/skin/hbgc/2020/css/public.css" >
<link rel="stylesheet" href="//res.hbgcjsxy.com/statics/skin/hbgc/2020/css/main.css" >
<link rel="stylesheet" href="//res.hbgcjsxy.com/statics/skin/hbgc/2020/css/index.css" >
<link rel="stylesheet" href="//res.hbgcjsxy.com/statics/skin/hbgc/2020/css/list.css" >
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid topbg">
		<div class="container">
			<div class="row">
				<div class="col-xs-6">
					<img src="images/logo_05.png" class="img-responsive pt-lg"
						width="470" height="103" alt="">
				</div>
				<c:if test="${empty USER_SESSION.id }">
					<div class="col-xs-6 mt-lg2x">
						<div class=" text-right mb-lg fw-800">
							<a href="${pageContext.request.contextPath }/toLogin"> <span>登录</span></a> 
								<span class="fa fa-ellipsis-v padding-left-5 padding-right-5 color-grey"></span>
							<a href="${pageContext.request.contextPath }/toRegister"> <span>注册</span> </a> 
								<span class="fa fa-ellipsis-v padding-left-5 padding-right-5 color-grey"></span>
							<a href="${pageContext.request.contextPath }/toManagerLogin">管理员登录</a>
						</div>
						<div class="pull-right">
							<div class="">
								<form class="form-inline"
									action="http://api.hbgcjsxy.com/search.php" method="get"
									target="_blank">
									<input type="text" class="form-control" name="q" id="q"
										placeholder="请输入关键词">
									<button class="btn btn-primary" type="submit">
										<span class="glyphicon glyphicon-search"></span>
									</button>
								</form>
							</div>
						</div>
					</div>
				</c:if>
				<c:if test="${!empty USER_SESSION.id }">
					<div class="col-xs-6 mt-lg2x">
						<div class=" text-right mb-lg fw-800">
							<span>当前用户：${USER_SESSION.usercode }</span> 
							<span class="fa fa-ellipsis-v padding-left-5 padding-right-5 color-grey"></span>
							<a href="${pageContext.request.contextPath }/logout">退出登录</a> 
							<span class="fa fa-ellipsis-v padding-left-5 padding-right-5 color-grey"></span>
							<a href="${pageContext.request.contextPath }/findUserById_center?id=${USER_SESSION.id}"> <span>个人中心</span>
							</a>
						</div>
						<div class="pull-right">
							<div class="">
								<form class="form-inline"
									action="http://api.hbgcjsxy.com/search.php" method="get"
									target="_blank">
									<input type="text" class="form-control" name="q" id="q"
										placeholder="请输入关键词">
									<button class="btn btn-primary" type="submit">
										<span class="glyphicon glyphicon-search"></span>
									</button>
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
						<li class="hg-menu-li active"><a
							href="http://www.hbgcjsxy.com" class="dropdown-toggle">网站首页</a></li>
						<li class="hg-menu-li">
							<!--二级菜单--> <a class="dropdown-toggle" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">
								学校概况<span class="caret"></span>
						</a>
							<ul class="dropdown-menu multi-level" role="menu"
								aria-labelledby="dropdownMenu">
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/xxgk/xxjj/">学校简介</a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/xxgk/xrld/">现任领导</a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/xxgk/bxln/">办学理念</a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/xxgk/csjg/">常设机构</a>
								</li>

								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/xxgk/xsjg/">其他机构</a>
								</li>
							</ul>
						</li>

						<li class="hg-menu-li">
							<!--二级菜单--> <a class="dropdown-toggle" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">
								党群思政<span class="caret"></span>
						</a>

							<ul class="dropdown-menu multi-level" role="menu"
								aria-labelledby="dropdownMenu">
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/xdw/" target="_blank">党建工作</a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/xdw/xcgz" target="_blank">宣传思想</a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/xdw/xsjw" target="_blank">学思践悟</a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://jiaogong.hbgcjsxy.com" target="_blank">教工之家</a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com###" target="_blank">团的建设</a>
								</li>
							</ul>
						</li>

						<li class="hg-menu-li">
							<!--二级菜单--> <a class="dropdown-toggle" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">
								教学单位<span class="caret"></span>
						</a>

							<ul class="dropdown-menu multi-level" role="menu"
								aria-labelledby="dropdownMenu">
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://jzxy.hbgcjsxy.com" target="_blank">建筑与设计学院</a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://tgxy.hbgcjsxy.com" target="_blank">土木工程学院</a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://rjxy.hbgcjsxy.com" target="_blank">软件学院</a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://szxy.hbgcjsxy.com/" target="_blank">人工智能与大数据学院</a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://wtxy.hbgcjsxy.com/" target="_blank">网络与通信学院</a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://sxy.hbgcjsxy.com" target="_blank">商学院</a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://ycxy.hbgcjsxy.com" target="_blank">艺术与传媒学院</a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://jxjyxy.hbgcjsxy.com/" target="_blank">继续教育学院</a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/szjxb/bmgk/" target="_blank">思政教学部</a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/tyjxb/bmgk/" target="_blank">体育教学部</a>
								</li>
							</ul>
						</li>

						<li class="hg-menu-li">
							<!--二级菜单--> <a class="dropdown-toggle" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">
								人才培养<span class="caret"></span>
						</a>

							<ul class="dropdown-menu multi-level" role="menu"
								aria-labelledby="dropdownMenu">

								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/rcpy/szdw/"> 师资队伍 </a>

								</li>

								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/rcpy/jsfz/"> 教师发展 </a>

								</li>

								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/rcpy/hzbx/"> 合作办学 </a>

								</li>

								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com#" target="_blank"> 精品课程 </a>

								</li>

								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://guofang.hbgcjsxy.com" target="_blank"> 国防教育 </a>

								</li>
							</ul>

						</li>

						<li class="hg-menu-li">
							<!--二级菜单--> <a class="dropdown-toggle" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">
								科学研究<span class="caret"></span>
						</a>

							<ul class="dropdown-menu multi-level" role="menu"
								aria-labelledby="dropdownMenu">

								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/kxyj/kypt/"> 科研平台 </a>

								</li>

								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/kxyj/zrkx/"> 自然科学 </a>

								</li>

								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/kxyj/rwsk/"> 人文社科 </a>

								</li>

								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/kxyj/xb/"> 学报 </a>

								</li>
							</ul>

						</li>

						<li class="hg-menu-li">
							<!--二级菜单--> <a class="dropdown-toggle" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">
								产教融合<span class="caret"></span>
						</a>

							<ul class="dropdown-menu multi-level" role="menu"
								aria-labelledby="dropdownMenu">

								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/cjrh/xwsx/"> 校外实训 </a>

								</li>

								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/cjrh/ddpy/"> 订单培养 </a>

								</li>

								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/cjrh/cxhz/"> 产学合作 </a>

								</li>

								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/cjrh/kckf/"> 课程开发 </a>

								</li>

								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/cjrh/xhxh/"> 学会协会 </a>

								</li>
							</ul>

						</li>

						<li class="hg-menu-li">
							<!--二级菜单--> <a class="dropdown-toggle" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">
								招生就业<span class="caret"></span>
						</a>

							<ul class="dropdown-menu multi-level" role="menu"
								aria-labelledby="dropdownMenu">

								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://zhaosheng.hbgcjsxy.com" target="_blank"> 招生服务
								</a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://jiuye.hbgcjsxy.com" target="_blank"> 就业服务 </a>
								</li>
							</ul>
						</li>
						<li class="hg-menu-li">
							<!--二级菜单--> <a class="dropdown-toggle"
							href="http://www.hbgcjsxy.com/xxzt/rczp/" target="_blank">
								人才引进 </a>
						</li>
						<li class="hg-menu-li">
							<!--二级菜单--> <a class="dropdown-toggle" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">
								公共服务<span class="caret"></span>
						</a>

							<ul class="dropdown-menu multi-level" role="menu"
								aria-labelledby="dropdownMenu">

								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/ggfw/ldxx/"> 领导信箱 </a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/xsgzb/zytz" target="_blank">
										学生工作 </a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/tsg/" target="_blank"> 图书馆 </a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/xkxb/" target="_blank"> 校报校刊
								</a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://office.hbgcjsxy.com/" target="_blank"> 内网办公 </a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/hqgzb/tzgg/" target="_blank">
										后勤服务 </a>
								</li>
								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/aqgzb/tzgg/" target="_blank">
										安全工作 </a>

								</li>

								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/xyh/bmjj/" target="_blank">
										校友事务 </a>

								</li>

								<li class="dropdown-menu-li">
									<!--三级菜单--> <a class="dropdown-toggle"
									href="http://www.hbgcjsxy.com/ggfw/lxwm/"> 联系我们 </a>
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
				<div class="col-xs-3">
					<div class="">
						<h3 class="hg-menu-left-hd">
							个人中心
						</h3>
						<c:if test="${!empty USER_SESSION }">
						<ul class="hg-menu-left-list">
							<li class="active"><a href="${pageContext.request.contextPath }/findUserById_center?id=${USER_SESSION.id }"> 
								<span class="fa fa-angle-double-right pull-right" aria-hidden="true"></span>
								<span class="fa fa-plus-square" aria-hidden="true"></span> 查看个人信息
								<span class="clearfix"></span>
							</a></li>
							<li class=""><a href="${pageContext.request.contextPath }/findUserById?id=${USER_SESSION.id}">
								<span class="fa fa-angle-double-right pull-right" aria-hidden="true"></span> 
								<span class="fa fa-plus-square" aria-hidden="true"></span> 编辑个人信息 
								<span class="clearfix"></span>
							</a></li>
							<li class=""><a href="${pageContext.request.contextPath }/findResumeByUser?id=${USER_SESSION.id}">
								<span class="fa fa-angle-double-right pull-right" aria-hidden="true"></span> 
								<span class="fa fa-plus-square" aria-hidden="true"></span> 查看简历 
								<span class="clearfix"></span>
							</a></li>
							<li class=""><a href="${pageContext.request.contextPath }/findUserById_pwd?id=${USER_SESSION.id}">
								<span class="fa fa-angle-double-right pull-right" aria-hidden="true"></span> 
								<span class="fa fa-plus-square" aria-hidden="true"></span> 修改密码 
								<span class="clearfix"></span>
							</a></li>

						</ul>
						</c:if>
						<c:if test="${empty USER_SESSION }">
						<ul class="hg-menu-left-list">
							<li class="active"><a href="${pageContext.request.contextPath }/error"> 
								<span class="fa fa-angle-double-right pull-right" aria-hidden="true"></span>
								<span class="fa fa-plus-square" aria-hidden="true"></span> 查看个人信息
								<span class="clearfix"></span>
							</a></li>
							<li class=""><a href="${pageContext.request.contextPath }/error">
								<span class="fa fa-angle-double-right pull-right" aria-hidden="true"></span> 
								<span class="fa fa-plus-square" aria-hidden="true"></span> 编辑个人信息 
								<span class="clearfix"></span>
							</a></li>
							<li class=""><a href="${pageContext.request.contextPath }/error">
								<span class="fa fa-angle-double-right pull-right" aria-hidden="true"></span> 
								<span class="fa fa-plus-square" aria-hidden="true"></span> 查看简历 
								<span class="clearfix"></span>
							</a></li>
							<li class=""><a href="${pageContext.request.contextPath }/error">
								<span class="fa fa-angle-double-right pull-right" aria-hidden="true"></span> 
								<span class="fa fa-plus-square" aria-hidden="true"></span> 修改密码 
								<span class="clearfix"></span>
							</a></li>
						</ul>
						</c:if>
					</div>
					<div class="logo-bg"></div>
				</div>

				<div class="col-xs-9">
					<div class="col-xs-12 border-bottom-e4">
						<div class="col-xs-3 h50 padding-0 margin-top margin-bottom-5">
							<h3 class="ml-sm font-00bff3">个人信息查看</h3>
						</div>
						<div
							class="col-xs-9 text-right padding-0 margin-top margin-bottom-5">
							<ol class="breadcrumb bre-crumb">
								<span class="fa fa-home fw-800"> 当前位置：</span>
								<a href="http://www.hbgcjsxy.com"> 学校首页</a> &gt;
								<a href="http://www.hbgcjsxy.com/xxzt/">学校专题</a> &gt;
								<a href="${pageContext.request.contextPath}/index">人才招聘</a> &gt; 个人中心
							</ol>
						</div>
						<span class="clearfix"></span>
					</div>
					<div class="col-xs-12 titext mb-xl">
					<c:if test="${!empty USER_SESSION }">
						<div class="content-body" style="min-height: 884px;">
							<div class="container-fluid">
							<input type="hidden" name="id" value="${user.id }">
								<div class="d-flex align-items-center mb-4 flex-wrap">
									<h4 class="fs-20 font-w600  me-auto" _msthash="1053338" _msttexthash="10949822"></h4><br>
									<a href="${pageContext.request.contextPath }/findUserById?id=${user.id}" class="btn btn-primary me-3" style="float:right;">
										<i class="fa fa-pencil" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;编辑
									</a>
								</div>
								<div class="row" style="padding-left:50px;">
									<div class="col-xl-12">
										<div class="card">
											<div class="card-header border-0 flex-wrap align-items-start">
												<div class="col-md-8">
													<div class="user d-sm-flex d-block pe-md-5 pe-0">
														
														<div class="ms-sm-3 ms-0 me-md-5 md-0" style="height:170px;">
															<div style="float:left;width:130px;height:170px;margin-right:30px;">
																<img src="${user.headerUrl }" id="headerUrl" name="headerUrl" style="width:100px;height:100px;">
																<button data-toggle="modal" data-target="#myModal" class="btn btn-primary me-3" style="width:100px;margin-top:10px;">上传图片</button>
															</div>
															<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
																<div class="modal-dialog">
																<form action="${pageContext.request.contextPath }/updateHeaderUrl?id=${user.id}" method="post" enctype="multipart/form-data">
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
																				&times;
																			</button>
																			<h4 class="modal-title" id="myModalLabel">
																				上传照片
																			</h4>
																		</div>
																		<div class="modal-body">
																			<div class="control-group">
																                 <label class="control-label" for="headerUrl">上传照片</label>
																                 <div class="controls">
																                 <input type="hidden" name="id" value="${user.id }">
																                 <input class="input-file uniform_on" id="head-image" name="headerImage" type="file">
																                 </div>
																             </div>
																		</div>
																		<div class="modal-footer">
																			<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
																			<button type="submit" class="btn btn-primary">上传</button>
																		</div>
																	</div><!-- /.modal-content -->
																</form>
																</div><!-- /.modal -->
															</div>
															<h4 class="mb-1 font-w600">
																<i class="fa fa-user-circle" aria-hidden="true" style="margin-top:30px;"></i>&nbsp;&nbsp;${user.username }</h4>
															<div class="listline-wrapper mb-2">
																<span class="item"><i class="fa fa-envelope-o" aria-hidden="true"></i> &nbsp;&nbsp;${user.email }</span>
																<br><span class="item"><i class="fa fa-phone" aria-hidden="true"></i> &nbsp;&nbsp;${user.tel }</span>
															</div><br>
														</div>
													</div>
												</div>
											</div>
											<div class="card-body pt-0">
												<div class="row" style="padding-left:30px;">
													<div class="col-xl-6 col-md-6">
														<p class="font-w600 mb-2 d-flex">
															<span class="custom-label-2">账号 : </span>
															<span class="font-w400">${user.usercode }</span>
														</p>
														<p class="font-w600 mb-2 d-flex">
															<span class="custom-label-2">姓名 : </span>
															<span class="font-w400">${user.username }</span>
														</p>
														<p class="font-w600 mb-2 d-flex">
															<span class="custom-label-2">性别 : </span>
															<span class="font-w400">${user.sex }</span>
														</p>
														<p class="font-w600 mb-2 d-flex">
															<span class="custom-label-2">年龄 : </span>
															<span class="font-w400">${user.age }</span>
														</p>
														<p class="font-w600 mb-2 d-flex">
															<span class="custom-label-2">手机号 : </span>
															<span class="font-w400">${user.tel }</span>
														</p>
														<p class="font-w600 mb-2 d-flex">
															<span class="custom-label-2">邮箱 : </span>
															<span class="font-w400">${user.email }</span>
														</p>	
														<p class="font-w600 mb-2 d-flex">
															<span class="custom-label-2">工作经验 : </span>
															<span class="font-w400">${user.experience }</span>
														</p>
														<p class="font-w600 mb-2 d-flex">
															<span class="custom-label-2">居住地 : </span>
															<span class="font-w400">${user.address }</span>
														</p>
													</div>
													<div class="col-xl-6 col-md-6">
														<p class="font-w600 mb-2 d-flex">
															<span class="custom-label-2">民族 : </span>
															<span class="font-w400">${user.nation }</span>
														</p>
														<p class="font-w600 mb-2 d-flex">
															<span class="custom-label-2">政治面貌 : </span>
															<span class="font-w400">${user.political }</span>
														</p>
														<p class="font-w600 mb-2 d-flex">
															<span class="custom-label-2">学历 : </span>
															<span class="font-w400">${user.degree }</span>
														</p>
														<p class="font-w600 mb-2 d-flex">
															<span class="custom-label-2">专业 : </span>
															<span class="font-w400">${user.major }</span>
														</p>
														<p class="font-w600 mb-2 d-flex">
															<span class="custom-label-2">毕业院校 : </span>
															<span class="font-w400">${user.school }</span>
														</p>
														<p class="font-w600 mb-2 d-flex">
															<span class="custom-label-2">是否待业 : </span>
															<span class="font-w400">${user.unemployed }</span>
														</p>	
														
													</div>
													
												</div>
											</div>
										</div>
									</div>
								</div>
				            </div>
				        </div>
				        </c:if>
				        <c:if test="${empty USER_SESSION }">
				        	<div class="content-body" style="min-height: 884px;">
				        		<br>
				        		<p>您还没有登录哦，先去<a href="${pageContext.request.contextPath }/toLogin">登录</a>一下吧~~</p>
				        	</div>
				        	<jsp:forward page="/WEB-INF/jsp/error.jsp"></jsp:forward>
				        </c:if>

					</div>

				</div>
			</div>
		</div>
		
	</div>

<script type="text/javascript" src="js/jquery.form.min.js"></script>
</body>
</html>