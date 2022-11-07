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
    <!-- Import  Phillipop Font-->
    <link rel="preconnect" href="https://fonts  Phillipopapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts  Phillipopapis.com/css2?family=Inter:wght@400;500;600;700&amp;display=swap" rel="stylesheet" id=  Phillipop-font">
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
      <!-- Add new address modal-->
      <div class="modal fade" id="addAddress" data-bs-backdrop="static" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header border-0">
              <h4 class="modal-title">새로운 주소 추가하기</h4>
              <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form class="modal-body needs-validation pt-0" novalidate>
              <div class="row row-cols-1 row-cols-lg-2 g-4 pb-2 pb-sm-3 mb-4">
                <div class="col" style="width: 50%;">
                  <label class="form-label" for="addressName">배송지명</label>
                  <input class="form-control" type="text" required id="addressName">
                </div>
                <!-- 정렬을 위해서 숨김 처리 -->
                <div class="col" style="visibility: hidden;">
                  <label class="form-label" for="empty">empty</label>
                  <input class="form-control" type="text" required id="empty">
                </div>    
                <!-- 여기까지 숨김처리 -->
                <div class="col">
                  <label class="form-label" for="postcode">우편번호</label>
                  <div style="display: flex;">
                    <input class="form-control" type="text" id="postcode" style="width:60%;">
                    <span>
                      <button class="btn btn-primary ms-sm-3" type="button">우편번호 찾기</button>
                    </span>
                  </div>
                </div>
                <!-- 정렬을 위해서 숨김 처리 -->
                <div class="col" style="visibility: hidden;">
                  <label class="form-label" for="empty">empty</label>
                  <input class="form-control" type="text" required id="empty">
                </div>    
                <!-- 여기까지 숨김처리 -->  
                <div class="col" style="width: 100%;">
                  <label class="form-label" for="address1">도로명 주소</label>
                  <input class="form-control" type="text" required id="address1">
                </div>
                <div class="col" style="width: 100%;">
                  <label class="form-label" for="address2">상세 주소</label>
                  <input class="form-control" type="text" id="address2">
                </div>
                <div class="col">
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="set-primary">
                    <label class="form-check-label text-dark fw-medium" for="set-primary">기본 주소로 설정하기</label>
                  </div>
                </div>
              </div>
              <div class="col-12 d-flex justify-content-end pt-3">
                <button class="btn btn-secondary mb-3 mb-sm-0" type="reset" data-bs-dismiss="modal">취소</button>
                <button class="btn btn-primary ms-sm-3" type="submit">저장</button>
              </div>
            </form>
          </div>
        </div>
      </div>
      <div class="container py-5 mt-4 mt-lg-5 mb-lg-4 my-xl-5">
        <div class="row pt-sm-2 pt-lg-0">
        <!-- Breadcrumb-->
          <nav aria-label="breadcrumb">
            <ol class="pt-lg-3 pb-2 pb-md-4 breadcrumb">
                <li class="breadcrumb-item"><a href="#">홈</a></li>
                <li class="breadcrumb-item"><a href="#">마이페이지</a></li>
                <li class="breadcrumb-item active mint">탈퇴하기</li>
            </ol>
          </nav>
          <%@ include file="../../common/aside.jsp" %>
          <!-- Page content-->
          <div class="col-lg-9 pt-4 pb-2 pb-sm-4">
            <h1 class="h2 mb-4">탈퇴하기</h1>
            <!-- Delete account-->
            <form method="get" action="${path}/myPage/signOut/confirm">
            <section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4">
              <div class="card-body">
                <div class="d-flex align-items-center pb-4 mt-sm-n1 mb-0 mb-lg-1 mb-xl-3"><i class="ai-trash text-primary-mint lead pe-1 me-2"></i>
                  <h2 class="h4 mb-0">탈퇴하기</h2>
                </div>
                <div class="alert alert-warning d-flex mb-4"><i class="ai-triangle-alert fs-xl me-2"></i>
                  <p class="mb-0">언제든지 Pillipop 계정을 삭제할 수 있습니다. 계정을 삭제하면 클라우드에 보관한 모든 파일을 포함하여 Pillipop 앱 및 서비스에 대한 액세스 권한을 잃게 됩니다. 계정은 영구적으로 삭제되며 손실된 데이터는 복구할 수 없습니다.
                  <br><br>
                  또한 해당 계정을(를) 사용하는 Pillipop 외 서비스에 더 이상 액세스하지 못하게 될 가능성이 있습니다. 예를 들어 이 이메일 주소를 은행 계정의 복구 이메일로 사용 중이라면 은행 비밀번호를 재설정하기 어려울 수도 있습니다. 계속할 경우 이 이메일 주소를 사용하는 모든 Pillipop 외 서비스에서 이메일 주소를 업데이트해야 합니다. 
                  <br><br>
                  다만, 마음이 바뀌어 계정 삭제 후 14일 이내 로그인 할 경우 계정을 활성화할 수 있는 링크를 보내드릴 예정입니다.
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="confirm" required>
                  <label class="form-check-label text-dark fw-medium" for="confirm">동의합니다.</label>
                </div>
                <div class="d-flex flex-column flex-sm-row justify-content-end pt-4 mt-sm-2 mt-md-3">
                  <button class="btn btn-danger" type="submit"><i class="ai-trash ms-n1 me-2"></i>계정 삭제</button>
                </div>
              </div>
            </section>
            </form>
          </div>
        </div>
      </div>
      <!-- Divider for dark mode only-->
      <hr class="d-none d-dark-mode-block">
      <!-- Sidebar toggle button-->
      <button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#sidebarAccount"><i class="ai-menu me-2"></i>Account menu</button>
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