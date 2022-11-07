<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="java.text.*"%>
<%@ page import= "java.lang.Math"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>	
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>pillipop | My Product</title>

<!-- 타이틀/아이콘 -->
    <meta name="description" content="Around - Multipurpose Bootstrap HTML Template">
    <meta name="keywords" content="bootstrap, business, corporate, coworking space, services, creative agency, dashboard, e-commerce, mobile app showcase, saas, multipurpose, product landing, shop, software, ui kit, web studio, landing, dark mode, html5, css3, javascript, gallery, slider, touch, creative">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/resources/img/0_headerfooter/logo.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/resources/img/0_headerfooter/logo.png">
    <link rel="manifest" href="<%=request.getContextPath()%>/resources/favicon/site.webmanifest">
    <link rel="mask-icon" color="#6366f1" href="<%=request.getContextPath()%>/resources/favicon/safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#080032">
    <meta name="msapplication-config" content="<%=request.getContextPath()%>/resources/favicon/browserconfig.xml">
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

<body class="bg-secondary_new2">
	<style>
body {
	font-family: "NanumSquareR";
}
</style>
	<!-- Page loading spinner-->
	<div class="page-loading active">
        <div class="page-loading-inner">
            <div style="margin-bottom: 30px;">
                <img src="<%=request.getContextPath()%>/resources/img/2_img/loading/loading.gif">
            </div>
            <span>
                <h1 style="color: #d3b7d8;">
                    <p>필리필리필리팝-♪</p>
                    <p>필리필리 POP! POP!</p>
                </h1>
            </span>
        </div>
    </div>
	
	<%-- header --%>
	<%@ include file="../../common/header.jsp" %>
	
	<!-- Page content-->
	<div class="container py-5 mt-4 mt-lg-5 mb-lg-4 my-xl-5">
		<div class="row pt-sm-2 pt-lg-0">
			<!-- Breadcrumb-->
			<nav aria-label="breadcrumb">
				<ol class="pt-lg-3 pb-2 pb-md-4 breadcrumb">
					<li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/views/store/1_Store_main.jsp">스토어</a></li>
					<li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/views/store/2_product.jsp">상품</a></li>
					<li class="breadcrumb-item active">장바구니</li>
				</ol>
			</nav>
			<!-- Sidebar (offcanvas on sreens < 992px)-->
              <%@ include file="../../common/aside.jsp" %>
			<!-- Page content-->
			<div class="col-lg-9 pt-4 pb-2 pb-sm-4">
				<div class="d-flex align-items-center mb-4">
					<h1 class="h2 mb-0">장바구니</h1>
				</div>
				<div class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4">
					<div class="card-body pb-4">
					
						<!-- 장바구니 리스트 -->
						<div class="content_middle_section"></div>
						<!-- cartInfo -->
                        <div class="content_totalCount_section">
                            <table class="subject_table">
                                <caption style="padding: 0;">표 제목 부분</caption>
                                <tbody>
                                    <tr>
                                        <th class="pt-3 pb-3" style="width: 55%;">상품정보</th>
                                        <th style="width: 15%;">배송비</th>
                                        <th style="width: 15%;">가격</th>
                                        <th style="width: 10%;">수량</th>
                                        <th></th>
                                    </tr>
                                </tbody>
                            </table>
                            <table class="cart_table">
                                <caption>표 내용 부분</caption>
                                <tbody>
                                	<c:forEach items="${basket}" var="basket">
                                    <tr>
                                        <td class="text_center" style="width: 15%;">
                                        	<img class="rounded-1 p-1" src="<c:out value="${basket.hth_img}"/>" style="width: 120px; height: 120px; object-fit: cover;">
                                        </td>
                                        <td class="text_center font-NanumB" style="width: 40%; font-size: 1rem;">
                                        	<span class="font-NanumR" style="font-size: 0.9rem;">[<c:out value="${basket.BSSH_NM}"/>]</span><br>
                                        	<c:out value="${basket.PRDLST_NM}"/>
                                        </td>
                                        <td class="text_center" style="width: 15%;">
                                        	10,000원
                                        </td>
                                        <td class="text_center" style="width: 15%;">
	                                        <c:if test="${basket.hth_discount != null}">
	                                            <del><fmt:formatNumber value="${basket.hth_price}" pattern="#,### 원"/></del><br> 
	                                            <c:set var="sale" value="${Math.round((basket.hth_price - (basket.hth_price * (basket.hth_discount/100)))/100)}"></c:set>
	                                            <span class= "red_color"><fmt:formatNumber value="${sale*100}" pattern="#,### 원" /></span>
                                        	</c:if>
                                        	<c:if test="${basket.hth_discount == null}">
                                        		<span class="red_color"><fmt:formatNumber value="${basket.hth_price}" pattern="#,### 원" /></span>
                                        	</c:if>
                                        </td>
                                        <td class="text_center" style="width: 10%;"><c:out value="${basket.b_ea}"/> 개 <c:out value="${basket.b_num}"/></td>
                                        <td class="table_text_align_center" style="width: %;"><button class="bnt_border" type="button" onclick="deleteBasket('${basket.b_num}');">x</button></td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
						<!-- 가격 종합 -->
						<div class="content_total_section" style="border-radius: 15px;">
							<div style="width: 70%; margin:auto; padding : 1rem;">
								<table>
									<tr>
										<td>
											<table>
												<tr>
													<td>총 상품 가격</td>
													<td style="text-align: right">
														<span class="totalPrice_span">
															<fmt:formatNumber value="${total}" pattern="#,### 원"/>
														</span></td>
												</tr>
												<tr>
													<td>배송비</td>
													<td style="text-align: right">
														<span class="delivery_price">
															<fmt:formatNumber value="${basket.size()*10000}" pattern="#,### 원"/>
															<!-- <c:out value="${basketcount}"/> -->
														</span></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
								<div class="boundary_div">구분선</div>
								<table>
									<tr>
										<td>
											<table>
												<tbody>
													<tr>
														<td><strong>총 결제 예상 금액</strong></td>
														<td style="text-align: right">
															<span class="finalTotalPrice_span">
																<c:set var="to" value="${total+(basketcount*10000)}"></c:set>
																<fmt:formatNumber value="${to}" pattern="#,### 원"/>
															</span>
														</td>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>
								</table>
							</div>
						</div>
						<!-- 구매 버튼 영역 -->
						<div class="bnt_mp_m">
							<div class="d-flex align-items-center">
								<a style="text-decoration: none;" href="${path}/health/Store_main">
									<button class="btn btn-lg w-100 w-lg-auto me-2 BgAndBorder_mp btn-mp" type="button">쇼핑계속하기</button>
								</a>
							</div>
							<div class="d-flex align-items-center">
								<a style="text-decoration: none;" href="${path}/health/payment?no=${loginMember.u_no}">
									<c:if test="${ basketcount != 0 }">
										<button class="btn btn-lg w-100 w-lg-auto BgAndBorder_mp btn-mp">결제하기</button>
									</c:if>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		function deleteBasket(b_num){
			var url = "${path}/health/delete_basket?b_num=";
			var requestURL = url + b_num;
			location.replace(requestURL);
		}
	</script>

	<%-- footer --%>
	<%@ include file="../../common/footer.jsp" %>

	<!-- Divider for dark mode only-->
	<hr class="d-none d-dark-mode-block">
	<!-- Sidebar toggle button-->
	<button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#sidebarAccount">
		<i class="ai-menu me-2"></i>Account menu
	</button>
	</main>
	
	<!-- Back to top button-->
    <a class="btn-scroll-top" href="#top" data-scroll>
        <svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
      </svg><i class="ai-arrow-up"></i></a>
    <!-- Vendor scripts: js libraries and plugins-->
    <script src="<%=request.getContextPath()%>/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js "></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js "></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/jarallax/dist/jarallax.min.js "></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/swiper/swiper-bundle.min.js "></script>
    <!-- 제품 항목 -->
    <script src="<%=request.getContextPath()%>/resources/vendor/imagesloaded/imagesloaded.pkgd.min.js "></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/shufflejs/dist/shuffle.min.js "></script>
    <!-- Main theme script-->
    <script src="<%=request.getContextPath()%>/resources/js/theme.min.js "></script>
</body>
</html>
