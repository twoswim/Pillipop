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
<title>pillipop | Login up</title> 
<!-- 타이틀/아이콘 -->
<meta name="description" content="Around - Multipurpose Bootstrap HTML Template">
<meta name="keywords" content="bootstrap, business, corporate, coworking space, services, creative agency, dashboard, e-commerce, mobile app showcase, saas, multipurpose, product landing, shop, software, ui kit, web studio, landing, dark mode, html5, css3, javascript, gallery, slider, touch, creative">
<meta name="author" content="Createx Studio">

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
</head>
<!-- Body-->

<body>
	<style>
body {
	font-family: "NanumSquareR";
	margin-top: -80px;
}
</style>

	<%@ include file="../../common/loading.jsp" %>
	
	<!-- Page wrapper-->
	<main class="page-wrapper">
	
		<!-- Page content-->
		<!-- Breadcrumb + Services grid-->
		<section class="container py-5 mt-5 mb-md-3 mb-lg-4 mb-xxl-5">
			<!-- Breadcrumb-->
			<nav aria-label="breadcrumb">
				<ol class="pt-lg-3 pb-lg-4 pb-2 breadcrumb">
					<li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/views/html/메인.jsp">Pillipop</a></li>
					<li class="breadcrumb-item active" aria-current="page">회원가입</li>
				</ol>
			</nav>

			<center>
				<div class="w-100 mt-auto" style="max-width: 526px;">
					<h1>
						<img src="<%=request.getContextPath()%>/resources/img/2_img/logo/Pillipop.png" class="login_img">Pillipop 회원가입
					</h1>
					<p class="pb-3 mb-3 mb-lg-4">이미 회원이신가요?&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/views/html/2_login-in.jsp" class="a_new">이메일로 로그인</a>
					</p>
					<form class="needs-validation" name="memberEnrollFrm" action="${path}/member/enroll" method="post">

						<!-- 이름  -->
						<h6 class="txt_l">이름</h6>
						<div class="col mb-4">
							<input class="form-control form-control-lg" type="text" name="u_name" placeholder="이름(실명)을 입력해주세요." required>
						</div>

						<!-- 닉네임  -->
						<h6 class="txt_l">닉네임</h6>
						<div class="col mb-4">
							<input class="form-control form-control-lg" type="text" name="u_nickname" placeholder="닉네임을 입력해주세요." required>
						</div>
						<!-- 이메일  -->
						<h6 class="txt_l">아이디(이메일)</h6>
						<div class="col mb-4" style="display: flex;">
							<input class="form-control form-control-lg" style="margin-right: 10px;" type="email" name="u_id" id="newId" placeholder="id@pillipop.com" required> 
							<input class="form-control form-control-lg bnt_overlap" id="checkDuplicate" type="button" value="중복검사">
						</div>

						<!-- 비밀번호 -->
						<h6 class="txt_l">비밀번호</h6>
						<div class="password-toggle mb-4">
							<input class="form-control form-control-lg" type="password" name="u_pw" style="font-family:sans-serif" placeholder="영문+숫자 조합 4자리 이상 입력해주세요." required>
							<label class="password-toggle-btn " aria-label="Show/hide password"> 
							<input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
							</label>
						</div>
						<!-- 비밀번호 재확인 -->
						<h6 class="txt_l">비밀번호 확인</h6>
						<div class="password-toggle mb-4">
							<input class="form-control form-control-lg" type="password" placeholder="비밀번호 확인" style="font-family:sans-serif" required> 
							<label class="password-toggle-btn" aria-label="Show/hide password">
								<input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
							</label>
						</div>
						<!-- 전화번호  -->
						<h6 class="txt_l">전화번호</h6>
						<div class="col mb-4">
							<input class="form-control form-control-lg" type="tel" name="u_phone" placeholder="전화번호를 입력해주세요." required>
						</div>
						<!-- 생년월일  -->
						<div class="col mb-4">
							<h6 class="txt_l">생년월일</h6>
							<input class="form-control form-control-lg" type="text" name="u_birth" placeholder="생년월일 7자리를 입력해주세요.예)19880423" required>
						</div>
						<!-- 주소  -->
						<div class="col mb-4">
							<h6 class="txt_l">주소</h6>
							<input class="form-control form-control-lg" type="text" name="u_addr" placeholder="주소를 입력해주세요." required>
						</div>

						<div class="pb-4">
							<div class="form-check my-2" style="text-align: left;">
								<input class="form-check-input form-check-input_new" type="checkbox" id="terms"> 
								<label class="form-check-label ms-1" for="terms"><a href="#" class="a_new">이용약관 &amp; 개인정보취급방침</a>에 동의합니다.(필수)</label>
							</div>
						</div>
						<button class="btn btn-lg btn-primary_new2 w-100 mb-4" type="submit">회원가입</button>
						<h2 class="h6 text-center pt-3 pt-lg-4 mb-4">SNS계정으로 간편하게 가입하기</h2>
						<div class="row row-cols-1 row-cols-sm-2 gy-3">
							<div class="col">
								<a class="btn btn-icon btn-outline-secondary btn-naver btn-lg w-100" href="#">Naver</a>
							</div>
							<div class="col">
								<a class="btn btn-icon btn-outline-secondary btn-kakao btn-lg w-100" href="#">KaKao</a>
							</div>
						</div>
					</form>
				</div>
			</center>
		</section>
	</main>
	<script src="http://code.jquery.com/jquery-latest.js"></script> 
	<script type="text/javascript">
	$(function () {
		$("#pass2").blur((event) => {
			let pass1 = $("#pass1").val();			
			let pass2 = $(event.target).val();
			
			if(pass1.trim() != pass2.trim()) {
				alert("비밀번호가 일치하지 않습니다.");
				
				$("#pass1").val("");
				$(event.target).val("");
				$("#pass1").focus();
			}
		});
    	
	    $("#enrollSubmit").on("click", () => {
	    	// TODO 전송하기 전에 각 영역에 유효성 검사로직을 추가하는 부분!
	    	//return false;
	    });
	    
	    // 아이디 중복을 확인하는 AJAX 코드
	    $("#checkDuplicate").on("click", ()=>{
	    	let id = $("#newId").val().trim();
	    	
	    	if(id.length < 4){
				alert("아이디는 최소 4글자입니다.")
				return;
	    	}
	    	
	    	$.ajax({
	    		type:"get",
	    		url:"${path}/member/idCheck",
	    		data:{id}, // 속성 키값 이름으로 서버에 보낼경우 1개만 쓴다. 
	    		success:
	    			(data)=>{
	    				console.log(data);
	    				if(data.validate === true){
	    					alert("이미 사용중인 아이디입니다.")
	    				}else{
	    					alert("사용 가능합니다.")
	    				}
	    			},
	    		error:
	    			(e)=>{
	    				console.log(e);
	    			}
	    	});
	    });
	});
</script>
</body>


</html>
