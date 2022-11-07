 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="java.text.*"%>
<%@ page import= "java.lang.Math"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Pillipop Store</title>
    <!-- SEO Meta Tags-->
    <meta name="description" content="Around - Multipurpose Bootstrap HTML Template">
    <meta name="keywords" content="bootstrap, business, corporate, coworking space, services, creative agency, dashboard, e-commerce, mobile app showcase, saas, multipurpose, product landing, shop, software, ui kit, web studio, landing, dark mode, html5, css3, javascript, gallery, slider, touch, creative">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/resources/img/0_S_headerfooter/Store_logo.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/resources/img/0_S_headerfooter/Store_logo.png">
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
        
        .mySlides {
            display: none;
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
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;display=swap" rel="stylesheet" id="google-font">
    <!-- Vendor styles-->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/vendor/swiper/swiper-bundle.min.css" />
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/theme.min.css">
    <!-- headerfooter -->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/0_headerfooter.css">
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/0_S_headerfooter.css">
    <!-- 1_StoreMain -->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/1_StoreMain.css">
</head>
<body style="background-color: #FEFAFC;">
    <!-- Page loading spinner-->
    <div class="page-loading active">
        <div class="page-loading-inner">
            <div class="page-spinner"></div><span>Loading...</span>
        </div>
    </div>
    <!-- Page wrapper-->
    <main class="page-wrapper">
		<%-- header --%>
		<%@ include file="../../common/Store_header.jsp" %>
	    <!-- Banner start -->
	    <section class="font-NanumB">
	        <div class="bg-position-top-center " style="background-image: url(<%=request.getContextPath()%>/resources/img/1_StoreMain/Banner_Back.png);  background-repeat: no-repeat; width: 100%; height: 600px; margin-top: 87px;">
	            <div class="S_ind_0 container position-relative py-sm-4 py-lg-5 mt-4">
	                <div class="jus_between">
	                    <div class="text-P4 text_1">Health supplement</div>
	                    <div class="font-NanumEB text-P4 text_2-8" style="padding-right: 5rem;">Pillipop Store</div>
	                    <div class="text-P4 text_1 ">Store page</div>
	                </div>
	                <div>
	                    <div class="jus_between pt-lg-2 mb-md-4 mb-lg-5">
	                        <div class="col-md-10 col-lg-9 col-xl-8 col-xxl-7 pt-5 mt_1-2" style="width: 600px;">
	                            <div class="font-NanumEB text-P3 text_2-8 pb-md-2">예방하고 대비하고 준비하는</div>
	                            <div class=" pb-sm-2 pb-md-5 mb-md-5 font-NanumEB text-P4 text_1-3">다양한 건강기능식품</div>
	                            <div class="mt-md-5 pt-md-4 text_1-1 font-NanumR">
	                                <div class="S_btn1 me-md-2 " style="width: 9rem; height: 2.6rem;">영양제</div>
	                                <div class="S_btn2 me-md-2 " style="width: 9rem; height: 2.6rem;">비타민</div>
	                                <div class="S_btn3 me-md-2 " style="width: 9rem; height: 2.6rem;">기능</div>
	                            </div>
	                        </div>
	                        <div> <img src="<%=request.getContextPath()%>/resources/img/1_StoreMain/Banner_vector.png" alt="Store_vector"></div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </section>
	    <!-- Banner end -->	
	    
		<!-- Best Products start -->
	    <section class="container font-NanumB  mb-lg-3 mb-xl-4 mb-xxl-5">
	        <div class=" pb-4 mb-2 mb-md-3">
	            <h1 class="text-P4 pb-0"><span class="font-NanumEB">BEST</span> products<span class="text_1 ps-2">(top10)</span></h1>
	            <div class="text_1-1 text-G1  pb-4">어떤 건강식품을 사야할지 고민된다면 다른 사람들이 좋아하는 상품을 참고해보세요!</div>
	            <div class="jus_between">
	                <div class="border_2" style="width: 65rem; height: 1.6rem;"></div>
	
	                <!-- Slider prev/next buttons-->
	                <div class="d-flex" style="margin-right: 2rem;">
	                    <button class="S_btn_4 S_btn-p S_btn-icon-p S_btn-outline-primary-p S_rounded-circle-p ms_1-1" type="button" id="trending-prev"><i class="ai-arrow-left"></i></button>
	                    <button class="S_btn_4 S_btn-p S_btn-icon-p S_btn-outline-primary-p S_rounded-circle-p ms_1-1" type="button" id="trending-next"><i class="ai-arrow-right"></i></button>
	                </div>
	            </div>
	        </div>
	
	        <!-- Slider (popular items)-->
	        <div class="swiper" data-swiper-options="{&quot;slidesPerView&quot;: 1, &quot;spaceBetween&quot;: 24, &quot;loop&quot;: true, &quot;navigation&quot;: {
	            &quot;prevEl&quot;: &quot;#trending-prev&quot;, &quot;nextEl&quot;: &quot;#trending-next&quot;},
	            &quot;breakpoints&quot;: { &quot;500&quot;: { &quot;slidesPerView&quot;: 2 }, &quot;768&quot;: { &quot;slidesPerView&quot;: 3 }, &quot;1000&quot;: {
	            &quot;slidesPerView&quot;: 4}}}">
	            <div class="swiper-wrapper">
	
	                <!-- products item repeat -->
					<c:if test="${!empty list}">
						<c:forEach var="Health" items="${list}" begin="20" end="21" >
							<div class="swiper-slide">
								<div class="card-hover position-relative bg-p_9 rounded-1 p-3 mb-4">
									<!-- Sale/new -->
									<c:if test="${Health.hth_discount != null}">
										<span class="badge E_bg-red E_text-red position-absolute top-0 start-0 mt-3 ms-3"><c:out value="${Health.hth_discount}"/>% Sale</span>
									</c:if>
									<c:if test="${Health.hth_discount == null}">
										<span class="badge E_bg-green E_text-green position-absolute top-0 start-0 mt-3 ms-3">New</span>
									</c:if>
									<a class="d-block p-2 p-xl-4" href="${path}/health/product?PRDLST_REPORT_NO=${Health.PRDLST_REPORT_NO}"><img class="d-block mx-auto rounded-1"
										style="width: 226px; height: 226px; object-fit: cover;" src="<c:out value="${Health.hth_img}"/>" alt="Product"></a>
								</div>
								<div class="mb-1 ">
									<div class=" mb-0">
										<a class="text-B a_none text_1-3" href="2_product.html">
											<c:if test="${fn:length(Health.PRDLST_NM) <= '15'}">
												<c:out value="${Health.PRDLST_NM}"/>
											</c:if>
											<c:if test="${fn:length(Health.PRDLST_NM) > '15'}">
												<c:out value="${fn:substring(Health.PRDLST_NM,0,15) }"/>..
											</c:if>
										</a>
									</div>
								</div>
								<div class="d-flex align-items-center">
									<c:if test="${Health.hth_discount != null}">
		                                    <c:set var="sale" value="${Math.round((Health.hth_price - (Health.hth_price * (Health.hth_discount/100)))/100)}"></c:set>
		                                    	  <span class="me-2"><fmt:formatNumber value="${sale*100}" pattern="#,### 원"/></span>
		                                    	  <!-- 세일할때 원가 -->
		                                    	  <del class="fs-sm text-muted"><fmt:formatNumber value="${Health.hth_price}" pattern="#,### 원"/></del>
											</c:if>
									<c:if test="${Health.hth_discount == null}">
										<span class="me-2"><fmt:formatNumber value="${Health.hth_price}" pattern="#,### 원"/></span>
									</c:if>
									<div class="S_nav_cart ms-auto" data-bs-toggle="tooltip"
										data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;"
										data-bs-placement="left" title="Add to cart">
										<a class="nav-link fs-lg py-2 px-1" href="#"><i
											class="ai-cart"></i></a>
									</div>
								</div>
							</div>
						</c:forEach>
						<c:forEach var="Health" items="${list}" begin="10" end="14" >
							<div class="swiper-slide">
								<div class="card-hover position-relative bg-p_9 rounded-1 p-3 mb-4">
									<!-- Sale/new -->
									<c:if test="${Health.hth_discount != null}">
										<span class="badge E_bg-red E_text-red position-absolute top-0 start-0 mt-3 ms-3"><c:out value="${Health.hth_discount}"/>% Sale</span>
									</c:if>
									<c:if test="${Health.hth_discount == null}">
										<span class="badge E_bg-green E_text-green position-absolute top-0 start-0 mt-3 ms-3">New</span>
									</c:if>
									<a class="d-block p-2 p-xl-4" href="${path}/health/product?PRDLST_REPORT_NO=${Health.PRDLST_REPORT_NO}"><img class="d-block mx-auto rounded-1"
										style="width: 226px; height: 226px; object-fit: cover;" src="<c:out value="${Health.hth_img}"/>" alt="Product"></a>
								</div>
								<div class="mb-1 ">
									<div class=" mb-0">
										<a class="text-B a_none text_1-3" href="2_product.html">
											<c:if test="${fn:length(Health.PRDLST_NM) <= '15'}">
												<c:out value="${Health.PRDLST_NM}"/>
											</c:if>
											<c:if test="${fn:length(Health.PRDLST_NM) > '15'}">
												<c:out value="${fn:substring(Health.PRDLST_NM,0,15) }"/>..
											</c:if>
										</a>
									</div>
								</div>
								<div class="d-flex align-items-center">
									<c:if test="${Health.hth_discount != null}">
		                                    <c:set var="sale" value="${Math.round((Health.hth_price - (Health.hth_price * (Health.hth_discount/100)))/100)}"></c:set>
		                                    <span class="me-2"><fmt:formatNumber value="${sale*100}" pattern="#,### 원"/></span>
		                                   	<!-- 세일할때 원가 -->
		                                    <del class="fs-sm text-muted"><fmt:formatNumber value="${Health.hth_price}" pattern="#,### 원"/></del>
									</c:if>
									<c:if test="${Health.hth_discount == null}">
										<span class="me-2"><fmt:formatNumber value="${Health.hth_price}" pattern="#,### 원"/></span>
									</c:if>
									<div class="S_nav_cart ms-auto" data-bs-toggle="tooltip"
										data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;"
										data-bs-placement="left" title="Add to cart">
										<a class="nav-link fs-lg py-2 px-1" href="#"><i
											class="ai-cart"></i></a>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>
	                <!-- products item repeat last -->
	            </div>
	        </div>
	        <!-- 모든 상품 보러 가기 -->
	        <div class="text-center mt-2 mt-md-0 mb-xxl-2 pt-4 pt-md-5 pb-2 pb-sm-3 pb-md-4"><a class="S_btn_5 S_btn-outline-primary w-100 w-sm-auto" href="#all-product" data-scroll>모든 상품 보러가기</a></div>
	    </section>
	    <!-- Best Products end -->    
		
		<!-- 중간 베너 start -->
	    <div class="container">
	        <img class="mySlides rounded-5" width="1320px" src="<%=request.getContextPath()%>/resources/img/1_StoreMain/slider-banner1.png" alt="background">
	        <img class="mySlides rounded-5" width="1320px" src="<%=request.getContextPath()%>/resources/img/1_StoreMain/slider-banner2.png" alt="background">
	        <img class="mySlides rounded-5" width="1320px" src="<%=request.getContextPath()%>/resources/img/1_StoreMain/slider-banner3.png" alt="background">
	    </div>
		<!-- 이미지 슬라이더쇼 -->
	    <script>
	        var slideIndex = 0;
	        carousel();
	
	        function carousel() {
	            var i;
	            var x = document.getElementsByClassName("mySlides");
	            for (i = 0; i < x.length; i++) {
	                x[i].style.display = "none";
	            }
	            slideIndex++;
	            if (slideIndex > x.length) {
	                slideIndex = 1
	            }
	            x[slideIndex - 1].style.display = "block";
	            setTimeout(carousel, 2000); // Change image every 2 seconds
	        }
	    </script>
	    <!-- 중간 베너 end -->
		
        <!-- 스토어 all products start -->
        <section class="contaner font-NanumB  pb-5 mb-lg-3 mb-xl-4 mb-xxl-5" id="all-product">
            <!-- Page content-->
            <div class="container overflow-hidden py-5 mt-5 mb-2 mb-md-3 mb-lg-4 mb-xxl-5">
                <!-- Breadcrumb-->
                <div class="masonry-filterable">
                    <!-- Page title-->
                    <div class="row pb-lg-4" style="align-items: center;">
                        <div class="border_2" style="width: 10rem; height: 1.6rem; margin: auto;"></div>
                    </div>
                    <h1 class="text-center text-P4 pb-md-1 pb-lg-1"><span class="font-NanumEB">Pillipop</span> all products</h1>
                    <div class="text-center text_1-1 text-G1 pb-md-3 pb-lg-4 pb-5 mb-2">건강식품이 최고인 이유는 건강식품이 최고기 때문이다.이상 불만있으면 옥상으로 따라와 없으면 하나만 구매하고 가셈</div>
                    <div class="masonry-filterable">
                        <!-- Filters-->
                        <ul class="masonry-filters nav nav-pills fs-sm flex-nowrap overflow-auto text-nowrap w-100 mx-auto pb-4 mb-2 mb-sm-3" style="justify-content: center;">
                            <li class="nav-item mb-0"><a class="nav-link border active" href="#" data-group="all">모두</a></li>
                            <li class="nav-item mb-0"><a class="nav-link border" href="#" data-group="유산균">유산균</a></li>
                            <li class="nav-item mb-0"><a class="nav-link border" href="#" data-group="홍삼">홍삼</a></li>
                            <li class="nav-item mb-0"><a class="nav-link border" href="#" data-group="비타민">비타민</a></li>
                            <li class="nav-item mb-0"><a class="nav-link border" href="#" data-group="기타">기타</a></li>
                        </ul>
                        <!-- Grid of portfolio items-->
                        <div class="masonry-grid ms-3 " data-columns="2" style="margin: auto;">
                            <!-- Item_1 -->
								<c:forEach var="Health" items="${list}">
		                            <article class="masonry-grid-item pb-4 mb-md-2 mb-lg-4 mb-xl-5" style="width: 20rem; margin: 0;" data-groups="[&quot;<c:out value="${Health.hth_category}"/>&quot;]">
		                                <div class="zoom-effect position-relative">
		                                    <div class="zoom-effect-wrapper">
		                                        <div class="zoom-effect-img">
		                                            <img class="rounded-3" style="width: 20rem; height: 18rem; object-fit: cover;" src="<c:out value="${Health.hth_img}"/>" alt="Image "></div>
		                                    </div>
		                                    <div class="pt-4 mt-lg-2 ">
		                                        <h4 class="text_1-3 mb-2 ">
		                                        	<a class="stretched-link z-index: 1;" href="${path}/health/product?PRDLST_REPORT_NO=${Health.PRDLST_REPORT_NO}" id="myvalue">
															<c:if test="${fn:length(Health.PRDLST_NM) <= '15'}">
																<c:out value="${Health.PRDLST_NM}"/>
															</c:if>
															<c:if test="${fn:length(Health.PRDLST_NM) > '15'}">
																<c:out value="${fn:substring(Health.PRDLST_NM,0,15) }"/>..
															</c:if>
													</a>
		                                        </h4>
		                                        <div class="d-flex align-items-center">
		                                    	    <c:if test="${Health.hth_discount != null}">
		                                    	    	<c:set var="sale" value="${Math.round((Health.hth_price - (Health.hth_price * (Health.hth_discount/100)))/100)}"></c:set>
		                                    	    	<span class="me-2"><fmt:formatNumber value="${sale*100}" pattern="#,### 원"/></span>
		                                    	    	 <!-- 세일할때 원가 -->
		                                    	    	<del class="fs-sm text-muted"><fmt:formatNumber value="${Health.hth_price}" pattern="#,### 원"/></del>
													</c:if>
													<c:if test="${Health.hth_discount == null}">
														<span class="me-2"><fmt:formatNumber value="${Health.hth_price}" pattern="#,### 원"/></span>
													</c:if>
		                                            
		                                            <div class="S_nav_cart ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left"
		                                                title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart" style="z-index: 2; position: relative;"></i></a></div>
		                                        </div>
		                                    </div>
		                                </div>
		                            </article>
								</c:forEach>
                        	</div>
                   		</div>
                    </div>
                </div>
        </section>
        <!-- 스토어 all products end -->
    </main>	
	<%-- footer --%>
	<%@ include file="../../common/footer.jsp" %>
	
	<!-- Back to top button-->
    <a class="btn-scroll-top " href="#top " data-scroll>
        <svg viewBox="0 0 40 40 " fill="currentColor " xmlns="http://www.w3.org/2000/svg ">
        <circle cx="20 " cy="20 " r="19 " fill="none " stroke="currentColor " stroke-width="1.5 " stroke-miterlimit="10 "></circle>
      </svg><i class="ai-arrow-up "></i></a>
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