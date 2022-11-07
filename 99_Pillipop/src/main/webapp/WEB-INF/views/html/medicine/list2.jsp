<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.kh.pillipop.medicine.model.vo.Medicine2"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8" />
	<title>Pillipop | 낱알 검색</title>
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
    <!-- swim css -->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/6_swim.css" />
</head>

<!-- Body-->
<body class="font-NanumR">
    <%@ include file="../../common/loading.jsp" %>
	<!-- Page wrapper-->
	<main class="page-wrapper">

		<!-- header start -->
		<%@ include file="../../common/header.jsp" %>
		<!-- header end -->

		<!-- Page content-->
		<div class="container mt-5">
			<nav aria-label="breadcrumb">
				<ol class="pt-lg-5 breadcrumb">
					<li class="breadcrumb-item"><a href="${path}">홈</a></li>
					<li class="breadcrumb-item breadcrumb-item-new active" aria-current="page">낱알 검색</li>
				</ol>
			</nav>
			<div class="row">
				<div class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 mb-0 bg-secondary rounded-3">
					<div class="offcanvas-lg offcanvas-end" id="shopSidebar">
						<div class="offcanvas-body pt-2 pt-lg-0 pe-lg-4 m-lg-2">
							<div class="accordion accordion-alt pb-2" id="categories">
								<div class="accordion-item mb-0">
									<h4 class="accordion-header">
										<span class="fs-base">식별표시</span>
									</h4>
									<div class="accordion-collapse collapse show" data-bs-parent="#categories">
										<div class="accordion-body py-1 mb-1">
											<%@ include file="../../common/image.jsp" %>
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
												<input
													class="form-check-input form-check-input-new align-middle"
													type="checkbox" value="" name="shape"
													onclick="doOpenCheck2(this);" checked /> <label><span
													class="text-nav fw-medium">전체</span></label> 
												<input
													class="form-check-input form-check-input-new align-middle"
													type="checkbox" value="원형" name="shape"
													onclick="doOpenCheck2(this);" /> <label><span
													class="text-nav fw-medium">원형</span></label> 
												<input
													class="form-check-input form-check-input-new align-middle"
													type="checkbox" value="타원형" name="shape"
													onclick="doOpenCheck2(this);" /> <label><span
													class="text-nav fw-medium">타원형</span></label> 
												<input
													class="form-check-input form-check-input-new align-middle"
													type="checkbox" value="장방형" name="shape"
													onclick="doOpenCheck2(this);" /> <label><span
													class="text-nav fw-medium">장방형</span></label> 
												<input
													class="form-check-input form-check-input-new align-middle"
													type="checkbox" value="삼각형" name="shape"
													onclick="doOpenCheck2(this);" /> <label><span
													class="text-nav fw-medium">삼각형</span></label> 
												<input
													class="form-check-input form-check-input-new align-middle"
													type="checkbox" value="사각형" name="shape"
													onclick="doOpenCheck2(this);" /> <label><span
													class="text-nav fw-medium">사각형</span></label> 
												<input
													class="form-check-input form-check-input-new align-middle"
													type="checkbox" value="마름모형" name="shape"
													onclick="doOpenCheck2(this);" /> <label><span
													class="text-nav fw-medium">마름모형</span></label> 
												<input
													class="form-check-input form-check-input-new align-middle"
													type="checkbox" value="오각형" name="shape"
													onclick="doOpenCheck2(this);" /> <label><span
													class="text-nav fw-medium">오각형</span></label> 
												<input
													class="form-check-input form-check-input-new align-middle"
													type="checkbox" value="팔각형" name="shape"
													onclick="doOpenCheck2(this);" /> <label><span
													class="text-nav fw-medium">팔각형</span></label>
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
												<input
													class="form-check-input form-check-input-new align-middle"
													type="checkbox" value="" name="line"
													onclick="doOpenCheck3(this);" checked /> <label><span
													class="text-nav fw-medium">전체</span></label> 
												<input
													class="form-check-input form-check-input-new align-middle"
													type="checkbox" value="-" name="line"
													onclick="doOpenCheck3(this);" /> <label><span
													class="text-nav fw-medium">(-)형</span></label>
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
												id="white" name="color" onclick="doOpenCheck4(this);" /> <label
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
											<input class="btn-check" type="checkbox" value="분홍" id="pink"
												name="color" onclick="doOpenCheck4(this);" /> <label
												class="btn btn-icon btn-sm btn-outline-mint rounded-circle"
												for="pink"><span class="d-block rounded-circle"
												style="width: 1.5rem; height: 1.5rem; background-color: pink"></span></label>
										</div>
										<div class="me-2 mb-2">
											<input class="btn-check" type="checkbox" value="빨강" id="red"
												name="color" onclick="doOpenCheck4(this);" /> <label
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
												id="greenyellow" name="color" onclick="doOpenCheck4(this);" />
											<label
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
											<input class="btn-check" type="checkbox" value="파랑" id="blue"
												name="color" onclick="doOpenCheck4(this);" /> <label
												class="btn btn-icon btn-sm btn-outline-mint rounded-circle"
												for="blue"><span
												class="d-block bg-size-cover bg-position-center rounded-circle"
												style="width: 1.5rem; height: 1.5rem; background-color: blue"></span></label>
										</div>
										<div class="me-2 mb-2">
											<input class="btn-check" type="checkbox" value="보라"
												id="violet" name="color" onclick="doOpenCheck4(this);" /> <label
												class="btn btn-icon btn-sm btn-outline-mint rounded-circle"
												for="violet"><span
												class="d-block bg-size-cover bg-position-center rounded-circle"
												style="width: 1.5rem; height: 1.5rem; background-color: violet"></span></label>
										</div>
										<div class="me-2 mb-2">
											<input class="btn-check" type="checkbox" value="검정"
												id="black" name="color" onclick="doOpenCheck4(this);" /> <label
												class="btn btn-icon btn-sm btn-outline-mint rounded-circle"
												for="black"><span
												class="d-block bg-size-cover bg-position-center rounded-circle"
												style="width: 1.5rem; height: 1.5rem; background-color: black"></span></label>
										</div>
									</div>
								</div>
							</div>
							<div class="col-12 d-flex justify-content-end">
								<button class="btn ms-3 rounded-1 border-0" type="button" id="search" style="background-color: #86cbcd">
									검색<i class="ai-search" style="margin-left: 10px"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
				<div class="container" style="margin-top: 30px;">
					<div class="col-lg-12">
						<div class="d-flex align-items-start justify-content-between mb-4">
							<div class="me-3" id="listCount">제품결과 리스트(${list.size()})개</div>
							<div class="d-flex align-items-center flex-shrink-0"></div>
						</div>
						<!-- Item-->
						<div class="pt-1" id="medicineList">
							<table class="table align-middle" style="min-width: 450px">
								<hr>
								<tr class="border-1 text-center">
									<th class="py-2 text-center" style="width: 15%">식별이미지</th>
									<th class="py-2 text-center" style="width: 30%">품목명</th>
									<th class="py-2 text-center" style="width: 15%">품목코드</th>
									<th class="py-2 text-center" style="width: 15%">회사명</th>
									<th class="py-2 text-center" style="width: 15%">찜</th>
								</tr>
								<c:forEach var="medicine2" items="${list}" begin="0" end="10">
									<tr class="border-1">
										<td class="py-1" style="width: 15%">
											<div class="d-flex align-items-center">
												<a
													class="d-inline-block flex-shrink-0 rounded-1 p-md-2 p-lg-3 text-center"
													href="${path}/medicine/view2?ITEM_SEQ=<c:out value="${medicine2.ITEM_SEQ}"/>">
													<img class="rounded-1" src="<c:out value="${medicine2.ITEM_IMAGE}"/>" width="140" />
												</a>
											</div>
										</td>
										<td class="py-1" style="width: 30%">
											<div class="ps-3 ps-sm-1">
												<h4 class="h6 mb-0" style="padding-left: 30px">
													<a href="${path}/medicine/view2?ITEM_SEQ=<c:out value="${medicine2.ITEM_SEQ}"/>">
														<c:out value="${medicine2.ITEM_NAME}"/> 
													</a>
												</h4>
											</div>
										</td>
										<td class="py-1" style="width: 20%">
											<div class="fs-sm fw-medium text-dark text-center">
												<h4 class="h6 mb-0">&nbsp;&nbsp;<c:out value="${medicine2.ITEM_SEQ}"/></h4>
											</div>
										</td>
										<td class="py-1" style="width: 20%">
											<div class="fs-sm fw-medium text-dark text-center">
												<h4 class="h6 mb-0"><c:out value="${medicine2.ENTP_NAME}"/></h4>
											</div>
										</td>
										<td class="py-1" style="width: 15%">
											<div class="fs-sm fw-medium text-dark">
												<h4 class="h6 mb-0">
													<a class="nav-link fs-3" style="padding-left: 4.5rem" id="like" data-bs-toggle="tooltip" title="찜 목록에 추가"> 
														<i class="ai-heart"></i>
													</a>
												</h4>
											</div>
										</td>
									</tr>
								</c:forEach>
							</table>
							<div class="row align-items-center pb-5 pt-4">'
								<button class="btn btn-outline-mint btn-block col-sm-0 mx-auto w-50" id="more" type="button">더 보기</button>
							</div>
						</div>
						<script>
					        $('#search').click(() => {
					            let MARK_IMG 	= $('input[name="img"]:checked').val();
					            let DRUG_SHAPE 	= $('input[name="shape"]:checked').val();
					            let ITEM_LINE 	= $('input[name="line"]:checked').val();
					            let ITEM_COLOR 	= $('input[name="color"]:checked').val();
				                $.ajax({
				                    url: 'search2.do',
				                    type: 'get',
				                	dataType: "json",
				                	async: true,
				                    data: {
				                    	MARK_IMG: 	MARK_IMG,
				                    	DRUG_SHAPE: DRUG_SHAPE,
				                    	ITEM_LINE: 	ITEM_LINE,
				                    	ITEM_COLOR: ITEM_COLOR
				                    },
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
				                            	+ '${path}/medicine/view2?ITEM_SEQ='
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
				                            	+ '${path}/medicine/view2?ITEM_SEQ='
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
				                            	+ '<a class="nav-link fs-3" style="padding-left: 4.5rem" id="like" data-bs-toggle="tooltip" title="찜 목록에 추가">'
		                                        + '<i class="ai-heart">'
				                            	+ '</i></a></h4><div></td>';
				                            str += '</tr>'
				                            
				                            str2 = '제품결과 리스트('
				                            str2 += list.length
				    		                str2 += '개)'
				                        });
				                        str += '</table>';
				                        str += '<div class="row align-items-center pb-5 pt-4">'
				                        if (list.length >= 10) {
					                        str += '<button class="btn btn-outline-mint btn-block col-sm-0 mx-auto w-50" id="more" type="button">더 보기</button>'
				                        }
				                        str += '</div>';
				                        $('#medicineList').html(str);
				                        $('#listCount').html(str2);
				                    },
				                    error: (e) => {
				                        $('#medicineList').html('에러 발생!!');
				                        console.log(e);
				                    },
				                });
				            });
				        </script>
						<script>
			        		let startIndex = 10;
							$('#search').click(() => {
								startIndex = 10;
							});
				        	$(document).on('click', '#more', function(){
					            let MARK_IMG 	= $('input[name="img"]:checked').val();
					            let DRUG_SHAPE 	= $('input[name="shape"]:checked').val();
					            let ITEM_LINE 	= $('input[name="line"]:checked').val();
					            let ITEM_COLOR 	= $('input[name="color"]:checked').val();
					            startIndex  = startIndex + 10;
					            $.ajax({
				                    url: 'more2.do',
				                    type: 'get',
				                	dataType: "json",
				                	async: true,
				                    data: {
				                    	MARK_IMG: 	MARK_IMG,
				                    	DRUG_SHAPE: DRUG_SHAPE,
				                    	ITEM_LINE: 	ITEM_LINE,
				                    	ITEM_COLOR: ITEM_COLOR,
				                    	startIndex: startIndex
				                    },
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
				                            	+ '${path}/medicine/view2?ITEM_SEQ='
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
				                            	+ '${path}/medicine/view2?ITEM_SEQ='
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
				                            	+ '<a class="nav-link fs-3" style="padding-left: 4.5rem" id="like" data-bs-toggle="tooltip" title="찜 목록에 추가">'
		                                        + '<i class="ai-heart">'
				                            	+ '</i></a></h4><div></td>';
				                            str += '</tr>'
				                            
				                            str2 = '제품결과 리스트('
				                            str2 += list.length
				    		                str2 += '개)'
				                        });
				                        str += '</table>';
				                        str += '<div class="row align-items-center pb-5 pt-4">'
				                        str += '<button class="btn btn-outline-mint btn-block col-sm-0 mx-auto w-50" id="more" type="button">더 보기</button>'
				                        str += '</div>';
				                        $('#medicineList').html(str);
				                        $('#listCount').html(str2);
				                    },
				                    error: (e) => {
				                        $('#medicineList').html('에러 발생!!');
				                        console.log(e);
				                    },
				        		})
				        	})
				        </script>
					</div>
				</div>
			</div>
		</div>
	</main>
	<script>
    	$(document).on('click', '#like', function(){
        	alert("찜 목록에 추가하였습니다.");  	
     	})
     </script>

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