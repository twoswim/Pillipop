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

      .common-btn.btn-size-l {
          min-width: 100px;
          font-size: 14px;
          padding: 11px 18px;
      }

      .common-btn {
          display: inline-block;
          vertical-align: middle;
          border: 1px solid #c7c7c7;
          background: #f5f5f5;
          font-size: 13px;
          padding: 7px 16px 8px;
          font-weight: 400;
          line-height: 1.2em;
          color: #555;
          text-decoration: none;
          text-align: center;
          border-radius: 42px;
      }

      .common-btn.btn-color-normal {
          border: 1px solid #505050;
          background: #505050;
          color: #ffffff;
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
    <!-- Import  Phillipop Font-->
    <link rel="preconnect" href="https://fonts  Phillipopapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts  Phillipopapis.com/css2?family=Inter:wght@400;500;600;700&amp;display=swap" rel="stylesheet" id="Phillipop-font">
    <!-- Vendor styles-->
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/css/theme.min.css">
    <!-- CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/5_myPage.css">
  </head>
  <!-- Body-->
  <body class="bg-secondary_new2">
          <!-- Sidebar (offcanvas on sreens < 992px)-->
          <aside class="col-lg-3 pe-lg-4 pe-xl-5 mt-n3">
            <div class="position-lg-sticky top-0">
              <div class="d-none d-lg-block" style="padding-top: 105px;"></div>
              <div class="offcanvas-lg offcanvas-start" id="sidebarAccount">
                <button class="btn-close position-absolute top-0 end-0 mt-3 me-3 d-lg-none" type="button" data-bs-dismiss="offcanvas" data-bs-target="#sidebarAccount"></button>
                <div class="offcanvas-body">
                  <div class="pb-2 pb-lg-0 mb-4 mb-lg-5">
                   <!-- 멤버 말고 로그인 멤버로 받아오기 -->

<%-- 				<div><a style="width:80px !important;  height:80px !important; background-image: url('${loginMember.u_img}'); ">123</a></div> --%>
<%-- 	                  <img class="d-block rounded-circle mb-2 newImage" width="80px;"  height="80px; !important" src="${loginMember.u_img}"> --%>

					<div class="dropdown pb-3"><a class="d-flex flex-column justify-content-end position-relative overflow-hidden rounded-circle bg-size-cover bg-position-center flex-shrink-0" href="#" data-bs-toggle="dropdown" aria-expanded="false" style="width: 80px; height: 80px; background-image: url('${loginMember.u_img}'), url('/pillipop/resources/img/avatar/defaultImage.png');"><span class="d-block text-light text-center lh-1 pb-1"></span></a>
                  </div>
                    <h3 class="h5 mb-1">${loginMember.u_nickname}</h3>
                    <p class="fs-sm text-muted mb-0">${loginMember.u_id}</p>
                  </div>
                  <nav class="nav flex-column pb-2 pb-lg-4 mb-3">
                    <h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">계정</h4><a class="nav_new nav-link fw-semibold py-2 px-0" href="${path}/myPage/profile"><i class="ai-user-check fs-5 opacity-60 me-2"></i>프로필</a>
                  </nav>
                  <nav class="nav flex-column pb-2 pb-lg-4 mb-1">
                    <h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">대시보드</h4><a class="nav_new nav-link fw-semibold py-2 px-0" href="${path}/board/myPage/myActivities"><i class="ai-messages fs-5 opacity-60 me-2"></i>내 활동</a><a class="nav_new nav-link fw-semibold py-2 px-0" href="${path}/myPage/myPillipop"><i class="ai-capsule fs-5 opacity-60 me-2"></i>마이 필리팝</a>
                  </nav>
                  <nav class="nav flex-column pb-2 pb-lg-4 mb-1">
                    <h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">쇼핑</h4><a class="nav_new nav-link fw-semibold py-2 px-0" href="${path}/health/basketList?no=${loginMember.u_no}"><i class="ai-cart fs-5 opacity-60 me-2"></i>장바구니</a><a class="nav_new nav-link fw-semibold py-2 px-0" href="${path}/health/mypage_order?no=${loginMember.u_no}"><i class="ai-box fs-5 opacity-60 me-2"></i>주문확인/배송조회</a><a class="nav_new nav-link fw-semibold py-2 px-0" href="${path}/medicine/mLike"><i class="ai-heart fs-5 opacity-60 me-2"></i>찜한 약/약국</a>
                  </nav>
                  <nav class="nav flex-column"><a class="nav_new nav-link fw-semibold py-2 px-0" href="${path}/logout"><i class="ai-logout fs-5 opacity-60 me-2"></i>로그아웃</a><a class="nav_new nav-link fw-semibold py-2 px-0" href="${path}/myPage/signOut"><i class="ai-circle-info fs-5 opacity-60 me-2"></i>탈퇴하기</a>
                  </nav>
                </div>
              </div>
            </div>
          </aside>
  </body>
</html>