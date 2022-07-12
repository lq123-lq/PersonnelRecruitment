<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>后台 - 查看简历</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="keywords" content="">
	<link rel="icon" href="//res.hbgcjsxy.com/statics/skin/favicon.ico">
	<link href="static/css/nice-select.css" rel="stylesheet">
	<link href="static/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="static/css/style.css" rel="stylesheet">
</head>
<body>
<div id="main-wrapper">
    <div class="nav-header">
        <a href="" class="brand-logo">
			<img class="logo-abbr" alt="河工人事招聘管理系统" src="images/xiaohui.png" >
			<p class="brand-title" style="font-size:15px;margin-top:20px;">人事招聘管理系统</p>
    	</a>
    	<div class="nav-control">
	        <div class="hamburger">
	            <span class="line"></span><span class="line"></span><span class="line"></span>
	        </div>
    	</div>
	</div>

      <div class="header">
          <div class="header-content">
              <nav class="navbar navbar-expand">
                  <div class="collapse navbar-collapse justify-content-between">
                    <div class="header-left">
							<div class="dashboard_bar">
                                <!-- 用户管理 -->
                            </div>
                        </div>
                    <ul class="navbar-nav header-right">
					<li class="nav-item dropdown notification_dropdown">
                       <a class="nav-link" href="javascript:void(0);" role="button" data-bs-toggle="dropdown">
                           <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewbox="0 0 24 24">
							  <g data-name="Layer 2" transform="translate(-2 -2)">
								<path id="Path_20" data-name="Path 20" d="M22.571,15.8V13.066a8.5,8.5,0,0,0-7.714-8.455V2.857a.857.857,0,0,0-1.714,0V4.611a8.5,8.5,0,0,0-7.714,8.455V15.8A4.293,
								4.293,0,0,0,2,20a2.574,2.574,0,0,0,2.571,2.571H9.8a4.286,4.286,0,0,0,8.4,0h5.23A2.574,2.574,0,0,0,26,20,4.293,4.293,0,0,0,22.571,15.8ZM7.143,13.066a6.789,6.789,
								0,0,1,6.78-6.78h.154a6.789,6.789,0,0,1,6.78,6.78v2.649H7.143ZM14,24.286a2.567,2.567,0,0,1-2.413-1.714h4.827A2.567,2.567,0,0,1,14,24.286Zm9.429-3.429H4.571A.858.858,
								0,0,1,3.714,20a2.574,2.574,0,0,1,2.571-2.571H21.714A2.574,2.574,0,0,1,24.286,20a.858.858,0,0,1-.857.857Z"></path>
							  </g>
						   </svg>
                        </a>
                    </li>
					
					<c:if test="${!empty COLLEGEUSER_SESSION }">
					<li class="nav-item dropdown header-profile">
                         <a class="nav-link" href="javascript:void(0);" role="button" data-bs-toggle="dropdown" style="margin-top:15px;">
                             当前用户：${COLLEGEUSER_SESSION.staffName }
                         </a>
                         <div class="dropdown-menu dropdown-menu-end">
                             <a href="${pageContext.request.contextPath }/findCollegeUserById?id=${COLLEGEUSER_SESSION.id}" class="dropdown-item ai-icon">
                                 <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="18" height="18" viewbox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                                 <span class="ms-2">修改个人信息 </span>
                             </a>
                             <a href="${pageContext.request.contextPath }/findCollegeUserById_pwd?id=${COLLEGEUSER_SESSION.id}" class="dropdown-item ai-icon">
                                 <i class="fa fa-key text-primary" aria-hidden="true"></i>
                                 <span class="ms-2">修改密码 </span>
                             </a>
                             <a href="${pageContext.request.contextPath }/manager_logout" class="dropdown-item ai-icon">
                                 <svg xmlns="http://www.w3.org/2000/svg" class="text-danger" width="18" height="18" viewbox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path><polyline points="16 17 21 12 16 7"></polyline><line x1="21" y1="12" x2="9" y2="12"></line></svg>
                                 <span class="ms-2">退出登录 </span>
                             </a>
                         </div>
                     </li>
                          </c:if>
                          <c:if test="${empty COLLEGEUSER_SESSION }">
                          	<li class="nav-item dropdown header-profile">
                              <a class="nav-link" href="${pageContext.request.contextPath }/toManagerLogin" style="margin-top:20px;">
                                  去登录
                              </a>
                              </li>
                          </c:if>
                      </ul>
                  </div>
			</nav>
		</div>
	</div>

        <c:if test="${COLLEGEUSER_SESSION.role==2 }">
        <div class="dlabnav">
            <div class="dlabnav-scroll">
				<ul class="metismenu" id="menu">
                    <li><a class="has-arrow " href="javascript:void()" aria-expanded="true">
							<i class="flaticon-025-dashboard"></i>
							<span class="nav-text">用户信息管理</span>
						</a>
                        <ul aria-expanded="false">
							<li><a href="${pageContext.request.contextPath }/findAllUser">用户列表</a></li>
							<li><a href="${pageContext.request.contextPath }/findAllResume_jl">应聘人员列表（简历通过）</a></li>
							<li  class="mm-active"><a href="${pageContext.request.contextPath }/findAllResume">应聘人员列表（全部）</a></li>
						</ul>
                    </li>
					<li><a class="has-arrow " href="javascript:void()" aria-expanded="false">
							<i class="flaticon-093-waving"></i>
							<span class="nav-text">招聘信息管理</span>
						</a>
                        <ul aria-expanded="false">
                            <li><a href="${pageContext.request.contextPath }/findAllJob">招聘信息列表</a></li>
                            <li><a href="${pageContext.request.contextPath }/findAllRequire">用人需求列表</a></li>
                            <li><a href="${pageContext.request.contextPath }/toAddJob">发布招聘信息</a></li>
                        </ul>
                    </li> 
                    <li><a class="has-arrow " href="javascript:void()" aria-expanded="false">
							<i class="flaticon-043-menu"></i>
							<span class="nav-text">公告管理</span>
						</a>
                        <ul aria-expanded="false">
                            <li><a href="${pageContext.request.contextPath }/findAllNotice">公告列表</a></li>
                            <li><a href="${pageContext.request.contextPath }/toAddNotice">发布公告</a></li>
                        </ul>
                    </li>     
                     <li><a class="has-arrow " href="javascript:void()" aria-expanded="false">
							<i class="fa fa-id-card" aria-hidden="true"></i>
							<span class="nav-text">个人信息管理</span>
						</a>
                        <ul aria-expanded="false">
                            <li><a href="${pageContext.request.contextPath }/findCollegeUserById_v?id=${COLLEGEUSER_SESSION.id}">查看个人信息</a></li>
                            <li><a href="${pageContext.request.contextPath }/findCollegeUserById?id=${COLLEGEUSER_SESSION.id}">修改个人信息</a></li>
                            <li><a href="${pageContext.request.contextPath }/findCollegeUserById_pwd?id=${COLLEGEUSER_SESSION.id}">修改密码</a></li>
                        </ul>
                    </li>           
                </ul>				
			</div>
        </div>
        </c:if>
        <c:if test="${COLLEGEUSER_SESSION.role==3 }">
        <div class="dlabnav">
            <div class="dlabnav-scroll">
				<ul class="metismenu" id="menu">
                    <li><a class="has-arrow " href="javascript:void()" aria-expanded="true">
							<i class="flaticon-025-dashboard"></i>
							<span class="nav-text">用户信息管理</span>
						</a>
                        <ul aria-expanded="false">
							<li><a href="${pageContext.request.contextPath }/findAllUser">用户列表</a></li>
							<li><a href="${pageContext.request.contextPath }/findAllResume_cs">应聘人员列表（初审通过）</a></li>
							<li class="mm-active"><a href="${pageContext.request.contextPath }/findAllResume">应聘人员列表（全部）</a></li>	
						</ul>
                    </li>
                    <li><a class="has-arrow " href="javascript:void()" aria-expanded="false">
							<i class="flaticon-013-checkmark"></i>
							<span class="nav-text">招聘需求管理</span>
						</a>
                        <ul aria-expanded="false">
                            <li><a href="${pageContext.request.contextPath }/findAllRequire">用人需求列表</a></li>
                            <li><a href="${pageContext.request.contextPath }/toAddRequire">添加用人需求</a></li>
                        </ul>
                    </li>
					 <li><a class="has-arrow " href="javascript:void()" aria-expanded="false">
							<i class="flaticon-043-menu"></i>
							<span class="nav-text">公告管理</span>
						</a>
                        <ul aria-expanded="false">
                            <li><a href="${pageContext.request.contextPath }/findAllNotice">公告列表</a></li>
                        </ul>
                    </li>    
                    <li><a class="has-arrow " href="javascript:void()" aria-expanded="false">
							<i class="fa fa-id-card" aria-hidden="true"></i>
							<span class="nav-text">个人信息管理</span>
						</a>
                        <ul aria-expanded="false">
                            <li><a href="${pageContext.request.contextPath }/findCollegeUserById_v?id=${COLLEGEUSER_SESSION.id}">查看个人信息</a></li>
                            <li><a href="${pageContext.request.contextPath }/findCollegeUserById?id=${COLLEGEUSER_SESSION.id}">修改个人信息</a></li>
                            <li><a href="${pageContext.request.contextPath }/findCollegeUserById_pwd?id=${COLLEGEUSER_SESSION.id}">修改密码</a></li>
                        </ul>
                    </li>                             
                </ul>				
			</div>
        </div>
        </c:if>
		
		<c:if test="${!empty COLLEGEUSER_SESSION }">
        <div class="content-body">
            <!-- row -->
			<div class="container-fluid">
				<div class="d-flex align-items-center mb-4 flex-wrap">
					<h4 class="fs-20 font-w600 me-auto">查看简历</h4>
					<a href="javascript:history.back(-1)" class="btn btn-primary me-3 btn-sm">
						返回
					</a>
				</div>
				
				<c:forEach items="${resumeList }" var="list">
				<div class="row" style="width:900px;">
					<div class="col-xl-12">
						<div class="card">
							<div class="card-header border-0 flex-wrap align-items-start">
								<div class="col-md-8">
									<br><div class="user d-sm-flex d-block pe-md-5 pe-0">
										<img src="${list.headerUrl }" name="headerUrl">
										<div class="ms-sm-3 ms-0 me-md-5 md-0" style="padding-left:30px;">
										<input type="hidden" name="id" value="${list.id }">
											<h5 class="mb-1 font-w600">${list.username }</h5>
											<div class="listline-wrapper mb-2">
												<span class="item"><i class="far fa-id-badge"></i><font>${list.jobName }</font></span>
												<span class="item"><i class="far fa-envelope"></i><font>${list.email }</font></span>
												<span class="item"><i class="fa fa-phone" aria-hidden="true"></i><font>${list.tel }</font></span>
												<span class="item"><i class="fas fa-map-marker-alt"></i><font>${list.address }</font></span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="card-body pt-0" style="font-size:small;">
								<br><h3 class="fs-20 mb-3">基本信息</h3><br>
							<div class="row mb-3 ms-4">
								<div class="col-xl-6 col-md-6">
									<p class="font-w600 mb-2 d-flex"><span class="custom-label-2">应聘岗位：</span><span class="font-w400">${list.jobName }</span></p>
									<p class="font-w600 mb-2 d-flex"><span class="custom-label-2">年龄 ：</span><span class="font-w400">${list.age }</span></p>
									<p class="font-w600 mb-2 d-flex"><span class="custom-label-2">政治面貌 ：</span><span class="font-w400">${list.political }</span></p>
									<p class="font-w600 mb-2 d-flex"><span class="custom-label-2">学历：</span><span class="font-w400">${list.degree }</span></p>
									<p class="font-w600 mb-2 d-flex"><span class="custom-label-2">工作经验 ：</span><span class="font-w400">${list.experience }</span></p>
									<p class="font-w600 mb-2 d-flex"><span class="custom-label-2">是否已婚：</span><span class="font-w400">${list.married }</span></p>
									<p class="font-w600 mb-2 d-flex"><span class="custom-label-2">是否已育：</span> <span class="font-w400">${list.bred }</span></p>
								</div>
								<div class="col-xl-6 col-md-6">
									<p class="font-w600 mb-2 d-flex"><span class="custom-label-2">所属院系：</span><span class="font-w400">${list.collegeName }</span></p>
									<p class="font-w600 mb-2 d-flex"><span class="custom-label-2">性别 ：</span><span class="font-w400">${list.sex }</span></p>
									<p class="font-w600 mb-2 d-flex"><span class="custom-label-2">民族 ：</span><span class="font-w400">${list.nation }</span></p>
									<p class="font-w600 mb-2 d-flex"><span class="custom-label-2">专业：</span><span class="font-w400">${list.major }</span></p>
									<p class="font-w600 mb-2 d-flex"><span class="custom-label-2">毕业院校 ：</span><span class="font-w400">${list.school }</span></p>
									<p class="font-w600 mb-2 d-flex"><span class="custom-label-2">是否待业：</span><span class="font-w400">${list.unemployed }</span></p>
								</div>
							</div>
							<br><hr><br>
							<h3 class="fs-20 mb-3">其他信息</h3>
							<div class="row mb-3">
								<div class="col-xl-12">
									<div class="ms-4">
										<p>
											<i class="fas fa-dot-circle me-2"></i>
											<span class="font-w400">工作 / 实习经历 ：${list.experiences }</span><br>
											<i class="fas fa-dot-circle me-2"></i>
											<span class="font-w400">教育背景：${list.eduBackground }</span><br>
											<i class="fas fa-dot-circle me-2"></i>
											<span class="font-w400">职业资格：${list.professionQualify }</span><br>
											<i class="fas fa-dot-circle me-2"></i>
											<span class="font-w400">所获职称：${list.jobTitle }</span><br>
											<i class="fas fa-dot-circle me-2"></i>
											<span class="font-w400">技能证书：${list.skillCertificate }</span><br>
											<i class="fas fa-dot-circle me-2"></i>
											<span class="font-w400">科研情况：${list.scientificResearch }</span><br>
											<i class="fas fa-dot-circle me-2"></i>
											<span class="font-w400">获奖情况：${list.awards }</span>
										</p>
									</div>
								</div>
								
							</div>	
							</div>
							<%-- <c:if test="${COLLEGEUSER_SESSION.role==3 }"> --%>
							<div class="card-footer text-end">
								<div class="mb-md-2 mb-3">
									<a href="${pageContext.request.contextPath }/modifyResumeStatus_jl1?id=${list.id}" class="btn bgl-white text-success border-success btn-rounded">
										<i class="fas fa-check text-warn"></i><font>    简历通过</font>
									</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="${pageContext.request.contextPath }/modifyResumeStatus_jl0?id=${list.id}" class="btn bgl-white text-danger border-danger btn-rounded">
										<i class="fas fa-times text-warn"></i><font>    简历不通过</font>
									</a>
								</div> 
							</div>
							<%-- </c:if> --%>
						</div>
					</div>
				</div>
			</c:forEach>
            </div>
        </div>
        
        </c:if>

	<c:if test="${empty COLLEGEUSER_SESSION }"> 	
       	<div class="dlabnav"></div>
       	<div class="content-body">
       	<h3 style="text-align:center;color:red;margin-top:100px;">您没有访问权限，先去登录吧！</h3>
       	</div>
    </c:if>

	</div>
	<script src="static/js/global.min.js"></script>
	<script src="static/js/jquery.nice-select.min.js"></script>
	<script src="static/js/jquery.dataTables.min.js"></script>
	<script src="static/js/datatables.init.js"></script>
	<script src="static/js/custom.min.js"></script>
 	<script src="static/js/dlabnav-init.js"></script>
</body>
</html>