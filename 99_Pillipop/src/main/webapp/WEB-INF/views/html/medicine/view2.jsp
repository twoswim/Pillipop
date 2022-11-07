<%@page import="com.kh.pillipop.medicine.model.vo.Medicine2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
	<head>
	<meta charset="utf-8" />
	<title>Pillipop | 낱알 정보</title>
	<!-- Viewport-->
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!-- ajax -->
	<script src="https://code.jquery.com/jquery-latest.js"></script>
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
			-webkit-transition: all 0.4s 0.2s ease-in-out;
			transition: all 0.4s 0.2s ease-in-out;
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
			-webkit-transition: opacity 0.2s ease-in-out;
			transition: opacity 0.2s ease-in-out;
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
			margin-bottom: 0.75rem;
			vertical-align: text-bottom;
			background-color: #d7dde2;
			border-radius: 50%;
			opacity: 0;
			-webkit-animation: spinner 0.75s linear infinite;
			animation: spinner 0.75s linear infinite;
		}

        @-webkit-keyframes spinner {
            0% {
                -webkit-transform: scale(0);
                transform: scale(0);
            }

            50% {
                opacity: 1;
                -webkit-transform: none;
                transform: none;
            }
        }

        @keyframes spinner {
            0% {
                -webkit-transform: scale(0);
                transform: scale(0);
            }

            50% {
                opacity: 1;
                -webkit-transform: none;
                transform: none;
            }
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
                },1500);
            };
        })();
    </script>
	<!-- checkbox selectOne-->
	<script type="text/javascript">
        function selectOne(a) {
            var obj = document.getElementsByName('categories');
            for (var i = 0; i < obj.length; i++) {
                if (obj[i] != a) {
                    obj[i].checked = false;
                }
            }
        }
    </script>
	<!-- Vendor styles-->
	<link rel="stylesheet" media="screen"
		href="${path}/resources/vendor/nouislider/dist/nouislider.min.css" />
	<link rel="stylesheet" media="screen"
		href="${path}/resources/vendor/swiper/swiper-bundle.min.css" />
	<!-- Main Theme Styles + Bootstrap-->
	<link rel="stylesheet" media="screen"
		href="${path}/resources/css/theme.min.css" />
	<!-- header/footer css -->
	<link rel="stylesheet" media="screen"
		href="${path}/resources/css/0_headerfooter.css" />
	<!-- swim css -->
	<link rel="stylesheet" media="screen"
		href="${path}/resources/css/6_swim.css" />
	</head>
	<!-- Body-->

	<body class="font-NanumR">
	    <%@ include file="../../common/loading.jsp" %>
		<!-- Page wrapper-->
		<main class="page-wrapper">
	
			<!-- Header start-->
			<%@ include file="../../common/header.jsp"%>
			<!-- Header end-->
	
			<!-- Page content-->
			<section class="container py-5 mt-5 mb-sm-2 mb-lg-3 mb-xl-4 mb-xxl-5">
				<!-- Breadcrumb-->
				<nav aria-label="breadcrumb">
					<ol class="pt-lg-3 pb-2 pb-md-4 breadcrumb">
						<li class="breadcrumb-item"><a href="${path}">홈</a></li>
						<li class="breadcrumb-item"><a href="${path}/medicine/list2">낱알검색</a></li>
						<li class="breadcrumb-item breadcrumb-item-new active"
							aria-current="page">약 상세보기</li>
					</ol>
				</nav>
				<section class="container">
					<div class="container">
						<!-- Item-->
						<div class="row align-items-center">
							<div class="col-xxl-6 order-md-2 mt-5">
								<img class="d-block position-relative"
									src="${path}/resources/img/drug_detail/circles.png"
									style="width: 1000px; height: max-content" /> <img
									class="d-block position-absolute zindex-1 rounded-2"
									src="${medicine2.ITEM_IMAGE}"
									style="width: 550px; height: 300px; top: 35%; left: 55%" />
							</div>
							<div class="breadcrumb mb-0">
								<h1 style="color: #EFBE6F;">|</h1>
								&nbsp;&nbsp;&nbsp;
								<h1 style="color: #1E4D56">${medicine2.ITEM_NAME}</h1>
								&nbsp;&nbsp;&nbsp;
								<c:if test="${medicine.itemSeq != null}">
									<button class="btn rounded-5 mt-2" type="button" id="btn-add"
										onclick="location.href='${path}/medicine/view?itemSeq=${medicine2.ITEM_SEQ}'"
										style="width: 95px; height: 35px; background-color: #1E4D56">더 보기
									</button>
								</c:if>
							</div>
							<div class="col-md-6">
								<div class="pe-md-4 pe-lg-0">
									<div class="row row-cols-1 row-cols-sm-2 g-4">
										<div class="col mb-4">
											<div class="text-muted mb-2">품목코드</div>
											<span class="text-dark fw-semibold">
												${medicine2.ITEM_SEQ} </span>
										</div>
										<div class="col mb-4"></div>
										<div class="col mb-4">
											<div class="text-muted mb-2">색깔</div>
											<span class="text-dark fw-semibold">
												${medicine2.ITEM_COLOR} </span>
										</div>
										<div class="col mb-4">
											<div class="text-muted mb-2">의약품 모양</div>
											<span class="text-dark fw-semibold">
												${medicine2.DRUG_SHAPE} </span>
										</div>
										<div class="col mb-4">
											<div class="text-muted mb-2">표시</div>
											<span class="text-dark fw-semibold">
												${medicine2.ITEM_PRINT} </span>
										</div>
										<div class="col mb-4">
											<div class="text-muted mb-2">분할선</div>
											<span class="text-dark fw-semibold">
												${medicine2.ITEM_LINE} </span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</section>
		</main>
	
		<!-- Footer start -->
		<%@ include file="../../common/footer.jsp"%>
		<!-- Footer end -->
	
		<!-- Vendor scripts: js libraries and plugins-->
		<script
			src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
		<script
			src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
		<script
			src="${path}/resources/vendor/nouislider/dist/nouislider.min.js"></script>
		<script src="${path}/resources/vendor/swiper/swiper-bundle.min.js"></script>
		<!-- Main theme script-->
		<script src="${path}/resources/js/theme.min.js"></script>
		<script>
	        (function clickCheck(target) {
	            document.querySelectorAll(`input[type=checkbox]`).forEach((el) => (el.checked = false));
	            target.checked = true;
	        });
	    </script>
	</body>

</html>