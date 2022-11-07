<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<title>약국 메인</title>
<!-- SEO Meta Tags-->
<meta name="description"
	content="Around - Multipurpose Bootstrap HTML Template">
<meta name="keywords"
	content="bootstrap, business, corporate, coworking space, services, creative agency, dashboard, e-commerce, mobile app showcase, saas, multipurpose, product landing, shop, software, ui kit, web studio, landing, dark mode, html5, css3, javascript, gallery, slider, touch, creative">
<meta name="author" content="Createx Studio">
<!-- Viewport-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon and Touch Icons-->
<link rel="apple-touch-icon" sizes="180x180"
	href="${path}/resources/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="${path}/resources/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="${path}/resources/favicon/favicon-16x16.png">
<link rel="manifest" href="${path}/resources/favicon/site.webmanifest">
<link rel="mask-icon" color="#6366f1"
	href="${path}/resources/favicon/safari-pinned-tab.svg">
<meta name="msapplication-TileColor" content="#080032">
<meta name="msapplication-config"
	content="${path}/resources/favicon/browserconfig.xml">
<meta name="theme-color" content="white">
<!-- Theme mode-->
<script language='javascript'>
var cnt = new Array();
cnt[0] = new Array('전체');
cnt[1] = new Array('전체', '강남구', '강동구', '강북구', '강서구', '관악구', '광진구', '구로구', '금천구', '노원구', '도봉구', '동대문구', '동작구', '마포구', '서대문구', '서초구', '성동구', '성북구', '송파구', '양천구', '영등포구', '용산구', '은평구', '종로구', '중구', '중랑구');
cnt[2] = new Array('전체', '강서구', '금정구', '남구', '동구', '동래구', '부산진구', '북구', '사상구', '사하구', '서구', '수영구', '연제구', '영도구', '중구', '해운대구', '기장군');
cnt[3] = new Array('전체', '남구', '달서구', '동구', '북구', '서구', '수성구', '중구', '달성군');
cnt[4] = new Array('전체', '계양구', '남구', '남동구', '동구', '부평구', '서구', '연수구', '중구', '강화군', '옹진군');
cnt[5] = new Array('전체', '광산구', '남구', '동구', '북구', '서구');
cnt[6] = new Array('전체', '대덕구', '동구', '서구', '유성구', '중구');
cnt[7] = new Array('전체', '남구', '동구', '북구', '중구', '울주군');
cnt[8] = new Array('전체', '고양시', '과천시', '광명시', '구리시', '군포시', '남양주시', '동두천시', '부천시', '성남시', '수원시', '시흥시', '안산시', '안양시', '오산시', '의왕시', '의정부시', '평택시', '하남시', '가평군', '광주시', '김포시', '안성시', '양주시', '양평군', '여주시', '연천군', '용인시', '이천시', '파주시', '포천시', '화성시');
cnt[9] = new Array('전체', '강릉시', '동해시', '삼척시', '속초시', '원주시', '춘천시', '태백시', '고성군', '양구군', '양양군', '영월군', '인제군', '정선군', '철원군', '평창군', '홍천군', '화천군', '황성군');
cnt[10] = new Array('전체', '제천시', '청주시', '충주시', '괴산군', '단양군', '보은군', '영동군', '옥천군', '음성군', '진천군', '청원군');
cnt[11] = new Array('전체', '공주시', '보령시', '서산시', '아산시', '천안시', '금산군', '논산시', '당진시', '부여군', '서천군', '연기군', '예산군', '청양군', '태안군', '홍성군');
cnt[12] = new Array('전체', '군산시', '김제시', '남원시', '익산시', '전주시', '정읍시', '고창군', '무주군', '부안군', '순창군', '완주군', '임실군', '장수군', '진안군');
cnt[13] = new Array('전체', '광양시', '나주시', '목포시', '순천시', '여수시', '여천시', '강진군', '고흥군', '곡성군', '구례군', '담양군', '무안군', '보성군', '신안군', '여천군', '영광군', '영암군', '완도군', '장성군', '장흥군', '진도군', '함평군', '해남군', '화순군');
cnt[14] = new Array('전체', '경산시', '경주시', '구미시', '김천시', '문경시', '상주시', '안동시', '영주시', '영천시', '포항시', '고령군', '군위군', '봉화군', '성주군', '영덕군', '영양군', '예천군', '울릉군', '울진군', '의성군', '청도군', '청송군', '칠곡군');
cnt[15] = new Array('전체', '거제시', '김해시', '마산시', '밀양시', '사천시', '울산시', '진주시', '진해시', '창원시', '통영시', '거창군', '고성군', '남해군', '산청군', '양산시', '의령군', '창녕군', '하동군', '함안군', '함양군', '합천군');
cnt[16] = new Array('전체', '서귀포시', '제주시', '남제주군', '북제주군');

	function change(add) {
		sel = document.form.county
		/* 옵션메뉴삭제 */
		for (i = sel.length - 1; i >= 0; i--) {
			sel.options[i] = null
		}
		/* 옵션박스추가 */
		for (i = 0; i < cnt[add].length; i++) {
			sel.options[i] = new Option(cnt[add][i], cnt[add][i]);
		}
	}
</script>
<!-- Page loading styles-->
<style>
.page-loading {
	position: fixed;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	width: 100%;
	height: 100%;
	-webkit-transition: all .4s .2s ease-in-out;
	transition: all .4s .2s ease-in-out;
	background-color: #fff;
	opacity: 0;
	visibility: hidden;
	z-index: 9999;
}

.dark-mode .page-loading {
	background-color: #121519;
}

.page-loading.active {
	opacity: 1;
	visibility: visible;
}

.page-loading-inner {
	position: absolute;
	top: 50%;
	left: 0;
	width: 100%;
	text-align: center;
	-webkit-transform: translateY(-50%);
	transform: translateY(-50%);
	-webkit-transition: opacity .2s ease-in-out;
	transition: opacity .2s ease-in-out;
	opacity: 0;
}

.page-loading.active>.page-loading-inner {
	opacity: 1;
}

.page-loading-inner>span {
	display: block;
	font-family: 'Inter', sans-serif;
	font-size: 1rem;
	font-weight: normal;
	color: #6f788b;
}

.dark-mode .page-loading-inner>span {
	color: #fff;
	opacity: .6;
}

.page-spinner {
	display: inline-block;
	width: 2.75rem;
	height: 2.75rem;
	margin-bottom: .75rem;
	vertical-align: text-bottom;
	background-color: #d7dde2;
	border-radius: 50%;
	opacity: 0;
	-webkit-animation: spinner .75s linear infinite;
	animation: spinner .75s linear infinite;
}

.dark-mode .page-spinner {
	background-color: rgba(255, 255, 255, .25);
}

@
-webkit-keyframes spinner { 0% {
	-webkit-transform: scale(0);
	transform: scale(0);
}

50
%
{
opacity
:
1;
-webkit-transform
:
none;
transform
:
none;
}
}
@
keyframes spinner { 0% {
	-webkit-transform: scale(0);
	transform: scale(0);
}
50
%
{
opacity
:
1;
-webkit-transform
:
none;
transform
:
none;
}
}
</style>
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
<!-- Import Google Font-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;display=swap"
	rel="stylesheet" id="google-font">
<!-- Vendor styles-->
<link rel="stylesheet" media="screen"
	href="${path}/resources/vendor/swiper/swiper-bundle.min.css" />
<link rel="stylesheet" media="screen"
	href="${path}/resources/vendor/aos/dist/aos.css" />
<!-- Main Theme Styles + Bootstrap-->
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/theme.min.css">
<!-- 경섭 CSS -->
<link rel="stylesheet" href="${path}/resources/css/7.css">
<!-- 헤더 CSS -->
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/0_headerfooter.css">
</head>
<!-- Body-->

<body class="bg-secondary">
	<%@ include file="../../common/loading.jsp" %>
	<!-- Page wrapper-->
	<main class="page-wrapper">
		<!-- Header -->
		<%@ include file="../../common/header.jsp"%>
		<!-- Page content-->
		<!-- 약국 검색기능 -->
		<section class="overflow-hidden ks_black font-NanumAcR"
			style="z-index: 3; position: relative;">
			<div class="container pt-2 pt-sm-4 pb-md-4 py-xl-5 mt-5">
				<div
					class="row align-items-center py-5 mt-md-2 my-lg-3 my-xl-4 my-xxl-5">
					<div class="align-items-center">
						<h2 class="display-3 text-center">
							<img src="${path}/resources/img/7_drug/drug_1.png" width="80px"
								style="margin-bottom: 18px;" alt=""></img> 약국 찾기
						</h2>
						<br> <br>
						<p class="text-left mx-auto pb-xl-2" style="max-width: 720px;">한개
							이상의 지역정보를 입력 후 검색해주세요</p>
						<!-- 지역별 검색 -->
						<form name="form" method="get" action="${path}/pharmacy/search">
							<div class="col-sm-7 input-group mx-auto"
								style="max-width: 720px;">
								<select name="city" class="form-select ks_font-ser ks_black"
									onchange="change(this.selectedIndex);" required id="city">
									<option value="" selected disabled>시/도</option>
									<option value='서울특별시'>서울특별시</option>
									<option value='부산광역시'>부산광역시</option>
									<option value='대구광역시'>대구광역시</option>
									<option value='인천광역시'>인천광역시</option>
									<option value='광주광역시'>광주광역시</option>
									<option value='대전광역시'>대전광역시</option>
									<option value='울산광역시'>울산광역시</option>
									<option value='경기도'>경기도</option>
									<option value='강원도'>강원도</option>
									<option value='충청북도'>충청북도</option>
									<option value='충청남도'>충청남도</option>
									<option value='전라북도'>전라북도</option>
									<option value='전라남도'>전라남도</option>
									<option value='경상북도'>경상북도</option>
									<option value='경상남도'>경상남도</option>
									<option value='제주특별자치도'>제주특별자치도</option>
								</select> <select name="county" class="form-select ks_font-ser ks_black"
									id="county">
									<option value="" selected disabled>구/군</option>
								</select>
								<div action="input-group mx-auto" style="max-width: 220px;">
									<input name="detailValue" id="detailValue" class="form-control ks_font-ser ks_black" type="text"
										placeholder="주소">
								</div>
							</div>
							<br>
							<div class="input-group mx-auto"
								style="max-width: 720px;">
								<span class="input-group-text text-muted"><i
									class="ai-home"></i></span> <input
									class="form-control ks_font-ser ks_black" name="pharmDetail" id="pharmDetail" type="text"
									placeholder="약국 명칭">
								<button class="btn btn-primary ks_ser_button2" type="submit">
									<i class="ai-search"></i>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
		<div class="jarallax rounded-5 " data-jarallax data-speed="0.6 "
			style="max-width: 100%; margin-top: -670px; z-index: 1; position: relative;">
			<div class=" jarallax-img "
				style="background-image: url(${path}/resources/img/7_drug/baner_4_ver2.png); overflow: hidden;">
			</div>
			<div class="d-none d-xxl-block " style="height: 670px;"></div>
			<div class="d-none d-xl-block d-xxl-none " style="height: 920px;">
			</div>
			<div class="d-none d-lg-block d-xl-none " style="height: 870px;"></div>
			<div class="d-none d-sm-block d-lg-none " style="height: 700px;"></div>
			<div class="d-sm-none " style="height: 670px;"></div>
		</div>
		<!-- CTA-->
		<section class="ks_wrap_main ks_black font-NanumAcR">
			<div class="row box">
				<div class="text-center ks_black font-NanumAcR">
					<header>
						<h1>약국찾기 서비스란?</h1>
						<p>국립중앙의료원에서 제공하는 데이터를 통해 관리되는 약국의 정보를 지도와 함께 알려드리는 서비스 입니다.</p>
					</header>
				</div>
				<ul style="list-style: none;">
					<!-- nth 이미지 CSS는 7.css에 있습니다 -경섭 -->
					<li class="nth1">
						<h2>약국 정보</h2>
						<p>검색란에 세부 지역을 설정하시면 약국의 정보와 자세한 위치를 지도와 함께 파악할 수 있습니다.</p>
					</li>
					<li class="nth2">
						<h2>약품 세부정보</h2>
						<p>의약품 검색 메뉴에서는 약학정보원에서 제공하는 약품의 정보와 주의사항들을 확인하실 수 있습니다.</p>
					</li>
				</ul>
			</div>
		</section>
	</main>
	<!-- Footer -->
	<!-- Vendor scripts: js libraries and plugins-->
	<script src="${path}/resources/vendor/jarallax/dist/jarallax.min.js "></script>
	<script src="${path}/resources/vendor/swiper/swiper-bundle.min.js"></script>
	<script
		src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
	<script src="${path}/resources/vendor/parallax-js/dist/parallax.min.js"></script>
	<script src="${path}/resources/vendor/aos/dist/aos.js"></script>
	<!-- Main theme script-->
	<script src="${path}/resources/js/theme.min.js"></script>
	<%@ include file="../../common/footer.jsp"%>