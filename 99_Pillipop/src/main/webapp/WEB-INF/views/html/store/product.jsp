<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.text.*"%>
<%@ page import= "java.lang.Math"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>	
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>pillipop | Product Page</title>
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
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/vendor/lightgallery/css/lightgallery-bundle.min.css" />
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/theme.min.css">
    <!-- headerfooter -->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/0_headerfooter.css">
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/0_S_headerfooter.css">
    <!-- css추가 -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/2_product.css">
    <!-- 1_detail -->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/1_detail.css">

</head>
<!-- Body-->

<body class="font-NanumR" style="background-color: #FEFAFC;">


    <!-- Page loading spinner-->
    <div class="page-loading active">
        <div class="page-loading-inner">
            <div class="page-spinner"></div>
            <span>
                <h1 style="color: #d3b7d8;">
                    <p>필리필리필리팝-♪</p>
                    <p>필리필리 POP! POP!</p>
                </h1>
            </span>
        </div>
    </div>
    <!-- 메뉴 -->
    
    <%-- header --%>
		<%@ include file="../../common/Store_header.jsp" %>
    
    <!-- Page content-->
    <section class="container py-5 mt-5 mb-sm-2 mb-lg-3 mb-xl-4 mb-xxl-5">
        <!-- Breadcrumb-->
        <nav aria-label="breadcrumb">
            <ol class="pt-lg-3 pb-2 pb-md-4 breadcrumb">
                <li class="breadcrumb-item"><a href="${path}/health/Store_main">스토어</a></li>
                <li class="breadcrumb-item active" style="color:#a13E97;">상품</li>
            </ol>
        </nav>
        <div class="row pb-sm-1 pb-md-4">
            <!-- Gallery-->
            <div class="col-md-6 gallery mb-3 mb-md-0">
                <!-- 상품 사진 클릭하면 크게 보이게하기 -->
                <a class="d-block gallery-item card-hover zoom-effect mb-4" href="${health.hth_img}">
                    <div class="d-flex justify-content-center align-items-center position-absolute top-0 start-0 w-100 h-100 rounded-1 overflow-hidden zindex-2 opacity-0"><i class="ai-zoom-in fs-2 text-white position-relative zindex-2"></i>
                        <div class="position-absolute top-0 start-0 w-100 h-100 bg-black opacity-20"></div>
                    </div>
                    <div class="zoom-effect-wrapper rounded-1">
                        <div class="zoom-effect-img bg-secondary_new p-4"><img class="d-block mx-auto img_radius" src="${health.hth_img}" width="562" alt="product image"></div>
                    </div>
                </a>
            </div>
            <!-- 상품 내용 : 사진, 가격-->
            <div class="col-md-6 col-xl-5 offset-xl-1">
                <div class="d-none d-md-block" style="margin-top: -90px;"></div>
                <div class="top-0 ps-md-4 ps-lg-5 ps-xl-0">
                    <div class="d-none d-md-block" style="padding-top: 90px;"></div>
                    <div class="d-flex align-items-center pt-3 py-3">
                        <span class="badge bg-faded-danger text-danger d-none d-md-inline-block me-4">상품번호</span>
                        <span><%= (int)Math.floor(Math.random() * 10)%>롸</span>
                        <span class="fs-sm" style="margin-right: 50%;">${health.PRDLST_REPORT_NO}</span>
                    </div>
                </div>
                <h1 class="d-none d-md-inline-block pb-1 mb-2">${health.PRDLST_NM}</h1>
                <div class="d-none d-md-flex align-items-center pb-3 mb-3">
                	<c:if test="${health.hth_discount != null}">
                		<c:set var="sale" value="${Math.round((health.hth_price - (health.hth_price * (health.hth_discount/100)))/100)}"></c:set>
                    	<div class="h3 mb-0 me-3"><fmt:formatNumber value="${sale*100}" pattern="#,### 원"/></div>
                    	<del class="fs-5 fw-medium text-muted"><fmt:formatNumber value="${health.hth_price}" pattern="#,### 원"/></del>
                    </c:if>
                    <c:if test="${health.hth_discount == null}">
                    	<div class="h3 mb-0 me-3"><fmt:formatNumber value="${health.hth_price}" pattern="#,### 원"/></div>
                    </c:if>
                </div>
                <!-- Color button selector-->
                <div class="h6">업체명 <span class="text-muted fw-normal ms-1" >${health.BSSH_NM}</span></div>
                <div class="h6">원산지 <span class="text-muted fw-normal ms-1" id="colorOption">국산</span></div>
                <!-- Action buttons-->
                <form action="${path}/health/basket" method="post">
	             	<input type="hidden" name="u_no" value="${loginMember.u_no}">
	             	<input type="hidden" name="PRDLST_REPORT_NO" value="${health.PRDLST_REPORT_NO}">
	                <div class="d-sm-flex d-md-block d-lg-flex py-4 py-md-5 my-3 my-md-0 mt-lg-0 mb-lg-4">
	                    <div class="count-input bg-gray rounded-3 me-4 mb-3 mb-sm-0 mb-md-3 mb-lg-0">
	                        <button class="S_btn_c btn-icon_c btn-lg_c fs-xl" type="button" data-decrement>-</button>
	                        <input class="form-control" name="B_ea" type="number" value="1" readonly>
	                        <button class="S_btn_c btn-icon_c btn-lg_c fs-xl" type="button" data-increment>+</button>
	                    </div>
	                    <div class="d-flex align-items-center ">
	                        <button class="btn btn-lg w-100 w-lg-auto me-2 BgAndBorder btn-primary_new" type="submit">
	                        	<i class="ai-cart me-2 ms-n1"></i>장바구니 담기
	                        </button>
	                    </div>
	                </div>
                </form>
                <!-- Sharing-->
                <div class="d-flex align-items-center">
                    <h4 class="h6 me-4">Share product:</h4><a class="btn btn-secondary btn-icon btn-sm btn-telegram rounded-circle me-3 mb-3" href="#"><i class="ai-telegram"></i></a>
                    <a class="btn btn-secondary btn-icon btn-sm btn-instagram rounded-circle me-3 mb-3" href="#"><i class="ai-instagram"></i></a><a class="btn btn-secondary btn-icon btn-sm btn-facebook rounded-circle mb-3" href="#"><i class="ai-facebook"></i></a>
                </div>
            </div>
        </div>
        </div>

        <!-- 필수정보표기 -->
        <div class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4">
            <div class="card-body pb-4">
                <div class="accordion accordion-alt accordion-orders" id="orders">
                    <div class="accordion-item border-top mb-0">
                        <div class="accordion-header">
                            <a class="accordion-button fs-4 fw-normal text-decoration-none py-3" href="#orderThree" data-bs-toggle="collapse" aria-expanded="true" aria-controls="orderThree">
                                <h5 style="margin-right: 86%;">필수표기정보</h4>
                            </a>
                        </div>
                        <div class="accordion-collapse collapse show" id="orderThree" data-bs-parent="#orders">
                            <div class="accordion-body">
                                <div class="table-responsive pt-1">
                                    <table class="prod-delivery-return-policy-table essential-info-table">
                                        <colgroup>
                                            <col width="150px" class="color_d">
                                            <col width="500px">
                                            <col width="150px" class="color_d">
                                            <col width=" * ">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th>제품명</th>
                                                <td class="ps-2">${health.PRDLST_NM}</td>
                                                <th>제품제조번호</th>
                                                <td class="ps-2">${health.PRDLST_REPORT_NO}</td>

                                            </tr>
                                            <tr>
                                                <th>허가일자</th>
                                                <td class="ps-2">${health.PRMS_DT}</td>
                                                <th>유통/소비기한</th>
                                                <td class="ps-2">${health.POG_DAYCNT}</td>
                                            </tr>
                                            <tr>
                                                <th>재품형태</th>
                                                <td class="ps-2">${health.PRDT_SHAP_CD_NM}</td>
                                                <th>보관방법</th>
                                                <td class="ps-2">${health.CSTDY_MTHD}</td>
                                            </tr>
                                            <tr>
                                                <th>제품유형</th>
                                                <td class="ps-2">${health.RAWMTRL_NM}</td>
                                                <th>섭취방법</th>
                                                <td class="ps-2">${health.NTK_MTHD}</td>
                                            </tr>

                                        </tbody>
                                    </table>

                                    <table>
                                        <colgroup>
                                            <col width="150px " class="color_d">
                                            <col width="* ">

                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th>주된기능성</th>
                                                <td class="ps-2">${health.PRIMARY_FNCLTY}</td>
                                            </tr>
                                            <tr>
                                                <th>기타원재료</th>
                                                <td class="ps-2">${health.ETC_RAWMTRL_NM}</td>
                                            </tr>
                                            <tr>
                                                <th>성분분석</th>
                                                <td class="ps-2">${health.STDR_STND}</td>
                                            </tr>
                                            <tr>
                                                <th>섭취시주의사항</th>
                                                <td class="ps-2">${health.IFTKN_ATNT_MATR_CN}</td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<br>
		<br>
        <!-- 상품 상세 설명 -->
        <div class="row pb-sm-1 pb-md-4 "> <img src="${health.hth_url}"></div>
    </section>

    <!-- 건강추천상품1 -->
    <section class="container pb-5 mb-lg-3 mb-xl-4 mb-xxl-5 ">
        <div>
            <div class="d-flex align-items-center justify-content-between pb-4 mb-2 mb-md-3 ">
                <h2 class="h2 pt-1 mb-0 ">함께보기 좋은 제품</h2>
            </div>

        </div>

        <!-- Slider (popular items)-->
        <div class="swiper " data-swiper-options="{
             &quot;slidesPerView&quot;: 1, &quot;spaceBetween&quot;: 24, &quot;loop&quot;: true, &quot;navigation&quot;: 
             { &quot;prevEl&quot;: &quot;#popular-prev&quot;, &quot;nextEl&quot;: &quot;#popular-next&quot;}, 
            &quot;breakpoints&quot;: { &quot;500&quot;: { &quot;slidesPerView&quot;: 2 }, &quot;860&quot;:
             { &quot;slidesPerView&quot;: 3 }, &quot;1200&quot;: { &quot;slidesPerView&quot;: 4 } } } ">
            <div class="swiper-wrapper ">
                <!-- Item 상품1-->
                <div class="swiper-slide h-auto ">
                    <a class="card h-100 border-0 rounded-1 text-decoration-none px-xxl-1 " href="shop-single.html ">
                        <div class="card-body p-4 px-sm-3 px-md-4 ">
                            <div class="d-flex align-items-center ">
                                <img class="img_radius" src="//thumbnail8.coupangcdn.com/thumbnails/remote/492x492ex/image/vendor_inventory/80a0/c657c708bcbbec9dae749765dee2bbf5893ed2b974abc46317b92031de01.jpg " width="97" alt="Product ">
                                <div class="ps-3 ps-md-4 ">
                                    <h3 class="fs-sm mb-2 ">쁘띠앤 오메가3 (1개월/60캡슐) 식물성 임산부DHA 100%</h3>
                                    <p class="fs-sm mb-0 ">42,790원</p>
                                    <del class="fs-sm text-muted ">44,700원</del>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <script type="text/javascript">
				
				var a = Math.floor(Math.random() * 10) + 1;
				
				</script>
                <!-- Item 상품2-->
                <div class="swiper-slide h-auto ">
                    <a class="card h-100 border-0 rounded-1 text-decoration-none px-xxl-1 " href="shop-single.html ">
                        <div class="card-body p-4 px-sm-3 px-md-4 ">
                            <div class="d-flex align-items-center "><img class="img_radius" src="//thumbnail9.coupangcdn.com/thumbnails/remote/492x492ex/image/vendor_inventory/647e/8d9cb2b6c658138cfc7d8ff9a0b04779817bcb8d541903c1c23b0ca80c4f.jpg " width="97
                                            " alt="Product ">
                                <div class="ps-3 ps-md-4 ">
                                    <h3 class="fs-sm mb-2 ">네추럴 라이즈 레드파워 크릴 1200 1200mg x 30캡슐</h3>
                                    <p class="fs-sm mb-0 ">38,500원</p>
                                    <del class="fs-sm text-muted ">40,910원</del>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- Item 상품3-->
                <div class="swiper-slide h-auto ">
                    <a class="card h-100 border-0 rounded-1 text-decoration-none px-xxl-1 " href="shop-single.html ">
                        <div class="card-body p-4 px-sm-3 px-md-4 ">
                            <div class="d-flex align-items-center "><img class="img_radius" src="//thumbnail8.coupangcdn.com/thumbnails/remote/492x492ex/image/vendor_inventory/8d4f/37877157a0013df56a75f30b0475b765dc2095efed5363462ed4916e5c96.jpg " width="97
                                            " alt="Product ">
                                <div class="ps-4 ">
                                    <h3 class="fs-sm mb-2 ">웰리카 다이어트 플러스 프로바이오틱스</h3>
                                    <p class="fs-sm mb-0 ">25,720원</p>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- Item 상품4-->
                <div class="swiper-slide h-auto ">
                    <a class="card h-100 border-0 rounded-1 text-decoration-none px-xxl-1 " href="shop-single.html ">
                        <div class="card-body p-4 px-sm-3 px-md-4 ">
                            <div class="d-flex align-items-center "><img class="img_radius" src="//thumbnail8.coupangcdn.com/thumbnails/remote/492x492ex/image/retail/images/2020/10/23/16/2/a0fa9826-c781-4739-990e-7c11279537d5.jpg " width="97 " alt="Product ">
                                <div class="ps-3 ps-md-4 ">
                                    <h3 class="fs-sm mb-2 ">뉴트리원 알티지 오메가3 프리미엄 MAX</h3>
                                    <p class="fs-sm mb-0 ">39,890원</p>
                                    <del class="fs-sm text-muted ">45,900원</del>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        </div>
        </div>
    </section>

    <!-- 추천건강상품2 -->
    <section class="container pb-5 mb-lg-3 mb-xl-4 mb-xxl-5">
        <div class="d-flex align-items-center justify-content-between pb-4 mb-2 mb-md-3">
            <h2 class="h2 pt-1 mb-0 ">고객님들이 추가로 본 상품</h2>
            <!-- Slider prev/next buttons-->
            <div class="d-flex">
                <button class="btn btn-prev btn-icon btn-sm btn-outline-primary_new rounded-circle ms-3" type="button" id="relevant-prev"><i class="ai-arrow-left"></i></button>
                <button class="btn btn-next btn-icon btn-sm btn-outline-primary_new rounded-circle ms-3" type="button" id="relevant-next"><i class="ai-arrow-right"></i></button>
            </div>
        </div>
        <!-- Slider (popular items)-->
        <div class="swiper pb-sm-2 pb-md-3" data-swiper-options="{
      &quot;slidesPerView&quot;: 1,
      &quot;spaceBetween&quot;: 24,
      &quot;loop&quot;: true,
      &quot;navigation&quot;: {
        &quot;prevEl&quot;: &quot;#relevant-prev&quot;,
        &quot;nextEl&quot;: &quot;#relevant-next&quot;
      },
      &quot;breakpoints&quot;: {
        &quot;500&quot;: {
          &quot;slidesPerView&quot;: 2
        },
        &quot;768&quot;: {
          &quot;slidesPerView&quot;: 3
        },
        &quot;1000&quot;: {
          &quot;slidesPerView&quot;: 4
        }
      }
    }">
            <div class="swiper-wrapper">
                <div class="swiper-slide ">
                    <div class="card-hover position-relative bg-secondary_new rounded-1 p-3 mb-4 ">
                        <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0 " type="button "><i class="ai-heart fs-xl d-dark-mode-none "></i><i class="ai-heart
                                        text-nav fs-xl d-none d-dark-mode-block "></i></button>
                        <a class="d-block p-2 p-xl-4 " href="shop-single.html "><img class="d-block mx-auto img_radius" src="//thumbnail9.coupangcdn.com/thumbnails/remote/492x492ex/image/vendor_inventory/b218/7aaa9c03182493c3dfcca0cded210ef89266e6ff9e060aa9e4ecfd061faf.jpg
                                        " width="226 " alt="Product "></a>
                    </div>
                    <div class="d-flex mb-1 ">
                        <h3 class="h6 mb-0 "><a href="shop-single.html ">리얼 마그네슘 비타민D 900mg x 120</a></h3>
                    </div>
                    <div class="d-flex align-items-center "><span class="me-2 ">34,000원</span>
                        <div class="nav ms-auto " data-bs-toggle="tooltip " data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;
                                        " data-bs-placement="left " title="Add to cart "><a class="nav-link fs-lg py-2 px-1 " href="# "><i class="ai-cart "></i></a></div>
                    </div>
                </div>
                <!-- Item 추천상품2-->
                <div class="swiper-slide ">
                    <div class="card-hover position-relative bg-secondary_new rounded-1 p-3 mb-4 "><span class="badge bg-faded-danger text-danger position-absolute top-0 start-0 mt-3 ms-3 "></span>
                        <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0 " type="button "><i class="ai-heart fs-xl d-dark-mode-none "></i><i class="ai-heart
                                        text-nav fs-xl d-none d-dark-mode-block "></i></button>
                        <a class="d-block p-2 p-xl-4 " href="shop-single.html "><img class="d-block mx-auto img_radius" src="//thumbnail8.coupangcdn.com/thumbnails/remote/492x492ex/image/vendor_inventory/1eda/2fa09a2ed70033601ea81f6d45803d54fc14ab601fb32f268178e0350438.jpg
                                        " width="226 " alt="Product "></a>
                    </div>
                    <div class="d-flex mb-1 ">
                        <h3 class="h6 mb-0 "><a href="shop-single.html ">팜엔탑 알티지 오메가3 식물성캡슐 650mg X 60캡슐</a></h3>
                    </div>
                    <div class="d-flex align-items-center "><span class="me-2 ">40,250원</span>
                        <del class="fs-sm text-muted ">44,700원</del>
                        <div class="nav ms-auto " data-bs-toggle="tooltip " data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;
                                        " data-bs-placement="left " title="Add to cart "><a class="nav-link fs-lg py-2 px-1 " href="# "><i class="ai-cart "></i></a></div>
                    </div>
                </div>
                <!-- Item 추천상품3-->
                <div class="swiper-slide ">
                    <div class="card-hover position-relative bg-secondary_new rounded-1 p-3 mb-4 "><span class="badge bg-faded-primary text-primary position-absolute top-0 start-0 mt-3 ms-3 "></span>
                        <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0 " type="button "><i class="ai-heart fs-xl d-dark-mode-none "></i><i class="ai-heart
                                        text-nav fs-xl d-none d-dark-mode-block "></i></button>
                        <a class="d-block p-2 p-xl-4 " href="shop-single.html "><img class="d-block mx-auto img_radius" src="//thumbnail8.coupangcdn.com/thumbnails/remote/492x492ex/image/retail/images/2020/09/25/16/9/c8305458-d489-4052-b67e-3e6574444805.jpg
                                        " width="226 " alt="Product "></a>
                    </div>
                    <div class="d-flex mb-1 ">
                        <h3 class="h6 mb-0 "><a href="shop-single.html ">팜엔탑 간에 좋은 밀크씨슬 실리마린</a></h3>
                    </div>
                    <div class="d-flex align-items-center "><span class="me-2 ">19,810원</span>
                        <del class="fs-sm text-muted ">25,250원</del>
                        <div class="nav ms-auto " data-bs-toggle="tooltip " data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;
                                        " data-bs-placement="left " title="Add to cart "><a class="nav-link fs-lg py-2 px-1 " href="# "><i class="ai-cart "></i></a></div>
                    </div>
                </div>
                <!-- Item 추천상품4-->
                <div class="swiper-slide ">
                    <div class="card-hover position-relative bg-secondary_new rounded-1 p-3 mb-4 "><span class="badge bg-faded-danger text-danger position-absolute top-0 start-0 mt-3 ms-3 "></span>
                        <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0 " type="button "><i class="ai-heart fs-xl d-dark-mode-none "></i><i class="ai-heart
                                        text-nav fs-xl d-none d-dark-mode-block "></i></button>
                        <a class="d-block p-2 p-xl-4 " href="shop-single.html "><img class="d-block mx-auto img_radius" src="//thumbnail9.coupangcdn.com/thumbnails/remote/492x492ex/image/vendor_inventory/f631/43c38cd30205d49dc44710006ed490a0e9c39f0e3d63239a441d11930dd7.jpg
                                        " width="226 " alt="Product "></a>
                    </div>
                    <div class="d-flex mb-1 ">
                        <h3 class="h6 mb-0 "><a href="shop-single.html ">일양약품 브라질 그린 프로폴리스 90정(1개월분)</a></h3>
                    </div>
                    <div class="d-flex align-items-center "><span class="me-2 ">12,590원</span>
                        <div class="nav ms-auto " data-bs-toggle="tooltip " data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;
                                        " data-bs-placement="left " title="Add to cart "><a class="nav-link fs-lg py-2 px-1 " href="# "><i class="ai-cart "></i></a></div>
                    </div>
                </div>
                <!-- Item 추천상품5-->
                <div class="swiper-slide ">
                    <div class="card-hover position-relative bg-secondary_new rounded-1 p-3 mb-4 ">
                        <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0 " type="button "><i class="ai-heart fs-xl d-dark-mode-none "></i><i class="ai-heart
                                        text-nav fs-xl d-none d-dark-mode-block "></i></button>
                        <a class="d-block p-2 p-xl-4 " href="shop-single.html "><img class="d-block mx-auto img_radius" src="//thumbnail8.coupangcdn.com/thumbnails/remote/492x492ex/image/vendor_inventory/5615/be9e8432d9b89c39897ed1262fd2abcd63ccc666960770357737f0816b09.jpg
                                        " width="226 " alt="Product "></a>
                    </div>
                    <div class="d-flex mb-1 ">
                        <h3 class="h6 mb-0 "><a href="shop-single.html ">팜엔탐 쏘팔메토 옥타코사놀 아연 520mg x 60캡슐 (2개월분)</a></h3>
                    </div>
                    <div class="d-flex align-items-center "><span class="me-2 ">65,800원</span>
                        <div class="nav ms-auto " data-bs-toggle="tooltip " data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;
                                        " data-bs-placement="left " title="Add to cart "><a class="nav-link fs-lg py-2 px-1 " href="# "><i class="ai-cart "></i></a></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Features (carousel on screens < 992px)-->
    <section class="container border-top py-5 mb-1 mb-sm-2 mb-md-4 mb-lg-5 ">
        <div class="swiper " data-swiper-options="{ &quot;slidesPerView&quot;: 1, &quot;spaceBetween&quot;: 24, &quot;pagination&quot;: { &quot;el&quot;: &quot;.swiper-pagination&quot;, &quot;clickable&quot;: true }, &quot;breakpoints&quot;: { &quot;400&quot;:
                                            { &quot;slidesPerView&quot;: 2, &quot;spaceBetween&quot;: 24 }, &quot;700&quot;: { &quot;slidesPerView&quot;: 3, &quot;spaceBetween&quot;: 30 }, &quot;991&quot;: { &quot;slidesPerView&quot;: 4, &quot;spaceBetween&quot;:
                                            40 } } } ">
            <div class="swiper-wrapper ">
                <!-- Item-->
                <div class="swiper-slide text-center text-sm-start ">
                    <div class="text-primary_new mb-3 mb-sm-4">
                        <svg width="40 " height="40 " viewBox="0 0 40 40 " xmlns="http://www.w3.org/2000/svg ">
                  <path d="M37.7794 10.6909L20.2794 1.94092C20.1926 1.89757 20.097 1.875 20 1.875C19.903 1.875 19.8074 1.89757 19.7206 1.94092L2.22063 10.6909C2.11674 10.7428 2.02936 10.8227 1.96832 10.9215C1.90727 11.0203 1.87496 11.1341 1.87501 11.2503V28.7503C1.87437
                                            28.867 1.90641 28.9815 1.96749 29.0809C2.02857 29.1803 2.11626 29.2606 2.22063 29.3128L19.7206 38.0628C19.8074 38.1061 19.903 38.1287 20 38.1287C20.097 38.1287 20.1926 38.1061 20.2794 38.0628L37.7794 29.3128C37.8838
                                            29.2606 37.9714 29.1803 38.0325 29.0809C38.0936 28.9815 38.1256 28.867 38.125 28.7503V11.2503C38.1251 11.1341 38.0928 11.0203 38.0317 10.9215C37.9706 10.8227 37.8833 10.7428 37.7794 10.6909ZM20 19.3015L15.1144 16.8584L30.7306
                                            8.56279L36.1056 11.2503L20 19.3015ZM10.1144 14.3584L25.7306 6.06279L29.3556 7.87529L13.7413 16.1722L10.1144 14.3584ZM9.37501 15.3865L13.125 17.2615V22.2415L11.6919 20.8084C11.5747 20.6912 11.4158 20.6253 11.25 20.6253H9.37501V15.3865ZM20
                                            3.19904L24.3575 5.37529L8.74126 13.6722L3.89751 11.2503L20 3.19904ZM3.12501 12.2615L8.12501 14.7615V21.2503C8.12501 21.416 8.19086 21.575 8.30807 21.6922C8.42528 21.8094 8.58425 21.8753 8.75001 21.8753H10.9913L13.3081
                                            24.1922C13.3955 24.2795 13.5069 24.339 13.6281 24.3632C13.7493 24.3873 13.875 24.3749 13.9892 24.3276C14.1034 24.2803 14.201 24.2002 14.2696 24.0974C14.3383 23.9947 14.375 23.8739 14.375 23.7503V17.8865L19.375 20.3865V36.489L3.12501
                                            28.364V12.2615ZM20.625 36.489V20.3865L36.875 12.2615V28.364L20.625 36.489Z " fill="currentColor "></path>
                </svg>
                    </div>
                    <h3 class="h5 mb-2 mb-sm-3 ">빠른 무료 배송</h3>
                    <p class="fs-sm mb-0 ">필리팝스토어에서 2만원이상 주문 시 모든 배송을 무료로 해드립니다</p>
                </div>
                <!-- Item-->
                <div class="swiper-slide text-center text-sm-start ">
                    <div class="text-primary_new mb-3 mb-sm-4 ">
                        <svg width="40 " height="40 " viewBox="0 0 40 40 " xmlns="http://www.w3.org/2000/svg ">
                  <path d="M38 27.4c-1.5 3.5-4 6.6-7.2 8.7s-6.9 3.3-10.8 3.3c-3.3 0-6.5-.8-9.4-2.4-2.4-1.3-4.4-3.1-6-5.2v3.1c0 .2-.1.3-.2.4a.76.76 0 0 1-.4.2.76.76 0 0 1-.4-.2c-.1-.1-.2-.2-.2-.4V30c0-.2.1-.3.2-.4 0 0 .1 0 .1-.1h0s.1 0 .1-.1h.1 4.8c.2
                                            0 .3.1.4.2a.76.76 0 0 1 .2.4.76.76 0 0 1-.2.4.76.76 0 0 1-.4.2H5.1c2.3 3.3 5.7 5.7 9.6 6.9 4.2 1.3 8.8 1 12.8-.8s7.3-5 9.1-9c1.9-4 2.2-8.5 1-12.8C36.4 10.7 33.7 7 30 4.6s-8.1-3.4-12.5-2.8C13.1 2.5 9.1 4.7 6.2 8s-4.5
                                            7.6-4.5 12c0 .2-.1.3-.2.4a.76.76 0 0 1-.4.2c-.2 0-.3-.1-.4-.2s-.2-.2-.2-.4c0-3.8 1.1-7.6 3.3-10.8S9 3.5 12.6 2C16.1.6 20 .2 23.8 1s7.2 2.6 10 5.3c2.7 2.7 4.6 6.2 5.3 10 .7 3.7.3 7.6-1.1 11.1zm-14.1-3.8c0 1-.4 2-1.1
                                            2.8-.6.5-1.3.9-2 1.1v.7c0 .2-.1.4-.2.5s-.3.2-.5.2-.4-.1-.5-.2-.2-.3-.2-.5v-.7a3.09 3.09 0 0 1-2-1.1c-.7-.7-1.1-1.7-1.1-2.8 0-.2.1-.4.2-.5s.3-.2.5-.2.4.1.5.2.2.3.2.5c0 .7.3 1.3.7 1.8.5.5 1.1.7 1.8.7s1.3-.3 1.8-.7c.5-.5.7-1.1.7-1.8s-.3-1.8-2.7-2.5c-3-.9-3.7-2.6-3.7-3.8
                                            0-1 .4-2 1.1-2.8.6-.6 1.3-.9 2-1.1v-.7c0-.2.1-.4.2-.5s.3-.2.5-.2.4.1.5.2.2.3.2.5v.7a3.09 3.09 0 0 1 2 1.1c.7.7 1.1 1.7 1.1 2.8 0 .2-.1.4-.2.5s-.3.2-.5.2-.4-.1-.5-.2-.2-.3-.2-.5c0-.7-.3-1.3-.7-1.8-.5-.5-1.1-.7-1.8-.7s-1.3.3-1.8.7c-.5.5-.7
                                            1.1-.7 1.8 0 .4 0 1.7 2.7 2.5 2.4.7 3.7 2 3.7 3.8z " fill="currentColor "></path>
                </svg>
                    </div>
                    <h3 class="h5 mb-2 mb-sm-3 ">환불 보장</h3>
                    <p class="fs-sm mb-0 ">필리팝스토어는 30일 안에 모든 금액을 환불해 드립니다</p>
                </div>
                <!-- Item-->
                <div class="swiper-slide text-center text-sm-start ">
                    <div class="text-primary_new mb-3 mb-sm-4 ">
                        <svg width="40 " height="40 " viewBox="0 0 40 40 " xmlns="http://www.w3.org/2000/svg ">
                  <path d="M33.6825 13.683C33.6825 6.12609 27.5564 0 19.9995 0C12.4426 0 6.31646 6.12609 6.31646 13.683C4.36283 13.9263 2.51562 15.2033 2.51562 18.168V25.3136C2.51562 28.6583 4.85694 29.8746 7.07663 29.8746H9.28111C9.70091 29.8746 10.0413
                                            29.5342 10.0413 29.1144V14.3976C10.0413 13.9778 9.70091 13.6374 9.28111 13.6374H7.83679C7.83679 6.92018 13.2823 1.47472 19.9995 1.47472C26.7167 1.47472 32.1621 6.92018 32.1621 13.6374H30.7178C30.298 13.6374 29.9577
                                            13.9778 29.9577 14.3976V29.0916C29.9577 29.5114 30.298 29.8518 30.7178 29.8518H32.1621C31.9493 35.0741 29.4407 36.298 24.4312 36.5184V36.0091C24.4312 35.1694 23.7506 34.4888 22.9109 34.4888H18.1295C17.2898 34.4888
                                            16.6091 35.1694 16.6091 36.0091V38.4797C16.6091 39.3194 17.2898 40 18.1295 40H22.9261C23.7658 40 24.4464 39.3194 24.4464 38.4797V38.0388C29.2659 37.8183 33.4316 36.8225 33.6825 29.8062C35.6361 29.5629 37.4833 28.2858
                                            37.4833 25.3212V18.1756C37.4833 15.1957 35.6437 13.9263 33.6825 13.683ZM8.52094 15.1045V28.3314H7.03862C5.91357 28.3314 3.99795 27.9361 3.99795 25.2908V18.1452C3.99795 15.5226 5.89077 15.1045 7.03862 15.1045H8.52094ZM22.9261
                                            37.3318V38.4873H18.1295V36.0167H22.9261V37.3318ZM35.963 25.3136C35.963 27.9361 34.0702 28.3542 32.9223 28.3542H31.478V15.1577H32.9603C34.0854 15.1577 36.001 15.553 36.001 18.1984L35.963 25.3136Z " fill="currentColor "></path>
                </svg>
                    </div>
                    <h3 class="h5 mb-2 mb-sm-3 ">365일 연중무휴</h3>
                    <p class="fs-sm mb-0 ">필리팝에서는 연중무휴 치철한 고객센터를 운영합니다</p>
                </div>
                <!-- Item-->
                <div class="swiper-slide text-center text-sm-start ">
                    <div class="text-primary_new mb-3 mb-sm-4 ">
                        <svg width="40 " height="40 " viewBox="0 0 40 40 " xmlns="http://www.w3.org/2000/svg ">
                  <path d="M35.1422 8.0989L20.1085 0.0881401C19.8855 -0.0308936 19.6182 -0.0292231 19.3968 0.0923166L4.77905 8.10308C4.53931 8.23464 4.39062 8.48607 4.39062 8.75964V19.2237C4.3994 27.8255 9.49571 35.6074 17.377 39.0535L19.406 39.9377C19.5956
                                            40.0204 19.8115 40.0208 20.0016 39.9385L22.2879 38.9512C30.3153 35.5798 35.5378 27.7228 35.5386 19.0162V8.75964C35.5386 8.48315 35.3862 8.22879 35.1422 8.0989ZM34.0417 19.0162C34.04 27.1226 29.1764 34.4371 21.7019
                                            37.5742L21.6969 37.5767L19.7059 38.4362L17.9759 37.6815C10.6397 34.4738 5.89546 27.2307 5.88711 19.2237V9.20278L19.7614 1.59882L34.0417 9.20821V19.0162Z " fill="currentColor "></path>
                  <path d="M14.2398 18.7389C13.9713 18.4244 13.4989 18.3873 13.1844 18.6558C12.8699 18.924 12.8327 19.3967 13.1013 19.7108L17.0549 24.3406C17.3188 24.6497 17.7812 24.6919 18.0961 24.4354L27.3039 16.9442C27.6247 16.6836 27.6731 16.2121
                                            27.4121 15.8913C27.1514 15.571 26.6799 15.5221 26.3591 15.7831L17.7185 22.8124L14.2398 18.7389Z " fill="currentColor "></path>
                </svg>
                    </div>
                    <h3 class="h5 mb-2 mb-sm-3 ">안전한 온라인 결제</h3>
                    <p class="fs-sm mb-0 ">필리팝에선 강력한 보안으로 온라인결제를 보장합니다</p>
                </div>
            </div>
            <!-- Pagination (Bullets)-->
            <div class="swiper-pagination position-relative bottom-0 pt-1 mt-4 d-lg-none "></div>
        </div>
    </section>
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
    <script src="<%=request.getContextPath()%>/resources/vendor/swiper/swiper-bundle.min.js "></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/lightgallery/lightgallery.min.js "></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/lightgallery/plugins/fullscreen/lg-fullscreen.min.js "></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/lightgallery/plugins/zoom/lg-zoom.min.js "></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/lightgallery/plugins/thumbnail/lg-thumbnail.min.js "></script>
    <!-- 제품 항목 -->
    <script src="<%=request.getContextPath()%>/resources/vendor/imagesloaded/imagesloaded.pkgd.min.js "></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/shufflejs/dist/shuffle.min.js "></script>
    <!-- Main theme script-->
    <script src="<%=request.getContextPath()%>/resources/js/theme.min.js "></script>
</body>

</html>