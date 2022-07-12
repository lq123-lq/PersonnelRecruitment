<%@ page language="java" import="java.util.*,java.io.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>人才招聘 - 填写简历</title>
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
<link href="//res.hbgcjsxy.com/statics/skin/assets/css/common.css" rel="stylesheet">

<link rel="stylesheet" href="//res.hbgcjsxy.com/statics/skin/hbgc/2020/css/public.css" >
<link rel="stylesheet" href="//res.hbgcjsxy.com/statics/skin/hbgc/2020/css/main.css" >
<link rel="stylesheet" href="//res.hbgcjsxy.com/statics/skin/hbgc/2020/css/index.css" >
<link rel="stylesheet" href="//res.hbgcjsxy.com/statics/skin/hbgc/2020/css/list.css" >
 
<link href="static/css/nice-select.css" rel="stylesheet">
<link href="static/css/jquery.dataTables.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<link href="static/bootstrap-fileinput/css/fileinput.min.css" rel="stylesheet">
<script src="static/bootstrap-fileinput/js/fileinput.min.js"></script>
<script src="static/bootstrap-fileinput/js/locales/zh.js"></script>
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
		
<c:if test="${!empty USER_SESSION }">
<div class="content-body" style="width:1000px;">
<div class="container-fluid">
	<div class="d-flex align-items-center mb-4">
		<h3 class="font-w600 mb-0 me-auto">河北工程技术学院求职简历</h3>
	</div>
	<div class="row">
		<div class="col-xl-12">
			<div class="d-flex align-items-center mb-4">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<i class="fas fa-dot-circle me-2"></i>
			<h4 class="font-w600 mb-0 me-auto">个人信息</h4>
		</div>
		<form action="${pageContext.request.contextPath }/addResume?jobId=${job.id}&userId=${USER_SESSION.id}" method="post">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col-xl-6  col-md-6 mb-4">
						<%-- <input type="hidden" name="userId" value="${user.id }"> --%>
						  <label class="form-label font-w600">应聘岗位 <span class="text-danger scale5 ms-2">*</span></label>
							<input type="text" class="form-control solid" placeholder="请输入要应聘的岗位" name="jobName" value="${job.jobName }">
							
						</div>
						<div class="col-xl-6  col-md-6 mb-4">
						  <label class="form-label font-w600">所属院校或部门 <span class="text-danger scale5 ms-2">*</span></label>
							<select class="form-select form-control solid" name="collegeName" value="${job.collegeName }">
							  <option selected>${job.collegeName }</option>
							  <option value="软件学院">软件学院</option>
							  <option value="商学院">商学院</option>
							  <option value="建筑与设计学院">建筑与设计学院</option>
							  <option value="会计学院">会计学院</option>
							  <option value="土木学院">土木学院</option>
							  <option value="人工智能与大数据学院">人工智能与大数据学院</option>
							  <option value="网络与通信学院">网络与通信学院</option>
							  <option value="艺术与传媒学院">艺术与传媒学院</option>
							  <option value="继续教育学院">继续教育学院</option>
							  <option value="体育工作部">体育工作部</option>
							  <option value="思想政治教育教学部">思想政治教育教学部</option>
							  <option value="董事长办公室">董事长办公室</option>
							  <option value="党政办公室">党政办公室</option>
							  <option value="党建工作部">党建工作部</option>
							  <option value="教学科研部">教学科研部</option>
							  <option value="学生工作部">学生工作部</option>
							  <option value="后勤工作部">后勤工作部</option>
							  <option value="财务部">财务部</option>
							  <option value="人事处">人事处</option>
							  <option value="安全工作部">安全工作部</option>
							  <option value="对外工作部">对外工作部</option>
							</select>
						</div>
						<div class="col-xl-6  col-md-6 mb-4">
						  <label class="form-label font-w600">是否已婚 <span class="text-danger scale5 ms-2">*</span></label>
							<select class="form-select form-control solid" name="married">
							  <option selected>Choose...</option>
							  <option value="是">是</option>
							  <option value="否">否</option>
							</select>
						</div>
						<div class="col-xl-6  col-md-6 mb-4">
						  <label class="form-label font-w600">是否已育 <span class="text-danger scale5 ms-2">*</span></label>
							<select class="form-select form-control solid" name="bred">
							  <option selected>Choose...</option>
							  <option value="是">是</option>
							  <option value="否">否</option>
							</select>
						</div>
						
						<div class="col-xl-12 mb-4">
							<label class="form-label font-w600">教育背景 <span class="text-danger scale5 ms-2">*</span></label>
							<textarea class="form-control solid" aria-label="With textarea" name="eduBackground"></textarea>
						</div>
						<div class="col-xl-12 mb-4">
							<label class="form-label font-w600">工作/实习经历 <span class="text-danger scale5 ms-2">*</span></label>
							<textarea class="form-control solid" aria-label="With textarea" name="experiences"></textarea>
						</div>
						<div class="col-xl-12 mb-4">
							<label class="form-label font-w600">职业资格</label>
							<textarea class="form-control solid" aria-label="With textarea" name="professionQualify"></textarea>
						</div>
						<div class="col-xl-12 mb-4">
							<label class="form-label font-w600">所获职称</label>
							<textarea class="form-control solid" aria-label="With textarea" name="jobTitle"></textarea>
						</div>
						<div class="col-xl-12 mb-4">
							<label class="form-label font-w600">科研情况</label>
							<textarea class="form-control solid" aria-label="With textarea" name="scientificResearch"></textarea>
						</div>
						<div class="col-xl-12 mb-4">
							<label class="form-label font-w600">获奖情况</label>
							<textarea class="form-control solid" aria-label="With textarea" name="awards"></textarea>
						</div>
						<div class="col-xl-12 mb-4">
							<label class="form-label font-w600">技能证书</label>
							<textarea class="form-control solid" aria-label="With textarea" name="skillCertificate"></textarea>
						</div>
						
					</div>
				</div>
				<div class="card-footer text-end">
					<div>
						<input type="reset" class="btn btn-primary" value="重置">
						<input type="submit" class="btn btn-secondary" value="保存">
					</div>
				</div>
			</div>
			</form>
			
		</div>
	</div>
         </div>
     </div>
 </c:if>    
 <c:if test="${empty USER_SESSION }">
 <% response.sendRedirect("error"); %>
 </c:if>


</body>
</html>