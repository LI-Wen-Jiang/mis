<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>党员管理系统</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="robots" content="all,follow">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/lib/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/lib/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/lib/css/fontastic.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/lib/css/style.default.css"
	id="theme-stylesheet">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/lib/css/custom.css">
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/lib/img/favicon.ico">
</head>
<body>
	<script type="text/javascript">
	var isLogin = "<%=session.getAttribute("isLogin")%>";
	if(isLogin!='1'){
		alert("您好，请先登录！");
		window.location.href='<%=request.getContextPath()%>/';
	};
	</script>
	<div class="page">
		<header class="header"> <nav class="navbar">
		<div class="container-fluid">
			<div
				class="navbar-holder d-flex align-items-center justify-content-between">
				<div class="navbar-header">
					<a href="/mis/admin/main_page_1"
						class="navbar-brand d-none d-sm-inline-block">
						<div class="brand-text d-none d-lg-inline-block">党员管理系统</div>
						<div class="brand-text d-none d-sm-inline-block d-lg-none">
							<strong>党员管理系统</strong>
						</div>
					</a> <a id="toggle-btn" href="#" class="menu-btn active"> <span></span><span></span><span></span>
					</a>
				</div>
				<ul
					class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
					<li class="nav-item"><a href="/mis/logout"
						class="nav-link logout"> <span class="d-none d-sm-inline">退出登录</span><i
							class="fa fa-sign-out"></i>
					</a></li>
				</ul>
			</div>
		</div>
		</nav> </header>
		<div class="page-content d-flex align-items-stretch">
			<nav class="side-navbar">
			<div class="sidebar-header d-flex align-items-center">
				<div class="title">
					<p>欢迎您：</p>
					<h1 class="h4">${admin_name}</h1>
				</div>
			</div>
			<span class="heading">用户管理</span>
			<ul class="list-unstyled">
				<li><a href="/mis/admin/authorityPage"> <i
						class="icon-list-1"></i>权限管理
				</a></li>
				<li><a href="#memberManager" aria-expanded="false"
					data-toggle="collapse"> <i class="icon-user"></i>成员管理
				</a>
					<ul id="memberManager" class="collapse list-unstyled ">
						<li><a href="/mis/admin/manageMemberPage">成员信息管理</a></li>
						<li><a href="/mis/admin/updateStatusPage">成员政治面貌管理</a></li>
					</ul></li>
				<li><a href="#branchManager" aria-expanded="false"
					data-toggle="collapse"> <i class="icon-list"></i>支部管理
				</a>
					<ul id="branchManager" class="collapse list-unstyled ">
						<li><a href="/mis/admin/addMemberPage">添加支部成员</a></li>
						<li><a href="/mis/admin/manageBranchPage">支部成员管理</a></li>
					</ul></li>
			</ul>
			<span class="heading">组织生活管理</span>
			<ul class="list-unstyled">
				<li><a href="/mis/admin/addActivityPage"> <i
						class="icon-interface-windows"></i>活动的创建与发布
				</a></li>
				<li><a href="/mis/admin/manageSignInPage"> <i
						class="icon-grid"></i>组织生活签到管理
				</a></li>
			</ul>
			<span class="heading">内容管理</span>
			<ul class="list-unstyled">
				<li><a href="#editStudy" aria-expanded="false"
					data-toggle="collapse"> <i class="icon-presentation"></i>学习中心内容编辑
				</a>
					<ul id="editStudy" class="collapse list-unstyled ">
						<li><a href="/mis/admin/insertStudyPage">发布学习内容</a></li>
						<li><a href="/mis/admin/manageStudyPage">管理学习内容</a></li>
					</ul></li>
				<li><a href="/mis/admin/editCompetitionPage"> <i
						class="icon-padnote"></i>竞答编辑
				</a></li>
				<li><a href="#competitionResult" aria-expanded="false"
					data-toggle="collapse"> <i class="icon-line-chart"></i>竞答结果统计
				</a>
					<ul id="competitionResult" class="collapse list-unstyled ">
						<li><a href="/mis/admin/resultByTestPage">按竞答查询</a></li>
						<li><a href="/mis/admin/resultByStudentPage">按学生查询</a></li>
					</ul></li>
			</ul>
			</nav>
			<div class="content-inner"></div>
		</div>
	</div>
	<script
		src="<%=request.getContextPath()%>/lib/vendor/jquery/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/lib/vendor/popper.js/umd/popper.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/lib/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/lib/vendor/jquery.cookie/jquery.cookie.js"></script>
	<script
		src="<%=request.getContextPath()%>/lib/vendor/chart.js/Chart.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/lib/vendor/jquery-validation/jquery.validate.min.js"></script>
	<script src="<%=request.getContextPath()%>/lib/js/front.js"></script>
</body>
</html>