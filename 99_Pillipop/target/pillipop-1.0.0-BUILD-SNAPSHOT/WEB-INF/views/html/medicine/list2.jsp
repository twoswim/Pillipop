<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.kh.pillipop.medicine.model.vo.Medicine2"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<% List<Medicine2> list = (List<Medicine2>)request.getAttribute("list"); %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8" />
	<title>Search Medicine</title>
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
	
	input[type="checkbox"] {
    	width: 1rem;
    	height: 1rem;
	    border-radius: 40%;
	    border: 1px solid #999;
	    appearance: none;
	    cursor: pointer;
  	}

	input[type="checkbox"]:checked {
	   	background-color: #86CBC0;
	  	border: none;
	}
	#chk:checked + .circle:after{ opacity: 1; }	
	
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
	<script>
	    function doOpenCheck(chk) {
	        var obj = document.getElementsByName('img');
	        for (var i = 0; i < obj.length; i++) {
	            if (obj[i] != chk) {
	                obj[i].checked = false;
	            }
	        }
	    }
	    function doOpenCheck2(chk) {
	        var obj = document.getElementsByName('shape');
	        for (var i = 0; i < obj.length; i++) {
	            if (obj[i] != chk) {
	                obj[i].checked = false;
	            }
	        }
	    }
	    function doOpenCheck3(chk) {
	        var obj = document.getElementsByName('line');
	        for (var i = 0; i < obj.length; i++) {
	            if (obj[i] != chk) {
	                obj[i].checked = false;
	            }
	        }
	    }
	    function doOpenCheck4(chk) {
	        var obj = document.getElementsByName('color');
	        for (var i = 0; i < obj.length; i++) {
	            if (obj[i] != chk) {
	                obj[i].checked = false;
	            }
	        }
	    }
    </script>
    <!-- swim css -->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/6_swim.css" />
	<!-- Vendor styles-->
	<link rel="stylesheet" media="screen"
		href="${path}/resources/vendor/nouislider/dist/nouislider.min.css" />
	<link rel="stylesheet" media="screen"
		href="${path}/resources/vendor/swiper/swiper-bundle.min.css" />
	<!-- Main Theme Styles + Bootstrap-->
	<link rel="stylesheet" media="screen"
		href="${path}/resources/css/theme.min.css" />
	<!-- header/footer css -->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/0_headerfooter.css" />
</head>

<!-- Body-->
<body class="font-NanumR">
	<!-- Page loading spinner-->
	<div class="page-loading active">
		<div class="page-loading-inner">
			<div class="page-spinner"></div>
			<span>Loading...</span>
		</div>
	</div>
	<!-- Page wrapper-->
	<main class="page-wrapper">

		<!-- header start -->
		<%@ include file="../../common/header.jsp" %>
		<!-- header end -->

		<!-- Page content-->
		<div class="container py-5 mt-5 mb-lg-4 mb-xl-5">
			<nav aria-label="breadcrumb">
				<ol class="pt-lg-3 pb-2 breadcrumb">
					<li class="breadcrumb-item"><a href="${path}">홈</a></li>
					<li class="breadcrumb-item breadcrumb-item-new active" aria-current="page">낱알 검색</li>
				</ol>
			</nav>
			<div class="row pb-2 pb-sm-4">
				<div class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4 bg-secondary rounded-3">
					<div class="offcanvas-lg offcanvas-end" id="shopSidebar">
						<div class="offcanvas-header">
							<h5 class="offcanvas-title">Filters</h5>
							<button class="btn-close" type="button"
								data-bs-dismiss="offcanvas" data-bs-target="#shopSidebar"></button>
						</div>
						<div class="offcanvas-body pt-2 pt-lg-0 pe-lg-4 m-lg-2">
							<!-- Categories (accordion with checkboxes)-->
							<div class="accordion accordion-alt pb-2" id="shopCategories">
								<div class="accordion-item mb-0">
									<h4 class="accordion-header">
										<span class="fs-base">식별표시</span>
									</h4>
									<div class="accordion-collapse collapse show" id="livingRoom"
										data-bs-parent="#shopCategories">
										<div class="accordion-body py-1 mb-1">
											<fieldset>
												<input class="form-check-input form-check-input-new form-check-input form-check-input-new align-middle" value=""
													type="checkbox" name="img" onclick="doOpenCheck(this);" checked/>
													<label> <img class="rounded-5"
													src="${path}/resources/img/6_swim/white.png" 
													style="width: 40px; background-color: white" /></label> 
												<input class="form-check-input form-check-input-new align-middle" value="147938640332900187"
													type="checkbox" name="img" onclick="doOpenCheck(this);"/>
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938640332900187"
													style="width: 40px" /></label> 
												<input class="form-check-input form-check-input-new align-middle" value="147938640332900133"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938640332900133"
													style="width: 40px" /></label> 
												<input class="form-check-input form-check-input-new align-middle" value="147938640332900148"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938640332900148"
													style="width: 40px" /></label> 
												<input class="form-check-input form-check-input-new align-middle" value="147938657883200066"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938657883200066"
													style="width: 40px" /></label> 
												<input class="form-check-input form-check-input-new align-middle" value="147938661567700040"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938661567700040"
													style="width: 40px" /></label> 
												<input class="form-check-input form-check-input-new align-middle" value="147938647484100029"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938647484100029"
													style="width: 40px" /></label> 
												<input class="form-check-input form-check-input-new align-middle" value="147938661567700130"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938661567700130"
													style="width: 40px" /></label> 
												<input class="form-check-input form-check-input-new align-middle" value="147938661567700034"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938661567700034"
													style="width: 40px" /></label> 
												<input class="form-check-input form-check-input-new align-middle" value="147938650963600067"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938650963600067"
													style="width: 40px" /></label> 
												<input class="form-check-input form-check-input-new align-middle" value="147938647484100120"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938647484100120"
													style="width: 40px" /></label> 
												<input class="form-check-input form-check-input-new align-middle" value="147938661567700070"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938661567700070"
													style="width: 40px" /></label> 
											</fieldset>
											<fieldset>
												<input class="form-check-input form-check-input-new align-middle" value="147938654295100080"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938654295100080"
													style="width: 40px" /></label>
												<input class="form-check-input form-check-input-new align-middle" value="147938644048800089"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938644048800089"
													style="width: 40px" /></label> 
												<input class="form-check-input form-check-input-new align-middle" value="147938647484100165"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938647484100165"
													style="width: 40px" /></label> 
												<input class="form-check-input form-check-input-new align-middle" value="147938650963600181"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938650963600181"
													style="width: 40px" /></label> 
												<input class="form-check-input form-check-input-new align-middle" value="147938640332900079"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938640332900079"
													style="width: 40px" /></label>
												<input class="form-check-input form-check-input-new align-middle" value="147938665320000113"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938665320000113"
													style="width: 40px" /></label> 
												<input class="form-check-input form-check-input-new align-middle" value="147938665320000011"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938665320000011"
													style="width: 40px" /></label> 
												<input class="form-check-input form-check-input-new align-middle" value="147938657883300006"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938657883300006"
													style="width: 40px" /></label> 
												<input class="form-check-input form-check-input-new align-middle" value="147938640332900160"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938640332900160"
													style="width: 40px" /></label> 
												<input class="form-check-input form-check-input-new align-middle" value="147938661567700085"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938661567700085"
													style="width: 40px" /></label> 
												<input class="form-check-input form-check-input-new align-middle" value="147938644048800119"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/147938644048800119"
													style="width: 40px" /></label>
												<input class="form-check-input form-check-input-new align-middle" value="없음"
													type="checkbox" name="img" onclick="doOpenCheck(this);" />
													<label> <img class="rounded-5"
													src="https://www.pharm.or.kr:442/images/sb_photo/mark/r0391.gif"
													style="width: 40px" /></label>
											</fieldset>
										</div>
									</div>
								</div>
								<hr />
								<div class="accordion-item mb-0">
									<h4 class="accordion-header mb-2 mt-2">
										<span class="fs-base">의약품 모양</span>
									</h4>
									<div class="accordion-collapse collapse show" id="bathroom"
										data-bs-parent="#shopCategories">
										<div class="accordion-body py-1 mb-1">
											<fieldset>
												<input class="form-check-input form-check-input-new align-middle" type="checkbox"
													value="" name="shape" onclick="doOpenCheck2(this);" checked />
												<label><span class="text-nav fw-medium">전체</span></label> 
												<input class="form-check-input form-check-input-new align-middle" type="checkbox"
													value="원형" name="shape" onclick="doOpenCheck2(this);" /> 
												<label><span class="text-nav fw-medium">원형</span></label> 
												<input class="form-check-input form-check-input-new align-middle" type="checkbox"
													value="타원형" name="shape" onclick="doOpenCheck2(this);" />
												<label><span class="text-nav fw-medium">타원형</span></label> 
												<input class="form-check-input form-check-input-new align-middle" type="checkbox"
													value="장방형" name="shape" onclick="doOpenCheck2(this);" />
												<label><span class="text-nav fw-medium">장방형</span></label> 
												<input class="form-check-input form-check-input-new align-middle" type="checkbox"
													value="삼각형" name="shape" onclick="doOpenCheck2(this);" />
												<label><span class="text-nav fw-medium">삼각형</span></label> 
												<input class="form-check-input form-check-input-new align-middle" type="checkbox"
													value="사각형" name="shape" onclick="doOpenCheck2(this);" />
												<label><span class="text-nav fw-medium">사각형</span></label> 
												<input class="form-check-input form-check-input-new align-middle" type="checkbox"
													value="마름모형" name="shape" onclick="doOpenCheck2(this);" />
												<label><span class="text-nav fw-medium">마름모형</span></label>
												<input class="form-check-input form-check-input-new align-middle" type="checkbox"
													value="오각형" name="shape" onclick="doOpenCheck2(this);" />
												<label><span class="text-nav fw-medium">오각형</span></label> 
												<input class="form-check-input form-check-input-new align-middle" type="checkbox"
													value="팔각형" name="shape" onclick="doOpenCheck2(this);" />
												<label><span class="text-nav fw-medium">팔각형</span></label>
											</fieldset>
										</div>
									</div>
								</div>
								<hr />
								<div class="accordion-item mb-0">
									<h4 class="accordion-header mb-2 mt-2">
										<span class="fs-base">분할선</span>
									</h4>
									<div class="accordion-collapse collapse show" id="bedroom"
										data-bs-parent="#shopCategories">
										<div class="accordion-body py-1 mb-1">
											<fieldset>
												<input class="form-check-input form-check-input-new align-middle" type="checkbox" value="" name="line" 
													onclick="doOpenCheck3(this);" checked /> 
												<label><span class="text-nav fw-medium">전체</span></label> 
												<input class="form-check-input form-check-input-new align-middle" type="checkbox" value="-" name="line"
													onclick="doOpenCheck3(this);" /> 
												<label><span class="text-nav fw-medium">(-)형</span></label>
											</fieldset>
										</div>
									</div>
								</div>
								<hr />
								<div class="accordion-item mb-0">
									<h4 class="accordion-header mb-2 mt-2">
										<span class="fs-base">색상</span>
									</h4>
									<div class="d-flex pb-2 mb-0">
										<div class="me-2 mb-2">
											<input class="btn-check" type="checkbox" value=""
												id="rainbow" name="color" onclick="doOpenCheck4(this);"
												checked /> <label
												class="btn btn-icon btn-sm btn-outline-mint rounded-circle"
												for="rainbow"><span class="d-block rounded-circle"
												style="width: 1.5rem; height: 1.5rem; background-image: linear-gradient(90deg, red, orange, yellow, green, blue, navy, purple)"></span></label>
										</div>
										<div class="me-2 mb-2">
											<input class="btn-check" type="checkbox" value="하양"
												id="white" name="color" onclick="doOpenCheck4(this);"/> <label
												class="btn btn-icon btn-sm btn-outline-mint rounded-circle"
												for="white"><span class="d-block rounded-circle"
												style="width: 1.5rem; height: 1.5rem; background-color: white"></span></label>
										</div>
										<div class="me-2 mb-2">
											<input class="btn-check" type="checkbox" value="노랑"
												id="yellow" name="color" onclick="doOpenCheck4(this);" /> <label
												class="btn btn-icon btn-sm btn-outline-mint rounded-circle"
												for="yellow"><span class="d-block rounded-circle"
												style="width: 1.5rem; height: 1.5rem; background-color: yellow"></span></label>
										</div>
										<div class="me-2 mb-2">
											<input class="btn-check" type="checkbox" value="주황"
												id="orange" name="color" onclick="doOpenCheck4(this);" /> <label
												class="btn btn-icon btn-sm btn-outline-mint rounded-circle"
												for="orange"><span class="d-block rounded-circle"
												style="width: 1.5rem; height: 1.5rem; background-color: orange"></span></label>
										</div>
										<div class="me-2 mb-2">
											<input class="btn-check" type="checkbox" value="분홍"
												id="pink" name="color" onclick="doOpenCheck4(this);" /> <label
												class="btn btn-icon btn-sm btn-outline-mint rounded-circle"
												for="pink"><span class="d-block rounded-circle"
												style="width: 1.5rem; height: 1.5rem; background-color: pink"></span></label>
										</div>
										<div class="me-2 mb-2">
											<input class="btn-check" type="checkbox" value="빨강"
												id="red" name="color" onclick="doOpenCheck4(this);" /> <label
												class="btn btn-icon btn-sm btn-outline-mint rounded-circle"
												for="red"><span
												class="d-block bg-size-cover bg-position-center rounded-circle"
												style="width: 1.5rem; height: 1.5rem; background-color: red"></span></label>
										</div>
										<div class="me-2 mb-2">
											<input class="btn-check" type="checkbox" value="갈색"
												id="brown" name="color" onclick="doOpenCheck4(this);" /> <label
												class="btn btn-icon btn-sm btn-outline-mint rounded-circle"
												for="brown"><span
												class="d-block bg-size-cover bg-position-center rounded-circle"
												style="width: 1.5rem; height: 1.5rem; background-color: brown"></span></label>
										</div>
										<div class="me-2 mb-2">
											<input class="btn-check" type="checkbox" value="연두"
												id="greenyellow" name="color" onclick="doOpenCheck4(this);" /> <label
												class="btn btn-icon btn-sm btn-outline-mint rounded-circle"
												for="greenyellow"><span
												class="d-block bg-size-cover bg-position-center rounded-circle"
												style="width: 1.5rem; height: 1.5rem; background-color: greenyellow"></span></label>
										</div>
										<div class="me-2 mb-2">
											<input class="btn-check" type="checkbox" value="초록"
												id="green" name="color" onclick="doOpenCheck4(this);" /> <label
												class="btn btn-icon btn-sm btn-outline-mint rounded-circle"
												for="green"><span
												class="d-block bg-size-cover bg-position-center rounded-circle"
												style="width: 1.5rem; height: 1.5rem; background-color: green"></span></label>
										</div>
										<div class="me-2 mb-2">
											<input class="btn-check" type="checkbox" value="청록"
												id="turquoise" name="color" onclick="doOpenCheck4(this);" />
											<label
												class="btn btn-icon btn-sm btn-outline-mint rounded-circle"
												for="turquoise"><span
												class="d-block bg-size-cover bg-position-center rounded-circle"
												style="width: 1.5rem; height: 1.5rem; background-color: turquoise"></span></label>
										</div>
										<div class="me-2 mb-2">
											<input class="btn-check" type="checkbox" value="파랑"
												id="blue" name="color" onclick="doOpenCheck4(this);" /> <label
												class="btn btn-icon btn-sm btn-outline-mint rounded-circle"
												for="blue"><span
												class="d-block bg-size-cover bg-position-center rounded-circle"
												style="width: 1.5rem; height: 1.5rem; background-color: blue"></span></label>
										</div>
										<div class="me-2 mb-2">
											<input class="btn-check" type="checkbox" value="보라"
												id="violet" name="color" onclick="doOpenCheck4(this);" />
											<label
												class="btn btn-icon btn-sm btn-outline-mint rounded-circle"
												for="violet"><span
												class="d-block bg-size-cover bg-position-center rounded-circle"
												style="width: 1.5rem; height: 1.5rem; background-color: violet"></span></label>
										</div>
										<div class="me-2 mb-2">
											<input class="btn-check" type="checkbox" value="검정"
												id="black" name="color" onclick="doOpenCheck4(this);" />
											<label
												class="btn btn-icon btn-sm btn-outline-mint rounded-circle"
												for="black"><span
												class="d-block bg-size-cover bg-position-center rounded-circle"
												style="width: 1.5rem; height: 1.5rem; background-color: black"></span></label>
										</div>
									</div>
								</div>
							</div>
							<div class="col-12 d-flex justify-content-end">
								<button class="btn ms-3 rounded-1 border-0" type="button"
									id="ajaxSend1" style="background-color: #86cbcd">
									검색<i class="ai-search" style="margin-left: 10px"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<!-- Active filters + Sorting-->
					<div class="d-flex align-items-start justify-content-between mb-4">
						<div class="me-3">제품결과 리스트(아무개)</div>
						<div class="d-flex align-items-center flex-shrink-0 mb-2">
						</div>
					</div>
					<!-- Item-->
					<div class="table-responsive pt-1" id="MedicineList"></div>
					<script>
			        $('#ajaxSend1').click(() => {
			            let inputValue = $('input[name="img"]:checked').val();
			            let inputValue2 = $('input[name="shape"]:checked').val();
			            let inputValue3 = $('input[name="line"]:checked').val();
			            let inputValue4 = $('input[name="color"]:checked').val();
		                $.ajax({
		                    // 객체 영역
		                	async: true,
		                    // 1. type 셋팅 : get,post
		                    type: 'get',
		                    // 2. URL
		                    url: 'jqAjax2.do',
		                    // 3. 파라메터
		                    data: {
		                    	inputValue: inputValue,
		                    	inputValue2: inputValue2,
		                    	inputValue3: inputValue3,
		                    	inputValue4: inputValue4
		                    },
		                    // 4. success 리스너 등록 : 성공했을 경우 실행되는 메소드
		                    success: (list) => {
		                        str = '<table class="table align-middle" style="min-width: 450px"><hr>';
		                        str += '<tr class="border-1 text-center">'
		                        str += '<th class="py-2 text-center" style="width: 15%">식별이미지</th>'
		                        str += '<th class="py-2 text-center" style="width: 30%">품목명</th>'
		                        str += '<th class="py-2 text-center" style="width: 15%">품목코드</th>'
		                        str += '<th class="py-2 text-center" style="width: 15%">회사명</th>'
		                        str += '<th class="py-2 text-center" style="width: 15%">찜</th>'
		                        str += '</tr>'
		                        $.each(list, (i, obj) => {
		                        	str += '<tr class="border-1">'
		                            str += '<td class="py-1" style="width: 15%">' 
		                            	+ '<div class="d-flex align-items-center">' 
		                            	+ '<a class="d-inline-block flex-shrink-0 rounded-1 p-md-2 p-lg-3 text-center" href="'
		                            	+ '${path}'
		                            	+ '/info2?ITEM_SEQ='
		                            	+ obj.ITEM_SEQ
		                            	+ '">'
		                            	+ '<img class="rounded-1" src="'
		                            	+ obj.ITEM_IMAGE
		                            	+ '" width="140" />'
		                            	+ '</a></div></td>'
		                            str += '<td class="py-1" style="width: 30%">' 
		                            	+ '<div class="ps-3 ps-sm-1">'
		                            	+ '<h4 class="h6 mb-0" style="padding-left: 30px">'
		                            	+ '<a href="'
		                            	+ '${path}'
		                            	+ '/info2?ITEM_SEQ='
		                            	+ obj.ITEM_SEQ
		                            	+ '">'
		                            	+ obj.ITEM_NAME 
		                            	+ '</a></h4></div></td>';
		                            str += '<td class="py-1" style="width: 20%">' 
		                            	+ '<div class="fs-sm fw-medium text-dark text-center">'
		                            	+ '<h4 class="h6 mb-0">&nbsp;&nbsp;'
		                            	+ obj.ITEM_SEQ 
		                            	+ '</h4></div></td>';
		                            str += '<td class="py-1" style="width: 20%">' 
		                            	+ '<div class="fs-sm fw-medium text-dark text-center">'	
		                            	+ '<h4 class="h6 mb-0">'
		                            	+ obj.ENTP_NAME 
		                            	+ '</h4></div></td>';
		                            str += '<td class="py-1" style="width: 15%">' 
		                            	+ '<div class="fs-sm fw-medium text-dark">'	
		                            	+ '<h4 class="h6 mb-0">'
		                            	+ '<a class="nav-link fs-3" style="padding-left: 4.5rem" href="#" data-bs-toggle="tooltip" title="찜 목록에 추가">'
                                        + '<i class="ai-heart">'
		                            	+ '</i></a></h4><div></td>';
		                            str += '</tr>'
		                        });
		                        str += '</table>';
		                        $('#MedicineList').html(str);
		                    },
		                    // 5. error 리스너 등록 : 실패했을 경우 실행되는 메소드
		                    error: (e) => {
		                        $('#MedicineList').html('에러 발생!!');
		                        console.log(e);
		                    },
		                });
		            });
		        </script>
					<!-- Pagination-->
					<div class="row gy-3 align-items-center pt-3 pt-sm-4 mt-md-2">
						<div class="col col-md-4 col-6 order-md-1 order-1">
							<div class="d-flex align-items-center">
								<span class="text-muted fs-sm">Show</span> <select
									class="form-select form-select-flush w-auto">
									<option value="10">10</option>
									<option value="20">20</option>
									<option value="30">30</option>
								</select>
							</div>
						</div>
						<div class="col col-md-4 col-12 order-md-3 order-2">
							<nav aria-label="Page navigation">
								<ul class="pagination pagination-sm justify-content-center">
									<li class="page-item active" aria-current="page"><span
										class="page-link">1<span class="visually-hidden">(current)</span></span>
									</li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">4</a></li>
									<li class="page-item"><a class="page-link" href="#">5</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>

	<!-- Footer start -->
	<%@ include file="../../common/footer.jsp" %>
	<!-- Footer end -->

	<!-- Vendor scripts: js libraries and plugins-->
	<script
		src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
	<script
		src="${path}/resources/vendor/jarallax/dist/jarallax.min.js"></script>
	<script
		src="${path}/resources/vendor/flatpickr/dist/flatpickr.min.js"></script>
	<script
		src="${path}/resources/vendor/swiper/swiper-bundle.min.js"></script>
	<script
		src="${path}/resources/vendor/lightgallery/lightgallery.min.js"></script>
	<script
		src="${path}/resources/vendor/lightgallery/plugins/video/lg-video.min.js"></script>
	<script
		src="${path}/resources/vendor/lightgallery/plugins/fullscreen/lg-fullscreen.min.js"></script>
	<script
		src="${path}/resources/vendor/lightgallery/plugins/zoom/lg-zoom.min.js"></script>
	<script
		src="${path}/resources/vendor/lightgallery/plugins/thumbnail/lg-thumbnail.min.js"></script>
	<script
		src="${path}/resources/vendor/aos/dist/aos.js"></script>
	<script
		src="${path}/resources/vendor/leaflet/dist/leaflet.js"></script>
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