<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page language="java" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="keywords" content="">
	<title>后台 - 招聘信息列表</title>
	<link rel="icon" href="//res.hbgcjsxy.com/statics/skin/favicon.ico">
	<link href="static/css/nice-select.css" rel="stylesheet">
	<link href="static/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="static/css/style.css" rel="stylesheet">
</head>
<body>
<div id="main-wrapper">
    <div class="nav-header">
            <a href="" class="brand-logo">
				<img class="logo-abbr" alt="XX大学人事招聘管理系统" src="images/xiaohui.png" >
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
                                
                            </div>
							<form action="${pageContext.request.contextPath }/findJobByName" method="get">
							<div class="nav-item d-flex align-items-center">
							<div class="input-group search-area">
								<input type="text" class="form-control" name="jobName" placeholder="请输入要查找的岗位名">
								<span class="input-group-text">
								</span>
							</div>
							<div class="plus-icon">
								<button type="submit" class="btn btn-secondary"><i class="flaticon-381-search-2"></i></button>
							</div>
						</div>
						</form>
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
							<li><a href="${pageContext.request.contextPath }/findAllResume">应聘人员列表（全部）</a></li>
						</ul>
                    </li> 
                    <li><a class="has-arrow " href="javascript:void()" aria-expanded="false">
							<i class="flaticon-093-waving"></i>
							<span class="nav-text">招聘信息管理</span>
						</a>
                        <ul aria-expanded="false">
                            <li class="mm-active"><a href="${pageContext.request.contextPath }/findAllJob" class="mm-active">招聘信息列表</a></li>
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
        
        <div class="content-body">
            <!-- row -->
			<div class="container-fluid">
				<div class="d-flex align-items-center mb-4 flex-wrap">
					<h4 class="fs-20 font-w600  me-auto">招聘信息列表</h4>
					<div>
					<a href="${pageContext.request.contextPath }/toAddJob" class="btn btn-primary me-3 btn-sm">
						<i class="fas fa-plus me-2"></i>发布招聘信息
					</a>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-12">
						<div class="table-responsive">
							<table class="table display mb-4 dataTablesCard job-table table-responsive-xl card-table" id="example5">
								<thead>
									<tr>
										<th>标题</th>
										<th>岗位名</th>
										<th>部门</th>
										<th>招聘人数</th>
										<th>状态</th>
										<th class="text-center">操作</th>
									</tr>
								</thead>
								<tbody>
								<c:if test="${!empty jobList }">
									<c:forEach items="${jobList }" var="job">
									<tr>
										<td>${job.title }</td>
										<td>${job.jobName }</td>
										<td>${job.collegeName }</td>
										<td>${job.number }</td>
										<c:if test="${job.status==1 }">
											<td><span class="badge badge-success badge-lg light">活跃</span></td>
										</c:if>
										<c:if test="${job.status==0 }">
											<td><span class="badge badge-danger badge-lg light">结束</span></td>
										</c:if>
										<td>
											<div class="action-buttons d-flex justify-content-end">
												<a href="${pageContext.request.contextPath }/findJobById_v?id=${job.id}" class="btn btn-success light mr-2">
													<svg xmlns="http://www.w3.org/2000/svg" class="svg-main-icon" width="24px" height="24px" viewbox="0 0 32 32" x="0px" y="0px"><g data-name="Layer 21"><path d="M29,14.47A15,15,0,0,0,3,14.47a3.07,3.07,0,0,0,0,3.06,15,15,0,0,0,26,0A3.07,3.07,0,0,0,29,14.47ZM16,21a5,5,0,1,1,5-5A5,5,0,0,1,16,21Z" fill="#000000" fill-rule="nonzero"></path><circle cx="16" cy="16" r="3" fill="#000000" fill-rule="nonzero"></circle></g></svg>
												</a>
												<a href="${pageContext.request.contextPath }/findJobById?id=${job.id}" class="btn btn-secondary light mr-2">
													<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewbox="0 0 24 24" version="1.1" class="svg-main-icon">
														<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
															<rect x="0" y="0" width="24" height="24"></rect>
															<path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero" transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "></path>
															<rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"></rect>
														</g>
													</svg>
												</a>
												<a href="${pageContext.request.contextPath }/delJob?id=${job.id}" class="btn btn-danger light">
													<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewbox="0 0 24 24" version="1.1" class="svg-main-icon">
														<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
															<rect x="0" y="0" width="24" height="24"></rect>
															<path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"></path>
															<path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"></path>
														</g>
													</svg>
												</a>
												
											</div>
										</td>
									</tr>
									</c:forEach>
									</c:if>
									
								</tbody>
							</table>
						</div>
					</div>
				</div>
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
							<li><a href="${pageContext.request.contextPath }/findAllResume">应聘人员列表（全部）</a></li>	
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
        <div class="content-body">
            <!-- row -->
			<div class="container-fluid">
				<div class="d-flex align-items-center mb-4 flex-wrap">
					<h4 class="fs-20 font-w600  me-auto">招聘信息列表</h4>
				</div>
				<div class="row">
					<div class="col-xl-12">
						<div class="table-responsive">
							<table class="table display mb-4 dataTablesCard job-table table-responsive-xl card-table" id="example5">
								<thead>
									<tr>
										<th>标题</th>
										<th>岗位名</th>
										<th>部门</th>
										<th>招聘人数</th>
										<th>状态</th>
										<th class="text-center">操作</th>
									</tr>
								</thead>
								<tbody>
								<c:if test="${!empty jobList }">
									<c:forEach items="${jobList }" var="job">
									<tr>
										<td>${job.title }</td>
										<td>${job.jobName }</td>
										<td>${job.collegeName }</td>
										<td>${job.number }</td>
										<c:if test="${job.status==1 }">
											<td><span class="badge badge-success badge-lg light">已发布</span></td>
										</c:if>
										<c:if test="${job.status==0 }">
											<td><span class="badge badge-danger badge-lg light">已结束</span></td>
										</c:if>
										<c:if test="${job.status==2 }">
											<td><span class="badge badge-danger badge-lg light">未发布</span></td>
										</c:if>
										<td>
											<div class="action-buttons d-flex justify-content-end">
												<a href="${pageContext.request.contextPath }/findJobById_v?id=${job.id}" class="btn btn-success light mr-2">
													<svg xmlns="http://www.w3.org/2000/svg" class="svg-main-icon" width="24px" height="24px" viewbox="0 0 32 32" x="0px" y="0px"><g data-name="Layer 21"><path d="M29,14.47A15,15,0,0,0,3,14.47a3.07,3.07,0,0,0,0,3.06,15,15,0,0,0,26,0A3.07,3.07,0,0,0,29,14.47ZM16,21a5,5,0,1,1,5-5A5,5,0,0,1,16,21Z" fill="#000000" fill-rule="nonzero"></path><circle cx="16" cy="16" r="3" fill="#000000" fill-rule="nonzero"></circle></g></svg>
												</a>
												
												<a href="${pageContext.request.contextPath }/findJobById?id=${job.id}" class="btn btn-secondary light mr-2">
													<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewbox="0 0 24 24" version="1.1" class="svg-main-icon">
														<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
															<rect x="0" y="0" width="24" height="24"></rect>
															<path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero" transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "></path>
															<rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"></rect>
														</g>
													</svg>
												</a>
												<a href="${pageContext.request.contextPath }/delJob?id=${job.id}" class="btn btn-danger light">
													<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewbox="0 0 24 24" version="1.1" class="svg-main-icon">
														<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
															<rect x="0" y="0" width="24" height="24"></rect>
															<path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"></path>
															<path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"></path>
														</g>
													</svg>
												</a>
											</div>
										</td>
									</tr>
									</c:forEach>
									</c:if>
									
								</tbody>
							</table>
						</div>
					</div>
				</div>
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
