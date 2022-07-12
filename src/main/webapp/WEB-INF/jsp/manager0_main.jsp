<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page language="java" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>后台 - 管理员列表</title>
  <link rel="icon" href="//res.hbgcjsxy.com/statics/skin/favicon.ico">
  <link href="static/css/nice-select.css" rel="stylesheet">
  <link href="static/css/jquery.dataTables.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
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
                                
                            </div>
                            <form action="${pageContext.request.contextPath }/findCollegeUserByName" method="get">
							<div class="nav-item d-flex align-items-center">
								<div class="input-group search-area">
									<input type="text" class="form-control" name="staffName" placeholder="请输入要查找的姓名">
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
		
     <c:if test="${COLLEGEUSER_SESSION.role==1 }">
        <div class="dlabnav">
            <div class="dlabnav-scroll">
				<ul class="metismenu" id="menu">
                    <li><a class="has-arrow " href="javascript:void()" aria-expanded="false">
							<i class="flaticon-025-dashboard"></i>
							<span class="nav-text">用户管理</span>
						</a>
                        <ul aria-expanded="false">
							<li><a href="${pageContext.request.contextPath }/findAllUser">用户列表</a></li>	
							<li class="mm-active"><a href="${pageContext.request.contextPath }/findAllCollegeUser" class="mm-active">管理员列表</a></li>						
							<li><a href="${pageContext.request.contextPath }/toAddManager">添加管理员</a></li>
						</ul>
                    </li>
					<li><a class="has-arrow " href="javascript:void()" aria-expanded="false">
							<i class="flaticon-043-menu"></i>
							<span class="nav-text">公告管理</span>
						</a>
                        <ul aria-expanded="false">
                            <li><a href="${pageContext.request.contextPath }/findAllNotice">公告列表</a></li>
                            <li><a href="${pageContext.request.contextPath }/toAddNotice">发布新公告</a></li>
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
					<h4 class="fs-20 font-w600 me-auto">管理员列表</h4>
					<div>
					<a href="${pageContext.request.contextPath }/toAddManager" class="btn btn-primary me-3 btn-sm"><i class="fas fa-plus me-2"></i>添加管理员账号</a>		
					</div>
				</div>
				<div class="row">
					<div class="col-xl-12">
						<div class="table-responsive">
							<table class="table display mb-4 dataTablesCard job-table table-responsive-xl card-table" id="example5">
								<thead>
									<tr>
										<th>职工编号</th>
										<th>姓名</th>
										<th>性别</th>
										<th>所属学院或部门</th>
										<th>手机号</th>
										<th>邮箱</th>
										<th>角色</th>
										<th>状态</th>
										<th class="text-center">操作</th>
									</tr>
								</thead>
								<tbody>
								<c:if test="${!empty collegeUserList }">
									<c:forEach items="${collegeUserList }" var="collegeUser">
										<tr>
										<td>${collegeUser.staffCode }</td>
										<td class="wspace-no">${collegeUser.staffName }</td>
										<td>${collegeUser.sex }</td>
										<td>${collegeUser.collegeName }</td>
										<td>${collegeUser.tel }</td>
										<td>${collegeUser.email }</td>
										<c:if test="${collegeUser.role==2 }">
											<td>人事处管理员</td>
										</c:if>
										<c:if test="${collegeUser.role==3 }">
											<td>学院或部门管理员</td>
										</c:if>
										<c:if test="${collegeUser.role==1 }">
											<td>系统管理员</td>
										</c:if>
										<c:if test="${collegeUser.status==1 }">
											<td><span class="btn btn-success btn-sm btn-rounded">已启用</span></td>
										</c:if>
										<c:if test="${collegeUser.status==0 }">
											<td><span class="btn btn-danger btn-sm btn-rounded">已禁用</span></td>
										</c:if>
										<td class="action-btn wspace-no">
											<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</span>
											<a href="${pageContext.request.contextPath }/findCollegeUserById_m?id=${collegeUser.id}">
												<span class="btn btn-warning btn-sm btn-rounded">编辑</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											
											<c:if test="${collegeUser.status==1 }">
											<a href="${pageContext.request.contextPath }/modifyCollegeUserStatus_0?id=${collegeUser.id}">
												<span class="btn btn-danger btn-sm btn-rounded">禁用</span>
											</a>
											</c:if>
											<c:if test="${collegeUser.status==0 }">
											<a href="${pageContext.request.contextPath }/modifyCollegeUserStatus_1?id=${collegeUser.id}">
												<span class="btn btn-success btn-sm btn-rounded">启用</span>
											</a>
											</c:if>
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