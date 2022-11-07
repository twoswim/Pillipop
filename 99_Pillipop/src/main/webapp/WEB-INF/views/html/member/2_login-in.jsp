<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
	
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>pillipop | Login in</title>

<!-- 타이틀/아이콘 -->
    <meta name="description" content="Around - Multipurpose Bootstrap HTML Template">
    <meta name="keywords" content="bootstrap, business, corporate, coworking space, services, creative agency, dashboard, e-commerce, mobile app showcase, saas, multipurpose, product landing, shop, software, ui kit, web studio, landing, dark mode, html5, css3, javascript, gallery, slider, touch, creative">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/resources/img/0_headerfooter/Store_logo.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/resources/img/0_headerfooter/Store_logo.png">
    <link rel="manifest" href="<%=request.getContextPath()%>/resources/favicon/site.webmanifest">
    <link rel="mask-icon" color="#6366f1" href="<%=request.getContextPath()%>/resources/favicon/safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#080032">
    <meta name="msapplication-config" content="<%=request.getContextPath()%>/resources/favicon/browserconfig.xml">
    <meta name="theme-color" content="white">

<!-- Viewport-->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon and Touch Icons-->
<link rel="apple-touch-icon" sizes="180x180" href="<%=request.getContextPath()%>/resources/img/2_img/logo/Pillipop.png">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/resources/img/2_img/logo/Pillipop.png">
<link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/resources/img/2_img/logo/Pillipop.png">
<link rel="manifest" href="<%=request.getContextPath()%>/resources/favicon/site.webmanifest">
<link rel="mask-icon" color="#6366f1" href="<%=request.getContextPath()%>/resources/favicon/safari-pinned-tab.svg">
<meta name="msapplication-TileColor" content="#080032">
<meta name="msapplication-config" content="source/favicon/browserconfig.xml">
<meta name="theme-color" content="white">
<script src="https://code.jquery.com/jquery-3.6.0.slim.js"></script>

<!-- Theme mode-->
<script>
	let mode = window.localStorage.getItem('mode'), 
	root = document.getElementsByTagName('html')[0];
	if (mode !== undefined && mode === 'dark') {
		root.classList.add('dark-mode');
	} else {
		root.classList.remove('dark-mode');
	}
</script>

<!-- Page loading scripts-->
<script>
	(function() {
		window.onload = function() {
			const preloader = document.querySelector('.page-loading');
			preloader.classList.remove('active');
			setTimeout(function() {
				preloader.remove();
			}, 1500);
		};
	})();
</script>

<!-- Vendor styles-->
<!-- Main Theme Styles + Bootstrap-->
<link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/theme.min.css">
<!-- css추가 -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/2_product.css">
<!-- 0_headerfooter -->
<link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/headerfooter.css">
<link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/0_headerfooter.css">
</head>
<!-- Body-->

<body>
	<style>
body {
	font-family: "NanumSquareR";
}
</style>

	<%@ include file="../../common/loading.jsp" %>

	<!-- Page wrapper-->
	<main class="page-wrapper">
		<!-- Page content-->
		<div class="d-lg-flex position-relative h-100">
			<!-- Home button-->
			<a class="text-nav btn btn-icon bg-light border rounded-circle position-absolute top-0 end-0 p-0 mt-3 me-3 mt-sm-4 me-sm-4"
				href="index.html" data-bs-toggle="tooltip" data-bs-placement="left" title="Back to home"><i class="ai-home"></i></a>
			<!-- Sign in form-->
			
			<div class="d-flex flex-column align-items-center w-lg-50 h-100 px-3 px-lg-5 pt-5">
				<!-- Breadcrumb-->

				<div class="w-100 mt-auto" style="max-width: 526px;">
					<div style="text-align: left; width: auto;">
						<nav aria-label="breadcrumb">
							<ol class="pt-lg-3 pb-lg-4 pb-2 breadcrumb">
								<li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/views/html/메인.jsp">Pillipop</a></li>
								<li class="breadcrumb-item active" aria-current="page">로그인</li>
							</ol>
						</nav>
					</div>
					<h1>Pillipop 로그인</h1>
					<p class="pb-3 mb-3 mb-lg-4">
						계정이 없으신가요?&nbsp;&nbsp;<a class="a_new" href="${path}/signupp">이메일로 회원가입</a>
					</p>
					<form class="needs-validation" action="${path}/login" method="post">
						<div class="pb-3 mb-3">
							<div class="position-relative">
								<i class="ai-mail fs-lg position-absolute top-50 start-0 translate-middle-y ms-3"></i>
								<input class="form-control form-control-lg ps-5" type="email" name="u_id" placeholder="아이디(이메일)을 입력해주세요." required>
							</div>
						</div>
						<div class="mb-4">
							<div class="position-relative">
								<i class="ai-lock-closed fs-lg position-absolute top-50 start-0 translate-middle-y ms-3"></i>
								<div class="password-toggle">
									<input class="form-control form-control-lg ps-5" type="password" name="u_pw" placeholder="비밀번호를 입력해주세요." style="font-family:sans-serif" required> 
<!-- 									<label class="password-toggle-btn" aria-label="Show/hide password">  -->
<!-- 									<input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span> -->
<!-- 									</label> -->
								</div>
							</div>
						</div>
						<div
							class="d-flex flex-wrap align-items-center justify-content-between pb-4">
							<form-check class="my-1"> 
							<input class="form-check-input form-check-input_new" type="checkbox" id="keep-signedin"> <label class="form-check-label ms-1" for="keep-signedin">로그인 상태 유지</label> 
							</form-check>
							<a class="fs-sm fw-semibold text-decoration-none my-1 a_new" href="account-password-recovery.html">비밀번호 찾기</a>
						</div>
						<button class="btn btn-lg btn-primary_new2 w-100 mb-4" type="submit">로그인</button>
						<button class="btn btn-lg btn-primary_new2 w-100 mb-4" onclick="location.href='${path}/signupp'">회원가입</button>
						<h2 class="h6 text-center pt-3 pt-lg-4 mb-4">SNS계정으로 간편하게 로그인하기</h2>
						<div class="row row-cols-1 row-cols-sm-2 gy-3">
							<div class="col" id="naverLogin">
								<a class="btn btn-icon btn-outline-secondary btn-naver btn-lg w-100"  href="#">Naver</a>
							</div>
							<div class="col">
								<a class="btn btn-icon btn-outline-secondary btn-kakao btn-lg w-100" href="https://kauth.kakao.com/oauth/authorize?client_id=7cb0b8530d0db88ef573f47bae345c7c&redirect_uri=http://localhost/pillipop/kakaoEnroll&response_type=code">Kakao</a>
							</div>
							
							<div class="naverIdLogin" id="naverIdLogin" style="display:none;"></div>
							
							
						</div>
					</form>
				</div>
				
				<!-- Copyright-->
				<p class="w-100 fs-sm pt-5 mt-auto mb-5" style="max-width: 526px;"></p>
			</div>
			
			<!-- Cover image-->
			<div class="w-50 bg-size-cover bg-repeat-0 bg-position-center" style="background-image: url(<%=request.getContextPath()%>/resources/img/2_img/logo/login.png);">
			</div>
		</div>
	</main>
	
	 <script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
	 
	 <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
	 <script type="text/javascript">
	

	var naverLogin = new naver.LoginWithNaverId({
		 clientId: "NT1c6MNzD5gDX4gAvzbZ",
		 callbackUrl: "http://localhost/pillipop/login2",
		 loginButton: {color: "green", type: 3, height: 50}

		 
	});
	
	naverLogin.init(); //initialize Naver Login Button
	 
	$(document).on("click", "#naverLogin", function(){ 
		var btnNaverLogin = document.getElementById("naverIdLogin").firstChild;
		btnNaverLogin.click();
	});
	 

</script>

	 
	 
  
</body>
</html>