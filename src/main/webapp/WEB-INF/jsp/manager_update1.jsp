<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>后台 - 修改管理员信息</title>
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
                                
                            </div>
							<div class="nav-item d-flex align-items-center">
								
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
     
     	<c:if test="${COLLEGEUSER_SESSION.role==1 }">
        <div class="dlabnav">
            <div class="dlabnav-scroll">
				<ul class="metismenu" id="menu">
                    <li><a class="has-arrow " href="javascript:void()" aria-expanded="true">
							<i class="flaticon-025-dashboard"></i>
							<span class="nav-text">用户管理</span>
						</a>
                        <ul aria-expanded="false">
							<li><a href="${pageContext.request.contextPath }/findAllUser">用户列表</a></li>	
							<li class="mm-active"><a href="${pageContext.request.contextPath }/findAllCollegeUser"  class="mm-active">管理员列表</a></li>						
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
					<h4 class="fs-20 font-w600 me-auto">修改管理员信息</h4>
					<a href="javascript:history.back(-1)" class="btn btn-primary me-3 btn-sm">
						返回
					</a>
				</div>
				<div class="row">
					<div class="col-xl-12">
					<div class="auth-form">
					<form action="${pageContext.request.contextPath }/modifyCollegeUser_m?id=${collegeUser.id }" method="post">
					<div style="width: 500px;position: absolute;top: 60%;left: 50%;transform: translate(-50%,-50%);">
                            <div class="mb-3">
                                <label class="mb-1"><strong>教职工编号</strong></label>
                                <input type="text" class="form-control" name="staffCode" placeholder="请输入教职工编号" value="${collegeUser.staffCode }">
                            </div>
                            <div class="mb-3">
                                <label class="mb-1"><strong>姓名</strong></label>
                                <input type="text" class="form-control" name="staffName" placeholder="请输入教师姓名" value="${collegeUser.staffName }">
                            </div>
                           
                            <div class="mb-3">
                                <label class="mb-1"><strong>性别</strong></label>
                                <select name="sex" class="form-control" value="${collegeUser.sex }">
                                	<option selected>${collegeUser.sex }</option>
                                	<option value="男">男</option>
                                	<option value="女">女</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label class="mb-1"><strong>所属院系</strong></label>
                                <select class="form-select form-control solid" name="collegeName" value="${collegeUser.collegeName }">
										  <option selected>${collegeUser.collegeName }</option>
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
										  <option value="人力资源部">人力资源部</option>
										  <option value="财务部">财务部</option>
										  <option value="安全工作部">安全工作部</option>
										  <option value="对外工作部">对外工作部</option>
										</select>
                            </div>
                            <div class="mb-3">
                                <label class="mb-1"><strong>手机号码</strong></label>
                                <input type="tel" class="form-control" name="tel" placeholder="请输入手机号码" value="${collegeUser.tel }">
                            </div>
                            <div class="mb-3">
                                <label class="mb-1"><strong>邮箱</strong></label>
                                <input type="email" class="form-control" name="email" placeholder="请输入邮箱" value="${collegeUser.email }">
                            </div>
                        
                        	<c:if test="${COLLEGEUSER_SESSION.role==1 }">
                            <div class="mb-3">
                                <label class="mb-1"><strong>角色</strong></label>
                                <select name="role" class="form-control" value="${collegeUser.role }">
                                	<option value="1" <c:if test="${collegeUser.role==1 }">selected</c:if>>系统管理员</option>
                                	<option value="2" <c:if test="${collegeUser.role==2 }">selected</c:if>>人事处管理员</option>
                                	<option value="3" <c:if test="${collegeUser.role==3 }">selected</c:if>>学院管理员</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label class="mb-1"><strong>状态</strong></label>
                                <select name="status" class="form-control" value="${collegeUser.status }">
                                	<option value="0" <c:if test="${collegeUser.status==0 }">selected</c:if> >禁用</option>
                                	<option value="1" <c:if test="${collegeUser.status==1 }">selected</c:if> >启用</option>
                                </select>
                            </div>
                            </c:if>
                            
                            <div class="text-center mt-4">
                                <button type="submit" class="btn btn-primary btn-block">确认修改</button>
                            </div>
                         </div>
                     </form>
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