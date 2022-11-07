<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Pillipop | Like</title>
<!-- ajax -->
<script src="https://code.jquery.com/jquery-latest.js"></script>
<!-- 타이틀/아이콘 -->
<meta name="description"
	content="Around - Multipurpose Bootstrap HTML Template">
<meta name="keywords"
	content="bootstrap, business, corporate, coworking space, services, creative agency, dashboard, e-commerce, mobile app showcase, saas, multipurpose, product landing, shop, software, ui kit, web studio, landing, dark mode, html5, css3, javascript, gallery, slider, touch, creative">
<meta name="author" content="Createx Studio">
<!-- Viewport-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<link rel="icon" type="image/png" sizes="32x32"
	href="${path}/resources/img/0_headerfooter/logo.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="${path}/resources/img/0_headerfooter/logo.png">
<link rel="manifest" href="${path}/resources/favicon/site.webmanifest">
<link rel="mask-icon" color="#6366f1"
	href="${path}/resources/favicon/safari-pinned-tab.svg">
<meta name="msapplication-TileColor" content="#080032">
<meta name="msapplication-config"
	content="${path}/resources/favicon/browserconfig.xml">
<meta name="theme-color" content="white">
<!-- Main Theme Styles + Bootstrap-->
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/theme.min.css">
<!--headerfooter -->
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/headerfooter.css">
<!-- 1_StoreMain -->
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/1_news.css">
<!-- 2_product -->
<link rel="stylesheet" href="${path}/resources/css/2_product.css">
<!-- CSS -->
<link rel="stylesheet" href="${path}/resources/css/5_myPage.css">
<!-- 0_headerfooter -->
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/headerfooter.css">
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/0_headerfooter.css">
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

</style>
<!-- Page loading scripts-->
<script>
      (function () {
        window.onload = function () {
          const preloader = document.querySelector('.page-loading');
          preloader.classList.remove('active');
          setTimeout(function () {
            preloader.remove();
          }, 1500);
        };
      })();
      
    </script>
<!-- Vendor styles-->
<link rel="stylesheet" media="screen"
	href="${path}/resources/vendor/swiper/swiper-bundle.min.css" />
<!-- Main Theme Styles + Bootstrap-->
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/theme.min.css">
<!-- CSS -->
<link rel="stylesheet" href="${path}/resources/css/5_myPage.css">
</head>
<!-- Body-->
<body class="bg-secondary_new2 font-NanumR">
	<%@ include file="../../common/loading.jsp" %>
	<!-- Page wrapper-->
	<main class="page-wrapper">
		<!-- Navbar. Remove 'fixed-top' class to make the navigation bar scrollable with the page-->
		<%-- header --%>
		<%@ include file="../../common/header.jsp"%>
		<!-- Page content-->
		<div class="container py-5 mt-4 mt-lg-5 mb-lg-4 my-xl-5">
			<div class="row pt-sm-2 pt-lg-0">
				<!-- Breadcrumb-->
				<nav aria-label="breadcrumb">
					<ol class="pt-lg-3 pb-2 pb-md-4 breadcrumb">
						<li class="breadcrumb-item"><a href="index.html">홈</a></li>
						<li class="breadcrumb-item"><a href="shop-catalog.html">마이페이지</a></li>
						<li class="breadcrumb-item active mint">찜한 약/약국</li>
					</ol>
				</nav>
				<!-- Sidebar (offcanvas on sreens < 992px)-->
				 <%@ include file="../../common/aside.jsp" %>
				<!-- Page content1(찜한 약)-->
				<div class="col-lg-9 pt-4 pb-2 pb-sm-4">
					<div class="d-flex align-items-center mb-4">
						<h1 class="h2 mb-0">
							찜한 약
							<c:set var="count" value="0" /> 
							<c:forEach var="list" items="${list}">
								<c:if test="${list.u_no eq loginMember.u_no}">
									<c:set var="count" value="${count+1}" />
								</c:if>
							</c:forEach>
							<span class='fs-base fw-normal text-muted'>(<c:out value="${count}" /> items)</span>
						</h1>
					</div>
					<div class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4">
						<div class="card-body pb-4">
							<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
								
								<!-- Item-->
								<c:forEach var="list" items="${list}">
									<c:if test="${list.u_no eq loginMember.u_no}">
										<div class="col pb-2 pb-sm-3">
											<div class="card-hover position-relative bg-secondary rounded-1 mb-3">
												<a class="btn btn-icon btn-sm border-0 rounded-circle position-absolute zindex-5 opacity-0" 
													style="margin-left: 225px"
													type="button" id="${list.itemSeq}" data-value="${list.itemSeq}">
													<i class="ai-trash fs-xl text-danger"></i>
												</a>
												<div class="swiper swiper-nav-onhover"
													data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}">
													<a class="swiper-wrapper" href="${path}/medicine/view?itemSeq=${list.itemSeq}">
														<img src="${list.itemImage}" class="FavoriteDrugImg" alt="Product">
													</a>
												</div>
											</div>
											<div class="d-flex mb-1">
												<h3 class="h6 mb-0">
													<a href="${path}/medicine/view?itemSeq=${list.itemSeq}">
														<c:if test="${fn:length(list.itemName) <= '18'}">
						                                    <c:out value="${list.itemName}"/>
						                                 </c:if>
						                                 <c:if test="${fn:length(list.itemName) > '18'}">
						                                    <c:out value="${fn:substring(list.itemName,0,18) }"/>..
						                                 </c:if>
						                        	</a>
												</h3>
											</div>
											<div class="d-flex align-items-center">
												<span class="me-2">${list.entpName}</span>
											</div>
										</div>
									</c:if>
								</c:forEach>
								
							</div>
						</div>
					</div>
					<br>
					<br>
					<!-- Page content2(찜한 약국)-->
					<div class="d-flex align-items-center mb-4">
						<h1 class="h2 mb-0">
							찜한 약국 
							<c:set var="Pcount" value="0" />
							<c:forEach var="Plist" items="${Plist}">
								<c:if test="${Plist.u_no eq loginMember.u_no}">
									<c:set var="Pcount" value="${Pcount+1}" />
								</c:if>
							</c:forEach>
							<span class='fs-base fw-normal text-muted'>(<c:out value="${Pcount}" /> items)</span>
						</h1>
					</div>
					<div class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4">
						<div class="card-body pb-4">
							<div class="row row-cols-1">
								<!-- Flush list group -->
								<ul class="list-group list-group-flush">
									<!-- list -->
									<c:forEach var="Plist" items="${Plist}">
										<c:if test="${Plist.u_no eq loginMember.u_no}">
											<li class="list-group-item">
												<i class="ai-map-pin text-primary-mint lead pe-1 me-2"
												style="height: 40px; display: inline-block; float: left; margin: auto;"></i>
												<h3 class="h6 mb-0">
													<a href="${path}/pharmacy/detail?dutyNo=${Plist.dutyNo}">${Plist.dutyName}</a>
												</h3>
												<span class="me-2">${Plist.dutyAddr}</span>
											</li>
										</c:if>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%-- footer --%>
		<%@ include file="../../common/footer.jsp"%>
		<!-- Divider for dark mode only-->
		<hr class="d-none d-dark-mode-block">
		<!-- Sidebar toggle button-->
		<button
			class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom"
			data-bs-toggle="offcanvas" data-bs-target="#sidebarAccount">
			<i class="ai-menu me-2"></i>Account menu
		</button>
		<!-- Back to top button-->
		<a class="btn-scroll-top" href="#top" data-scroll> 
			<svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
	        	<circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
	      	</svg>
	      	<i class="ai-arrow-up"></i>
	    </a>
	</main>
	<script>
    	$(document).on('click', '.btn-icon', function() {
        	// 현재 로그인 상태면
        	if(${not empty loginMember}) {
        		let u_no 	= ${loginMember.u_no};
        		let itemSeq = $(this).attr("id");
        		
        		console.log("u_no: " + u_no);
                console.log("itemSeq: " + itemSeq);
	        	
                $.ajax({
	        		type: 'get',
	        		url: 'like.do',
	        		dataType: 'json',
	        		data: {
	        			u_no: u_no,
	        			itemSeq: itemSeq
	        		},
	        		success: function(result) {
	        			console.log(result);
	        			if(result.result == 0) {
		        			alert("찜 목록에서 제거되었습니다.");
		        			location.reload();
	        			}
	        		},
	        		erorr: function() {
	        			alert("잘못된 접근입니다.");
	        		},
	        	});
        	} else {
        		alert("로그인 후 이용 부탁드립니다.");
        	}
     	})
    </script>
	<!-- Vendor scripts: js libraries and plugins-->
	<script
		src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
	<!-- Main theme script-->
	<script src="${path}/resources/js/theme.min.js"></script>

</body>
</html>