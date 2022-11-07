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
  <body class="bg-secondary_new2 font-NanumR">
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
          <!-- Breadcrumb-->
          <nav aria-label="breadcrumb">
            <ol class="pt-lg-3 pb-2 pb-md-4 breadcrumb">
                <li class="breadcrumb-item"><a href="#">홈</a></li>
                <li class="breadcrumb-item"><a href="#">마이페이지</a></li>
                <li class="breadcrumb-item active">프로필</li>
            </ol>
          </nav>
          <!-- Sidebar (offcanvas on sreens <992px)-->
          <%@ include file="../../common/aside.jsp" %>
          <!-- Page content-->
          <div class="col-lg-9 pt-4 pb-2 pb-sm-4">
            <h1 class="h2 mb-4">프로필</h1>
            <!-- Basic info-->
            <section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4">
              <div class="card-body">
                <div class="d-flex align-items-center mt-sm-n1 pb-4 mb-0 mb-lg-1 mb-xl-3"><i class="ai-user text-primary-mint lead pe-1 me-2 icon"></i>
                  <h2 class="h4 mb-0">기본 정보</h2>
                </div>
                <form method="post" action="${path}/myPage/profile/update">
                <!-- 프로필 이미지 등록 -->
                <div class="d-flex align-items-center" style="width:100% !important; display:flex;">
                  <div class="dropdown"><a class="d-flex flex-column justify-content-end position-relative overflow-hidden rounded-circle bg-size-cover bg-position-center flex-shrink-0" href="#" data-bs-toggle="dropdown" aria-expanded="false" style="width: 80px; height: 80px; background-image: url('${loginMember.u_img}'), url('${path}/resources/img/avatar/defaultImage.png');"></a>
                  </div>
                  <div class="ps-3">
                    <h3 class="h6 mb-1">프로필 이미지</h3>
                    <p class="fs-sm text-muted mb-0">1000px이하의 정방형 PNG or JPG 이미지를 아래에 경로로 업로드 해주세요. </p>
                    <input class="form-control" type="text" value="${Member.u_img}" id="u_img" name="u_img" style="width: 745px !important">
                  </div>
                </div>
                <div class="row g-3 g-sm-4 mt-0 mt-lg-2">
                  <div class="col-sm-6">
                    <label class="form-label" for="u_name">이름</label>
                    <input class="form-control" type="text" value="${Member.u_name}" id="u_name" name="u_name" required>
                  </div>
                  <div class="col-sm-6">
                    <label class="form-label" for="u_nickname">닉네임</label>
                    <input class="form-control" type="text" value="${Member.u_nickname}" id="u_nickname" name="u_nickname" required>
                  </div>
                  <div class="col-sm-6">
                    <label class="form-label" for="u_id">이메일</label>
                    <input class="form-control" type="text" value="${Member.u_id}" id="u_id" name="u_id" required>
                  </div>
                  <div class="col-sm-6">
                    <label class="form-label" for="u_phone">휴대폰 번호</label>
                    <input class="form-control" type="text" value="${Member.u_phone}" id="u_phone" name="u_phone" required>
                  </div>
                  <div class="col-sm-6">
                    <label class="form-label" for="u_birth">생년월일</label>
                    <input class="form-control" type="text" value="${Member.u_birth}" id="u_birth" name="u_birth" required>
                  </div>
                  <div class="col-sm-6">
                    <label class="form-label" for="u_addr">주소</label>
                    <input class="form-control" type="text" value="${Member.u_addr}" id="u_addr" name="u_addr" required>
                  </div>
                  <div class="d-sm-flex align-items-center pt-4 pt-sm-5">
                    <button class="btn btn-primary_new" type="button" style="display: inline-flex; width : 100%; float: left; margin: 0 500px 0 0;" onclick="window.open('${path}/myPage/passwordChange');">비밀번호 변경</button>
                    <button class="btn btn-primary_new ms-3" type="submit">변경사항 저장</button>
                  </div>
                </div>
                </form>
              </div>
            </section>
            <!-- address-->
            <%-- <section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4">
              <div class="card-body">
                <div class="d-flex align-items-center pb-4 mt-sm-n1 mb-0 mb-lg-1 mb-xl-3"><i class="ai-map-pin text-primary-mint lead pe-1 me-2"></i>
                  <h2 class="h4 mb-0">주소</h2>
                </div>
                <div class="row row-cols-1 row-cols-md-2 g-4">
                  <!-- Address (primary)-->
                  <div class="col">
                    <div class="card h-100 rounded-3 p-3 p-sm-4">
                      <div class="d-flex align-items-center pb-2 mb-1">
                        <span class="badge bg-faded-primary-yellow text-primary-white fs-xs ms-3">우리집 주소</span>
                        <div class="d-flex ms-auto">
                          <button class="nav-link fs-xl fw-normal py-1 pe-0 ps-1 ms-2" type="button" data-bs-toggle="tooltip" title="Edit"><i class="ai-edit-alt"></i></button>
                          <button class="nav-link text-danger fs-xl fw-normal py-1 pe-0 ps-1 ms-2" type="button" data-bs-toggle="tooltip" title="Delete"><i class="ai-trash"></i></button>
                        </div>
                      </div>
                      <p class="mb-0">${Member.u_addr}</p>
                    </div>
                  </div>
                  <c:if test="${Member.u_addr} == null">
                  <!-- Add address-->
                	<div class="col">
                    	<div class="card h-100 justify-content-center align-items-center border-dashed rounded-3 py-5 px-3 px-sm-4"><a class="stretched-link d-flex align-items-center fw-semibold text-decoration-none my-sm-3 text-primary-mint" href="#addAddress" data-bs-toggle="modal"><i class="ai-circle-plus fs-xl me-2 text-primary-mint"></i>새로운 주소 추가</a></div>
                  </div>
                  </c:if>
                </div>
              </div>
            </section> --%>
            <br>
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