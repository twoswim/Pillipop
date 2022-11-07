<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.kh.pillipop.medicine.model.vo.Medicine"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<% List<Medicine> list = (List<Medicine>)request.getAttribute("list"); %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8" />
	<title>Search Medicine</title>
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
	<link rel="stylesheet" href="${path}/resources/vendor/nouislider/dist/nouislider.min.css" />
	<link rel="stylesheet" href="${path}/resources/vendor/swiper/swiper-bundle.min.css" />
	<!-- Main Theme Styles + Bootstrap-->
	<link rel="stylesheet" href="${path}/resources/css/theme.min.css" />
	<!-- header/footer css -->
    <link rel="stylesheet" href="${path}/resources/css/0_headerfooter.css" />
    <!-- swim css -->
    <link rel="stylesheet" href="${path}/resources/css/6_swim.css" />
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
		<div class="pt-5">
			<div
				class="container position-relative zindex-2 pt-5 mt-3 mt-sm-4 mt-md-5">
				<nav aria-label="breadcrumb">
					<ol class="pt-lg-3 pb-2 breadcrumb">
						<li class="breadcrumb-item"><a href="${path}">홈</a></li>
						<li class="breadcrumb-item breadcrumb-item-new active" aria-current="page">일반 검색</li>
					</ol>
				</nav>
				<div class="row pt-xl-3 pt-xxl-4">
					<div class="col-lg-7 col-xxl-6">
						<!-- title-->
					</div>
					<!-- Page title-->
					<div class="col-lg-5 offset-xxl-1 pt-sm-3">
						<!-- Basic info-->
						<form class="card border-0 py-4 px-xxl-4 bg-secondary">
							<div class="card-body">
								<div>
									<div class="col-sm-12">
										<label class="form-label">제품명</label> <input
											class="form-control bg-white rounded-1 border-0 mb-1"
											type="text" id="input1" />
									</div>
									<div class="col-sm-12">
										<label class="form-label">회사명</label> <input
											class="form-control bg-white rounded-1 border-0 mb-1"
											type="text" id="input2" placeholder="ex) OO제약" />
									</div>
									<div class="col-sm-12">
										<label class="form-label">증상</label> <input
											class="form-control bg-white rounded-1 border-0 mb-1"
											type="text" id="input3" placeholder="ex) 두통, 기침, 열" />
									</div>
								</div>
							</div>
							<div class="col-12 d-flex justify-content-center mb-3">
								<button class="btn rounded-1 border-0" type="reset"
									style="background-color: #979797;">다시입력</button>
								<button class="btn ms-3 rounded-1 border-0" type="button"
									id="ajaxSend1" style="background-color: #86cbcd">
									검색<i class="ai-search" style="margin-left: 10px"></i>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- Parallax image-->
			<div class="jarallax" data-jarallax data-speed="0.6">
				<div class="jarallax-img"
					style="background-image: url(${path}/resources/img/6_swim/banner.png);">
				</div>
				<div class="d-none d-xxl-block"
					style="height: 520px; margin-top: -470px;"></div>
				<div class="d-none d-xl-block d-xxl-none"
					style="height: 780px; margin-top: -490px;"></div>
				<div class="d-none d-lg-block d-xl-none"
					style="height: 700px; margin-top: -560px;"></div>
				<div class="d-none d-sm-block d-lg-none"
					style="height: 520px; margin-top: -450px;"></div>
				<div class="d-sm-none" style="height: 500px; margin-top: -450px;"></div>
			</div>
		</div>
		<div class="container" style="margin-top: 30px;">
			<div class="col-lg-12">
				<div class="d-flex align-items-start justify-content-between mb-4">
                    <div class="me-3">제품결과 리스트(아무 개)</div>
                    <div class="d-flex align-items-center flex-shrink-0">
                    </div>
                </div>
				<!-- Item-->
				<div class="table-responsive pt-1" id="MedicineList"></div>
				<script>
			        $('#ajaxSend1').click(() => {
			            let itemName = $('#input1').val();
			            let entpName = $('#input2').val();
			            let efcyQesitm = $('#input3').val();
		                $.ajax({
		                    // 객체 영역
		                	async: true,
		                    // 1. type 셋팅 : get,post
		                    type: 'get',
		                    // 2. URL
		                    url: 'search',
		                    // 3. 파라메터
		                    data: {
		                    	itemName: itemName, 
		                    	entpName: entpName, 
		                    	efcyQesitm: efcyQesitm
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
		                            	+ '/info?itemSeq='
		                            	+ obj.itemSeq
		                            	+ '">'
		                            	+ '<img class="rounded-1" src="'
		                            	+ obj.itemImage
		                            	+ '" width="140" />'
		                            	+ '</a></div></td>'
		                            str += '<td class="py-1" style="width: 30%">' 
		                            	+ '<div class="ps-3 ps-sm-1">'
		                            	+ '<h4 class="h6 mb-0" style="padding-left: 30px">'
		                            	+ '<a href="'
		                            	+ '${path}'
		                            	+ '/info?itemSeq='
		                            	+ obj.itemSeq
		                            	+ '">'
		                            	+ obj.itemName 
		                            	+ '</a></h4></div></td>';
		                            str += '<td class="py-1" style="width: 20%">' 
		                            	+ '<div class="fs-sm fw-medium text-dark text-center">'
		                            	+ '<h4 class="h6 mb-0">&nbsp;&nbsp;'
		                            	+ obj.itemSeq 
		                            	+ '</h4></div></td>';
		                            str += '<td class="py-1" style="width: 20%">' 
		                            	+ '<div class="fs-sm fw-medium text-dark text-center">'	
		                            	+ '<h4 class="h6 mb-0">'
		                            	+ obj.entpName 
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
				<div class="row gy-3 align-items-center pt-3 pt-sm-4 mt-md-2 pb-5">
					<div class="col col-md-4 col-6 order-md-1 order-1">
						<div class="d-flex align-items-center">
							<span class="text-muted fs-sm">Show</span> 
							<select class="form-select form-select-flush w-auto">
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