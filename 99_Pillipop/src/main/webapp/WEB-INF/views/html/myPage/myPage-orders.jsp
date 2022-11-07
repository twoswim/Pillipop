<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>pillipop</title>
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
    <script>
      let mode = window.localStorage.getItem('mode'),
          root = document.getElementsByTagName('html')[0];
      if (mode !== undefined && mode === 'dark') {
        root.classList.add('dark-mode');
      } else {
        root.classList.remove('dark-mode');
      }
      
      
    </script>
    <!-- Import Google Font-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;display=swap" rel="stylesheet" id="google-font">
    <!-- Vendor styles-->
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.min.css">
    <!--headerfooter -->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/headerfooter.css">
    <!-- 1_StoreMain -->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/1_news.css">
    <!-- 2_product -->
    <link rel="stylesheet" href="${path}/resources/css/2_product.css">
    <!-- CSS -->
    <link rel="stylesheet" href="${path}/resources/css/5_myPage.css">
    <!-- 0_headerfooter -->
	<link rel="stylesheet" media="screen" href="${path}/resources/css/headerfooter.css">
	<link rel="stylesheet" media="screen" href="${path}/resources/css/0_headerfooter.css">
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
      .page-loading.active > .page-loading-inner {
        opacity: 1;
      }
      .page-loading-inner > span {
        display: block;
        font-family: 'Inter', sans-serif;
        font-size: 1rem;
        font-weight: normal;
        color: #6f788b;
      }
      .dark-mode .page-loading-inner > span {
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
        background-color: rgba(255,255,255,.25);
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
          }, 1500);
        };
      })();
      
    </script>
    <!-- Import Google Font-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;display=swap" rel="stylesheet" id="google-font">
    <!-- Vendor styles-->
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.min.css">
    <!-- CSS -->
    <link rel="stylesheet" href="${path}/resources/css/5_myPage.css">
  </head>
  <!-- Body-->
  <body class="bg-secondary_new2">
    <style>
      body {
        font-family: "NanumSquareR";
      }
    </style>
    <%@ include file="../../common/loading.jsp" %>
    <!-- Page wrapper-->
    <main class="page-wrapper">
      <!-- Navbar. Remove 'fixed-top' class to make the navigation bar scrollable with the page-->
      <%-- header --%>
    	<%@ include file="../../common/header.jsp" %>
      <!-- Page content-->
      <div class="container py-5 mt-4 mt-lg-5 mb-lg-4 my-xl-5">
        <div class="row pt-sm-2 pt-lg-0">
          <!-- Sidebar (offcanvas on sreens < 992px)-->
          <nav aria-label="breadcrumb">
            <ol class="pt-lg-3 pb-2 pb-md-4 breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">홈</a></li>
                <li class="breadcrumb-item"><a href="shop-catalog.html">마이페이지</a></li>
                <li class="breadcrumb-item active mint">주문확인/배송조회</li>
            </ol>
          </nav>
          <!-- Sidebar (offcanvas on sreens <992px)-->
          <%@ include file="../../common/aside.jsp" %>
          <!-- Page content-->
          <div class="col-lg-9 pt-4 pb-2 pb-sm-4">
            <div class="d-flex align-items-center mb-4">
              <h1 class="h2 mb-0">주문확인/배송조회</h1>
              <select class="form-select ms-auto" style="max-width: 200px;">
                <option value="All">모든 내역</option>
                <option value="In progress">주문확인중</option>
                <option value="Delivered">배송중</option>
                <option value="Canceled">배송완료</option>
                <option value="Delivered">주문취소</option>
              </select>
            </div>
            <div class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4">
              <div class="card-body pb-4">
                <!-- Stats-->
                <div class="row g-3 g-xl-4">
                  <div class="col-md-4 col-sm-6">
                    <div class="h-100 bg-secondary rounded-3 text-center p-4">
                      <h2 class="h6 pb-2 mb-1">주문확인중</h2>
                      <div class="h1 text-primary-yellow mb-2">${basket.size()}</div>
                    </div>
                  </div>
                  <div class="col-md-4 col-sm-6">
                    <div class="h-100 bg-secondary rounded-3 text-center p-4">
                      <h2 class="h6 pb-2 mb-1">배송중</h2>
                      <div class="h1 text-primary-yellow mb-2 ">0</div>
                    </div>
                  </div>
                  <div class="col-md-4 col-sm-12">
                    <div class="h-100 bg-secondary rounded-3 text-center p-4">
                      <h2 class="h6 pb-2 mb-1">배송완료</h2>
                      <div class="h1 text-primary-yellow mb-2">0</div>
                    </div>
                  </div>
                </div>
                <br>
                <!-- Orders accordion-->
                <div class="accordion accordion-alt accordion-orders" id="orders">
				<!-- Order-->
                  <div class="accordion-item border-top mb-0">
                    <div class="accordion-header">
                        <div class="d-flex justify-content-between w-100" style="max-width: 440px;">
                          <div class="me-3 me-sm-4">
                          	<div class="fs-sm text-muted">#${orderInfo.or_no}</div><span class="badge bg-faded-info text-info fs-xs">주문확인중</span>
                          </div>
                          <div class="me-3 me-sm-4">
                            <div class="d-none d-sm-block fs-sm text-muted mb-2">주문한 날짜</div>
                            <div class="d-sm-none fs-sm text-muted mb-2">Date</div>
                            <div class="fs-sm fw-medium text-dark"><fmt:formatDate value="${orderInfo.or_date}" pattern="yyyy-MM-dd"/></div>
                          </div>
                          <div class="me-3 me-sm-4">
                            <div class="fs-sm text-muted mb-2">결제금액</div>
                            <div class="fs-sm fw-medium text-dark"><fmt:formatNumber value="${orderInfo.or_price}" pattern="#,### 원" /></div>
                          </div>
                        </div>
                        <div class="accordion-button-img d-none d-sm-flex ms-auto">
                            <c:forEach items="${basket}" var="basket">
                          <div class="mx-1"><img src="${basket.hth_img}" width="48" alt="Product"></div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="accordion-collapse collapse show" id="orderThree" data-bs-parent="#orders">
                      <div class="accordion-body">
                        <div class="table-responsive pt-1">
                          <table class="table align-middle w-100" style="min-width: 450px;">
                            <c:forEach items="${basket}" var="basket">
                            <tr>
                              <td class="border-0 py-1 px-0">
                                <div class="d-flex align-items-center"><a class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-md-2 p-lg-3" href="shop-single.html"><img src="${basket.hth_img}" width="110" alt="Product"></a>
                                  <div class="ps-3 ps-sm-4">
                                    <div class="text-muted fs-sm me-3"><span class='text-dark fw-medium'>[<c:out value="${basket.BSSH_NM}"/>]</span></div>
                                    <h4 class="h6 mb-2"><a href="shop-single.html"><c:out value="${basket.PRDLST_NM}"/></a></h4>
                                  </div>
                                </div>
                              </td>
                              <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">수량</div>
                                <div class="fs-sm fw-medium text-dark"><c:out value="${basket.b_ea}"/></div>
                              </td>
                              <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">상품금액</div>
                                <c:set var="sale" value="${Math.round((basket.hth_price - (basket.hth_price * (basket.hth_discount/100)))/100)}"></c:set>
                                <c:if test="${basket.hth_discount != null}">
                                	<div class="fs-sm fw-medium text-dark"><fmt:formatNumber value="${sale*100}" pattern="#,### 원" /></div>
                                </c:if>
                                <c:if test="${basket.hth_discount == null}">
                                	<div class="fs-sm fw-medium text-dark"><fmt:formatNumber value="${basket.hth_price}" pattern="#,### 원" /></div>
                                </c:if>
                              </td>
                              <td class="border-0 text-end py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">주문금액</div>
                                <div class="fs-sm fw-medium text-dark"><fmt:formatNumber value="${(sale*100)*basket.b_ea}" pattern="#,### 원" /></div>
                              </td>
                            </tr>
                            </c:forEach>
                          </table>
                        </div>
                        <div class="bg-secondary rounded-1 p-4 my-2">
                          <div class="row">
                            <div class="col-sm-5 col-md-3 col-lg-4 mb-3 mb-md-0">
                              <div class="fs-sm fw-medium text-dark mb-1">Payment:</div>
                              <div class="fs-sm">카카오페이</div>
                            </div>
                            <div class="col-sm-7 col-md-5 mb-4 mb-md-0">
                              <div class="fs-sm fw-medium text-dark mb-1">배송지 정보</div>
                              <div class="fs-sm">[${orderInfo.addr_postal}]<br>${orderInfo.addr_road}<br>${orderInfo.addr_detail}<br>${orderInfo.addr_detail_add}</div>
                            </div>
                            <div class="col-md-4 col-lg-3 text-md-end">
                              <button class="btn btn-sm btn-outline-review w-100 w-md-auto" type="button"><i class="ai-star me-2 ms-n1"></i>후기 작성하기</button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- Pagination-->
              </div>
            </div>
          </div>
        </div>
      </div>
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
    <script src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <!-- Main theme script-->
    <script src="${path}/resources/js/theme.min.js"></script>

</body>
</html>