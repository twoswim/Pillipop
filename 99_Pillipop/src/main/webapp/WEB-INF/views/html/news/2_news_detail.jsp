<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
	
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>pillipop | News Detail</title>
<!-- 타이틀/아이콘 -->
    <meta name="description" content="Around - Multipurpose Bootstrap HTML Template">
    <meta name="keywords" content="bootstrap, business, corporate, coworking space, services, creative agency, dashboard, e-commerce, mobile app showcase, saas, multipurpose, product landing, shop, software, ui kit, web studio, landing, dark mode, html5, css3, javascript, gallery, slider, touch, creative">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="icon" type="image/png" sizes="32x32" href="${path}/resources/img/0_headerfooter/logo.png">
    <link rel="icon" type="image/png" sizes="16x16" href="${path}/resources/img/0_headerfooter/logo.png">
    <link rel="manifest" href="${path}/resources/favicon/site.webmanifest">
    <link rel="mask-icon" color="#6366f1" href="${path}/resources/favicon/safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#080032">
    <meta name="msapplication-config" content="${path}/resources/favicon/browserconfig.xml">
    <meta name="theme-color" content="white">


<!-- Page loading scripts-->


<!-- Vendor styles-->
<!-- Main Theme Styles + Bootstrap-->
<link rel="stylesheet" media="screen" href="${path}/resources/css/theme.min.css">
<!-- css추가 -->
<link rel="stylesheet" href="${path}/resources/css/2_product.css">
<!-- 0_headerfooter -->
<link rel="stylesheet" media="screen" href="${path}/resources/css/headerfooter.css">
<link rel="stylesheet" media="screen" href="${path}/resources/css/0_headerfooter.css">
</head>
<!-- Body-->

<body>
	<style>
body {
	font-family: "NanumSquareR";
}
</style>

	<!-- Page loading spinner-->
	<%@ include file="../../common/loading.jsp" %>    
	
	<!-- Page content-->
	
	<%-- header --%>
	<%@ include file="../../common/header.jsp" %>
	
        <!-- Page header-->
        <section class="container py-5_new mt-5 mb-md-2 mb-lg-3 mb-xl-4">
            <!-- Breadcrumb-->
            <nav aria-label="breadcrumb">
                <ol class="pt-lg-3 pb-lg-4 pb-2 breadcrumb font-NanumB">
                    <li class="breadcrumb-item"><a href="${path}">홈</a></li>
                    <li class="breadcrumb-item">커뮤니티</li>
                    <li class="breadcrumb-item"><a href="${path}/news/newslist">스토리</a></li>
                    <li class="breadcrumb-item active" aria-current="page">스토리 소리</li>
                </ol>
            </nav>
        </section>

        <!-- Post content-->
        <section class="container mt-md-2 mt-lg-3 mt-xl-4">
			<div class="row justify-content-center pt-xxl-2">
                <div class="col-lg-9 col-xl-8">
                    <div class="d-flex flex-wrap align-items-center mt-n2">
                       	<a class="badge text-nav fs-xs border mt-2" href="#">${news.st_cate}</a><span class="fs-xs opacity-20 mt-2 mx-3">|</span>
                        	<span class="fs-sm text-muted mt-2">${news.st_date}</span><span class="fs-xs opacity-20 mt-2 mx-3">|</span>
                        	
                        		<!-- 본문 내용 -->
								<p>${news.st_content1}</p>
								<p>${news.st_content2}</p>
								<p>${news.st_content3}</p>
								<p>${news.st_content4}</p>
								<p>${news.st_content5}</p>
                        	
                     </div>
                </div>
            </div>
        </section>
    </main>
    
    <!-- Back to top button-->
    <a class="btn-scroll-top" href="#top" data-scroll>
        <svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
      </svg><i class="ai-arrow-up"></i></a>
    <!-- Vendor scripts: js libraries and plugins-->
    <script src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js "></script>
    <script src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js "></script>
    <script src="${path}/resources/vendor/jarallax/dist/jarallax.min.js "></script>
    <script src="${path}/resources/vendor/swiper/swiper-bundle.min.js "></script>
    <!-- 제품 항목 -->
    <script src="${path}/resources/vendor/imagesloaded/imagesloaded.pkgd.min.js "></script>
    <script src="${path}/resources/vendor/shufflejs/dist/shuffle.min.js "></script>
    <!-- Main theme script-->
    <script src="${path}/resources/js/theme.min.js "></script>
</body>
</html>