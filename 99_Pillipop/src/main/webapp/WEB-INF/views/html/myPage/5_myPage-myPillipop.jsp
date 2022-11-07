<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
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
      
      body {
            font-family: "NanumSquareR";
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
    <link rel="preconnect" href="https://fonts.gstatic.com">
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
      <!-- Add new address modal-->
      <div class="container py-5 mt-4 mt-lg-5 mb-lg-4 my-xl-5">
        <div class="row pt-sm-2 pt-lg-0">
          <!-- Breadcrumb-->
          <nav aria-label="breadcrumb">
            <ol class="pt-lg-3 pb-2 pb-md-4 breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">홈</a></li>
                <li class="breadcrumb-item"><a href="shop-catalog.html">마이페이지</a></li>
                <li class="breadcrumb-item active mint">마이 필리팝</li>
            </ol>
          </nav>
          <!-- Sidebar (offcanvas on sreens < 992px)-->
          <%@ include file="../../common/aside.jsp" %>
          <!-- Page content-->
          <div class="col-lg-9 pt-4 pb-2 pb-sm-4">
            <h1 class="h2 mb-4">마이 필리팝</h1>
            <!-- Payment methods-->
            <section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4">
              <div class="card-body">
                <div class="d-flex align-items-center mt-sm-n1 pb-4 mb-0 mb-lg-1 mb-xl-3"><i class="ai-capsule text-primary-mint lead pe-1 me-2"></i>
                  <h2 class="h4 mb-0">복용중인 약</h2>
                </div>
                <div class="row row-cols-1 row-cols-md-2 g-4">
                  <!-- Default accordion -->
                  <div class="accordion" id="accordionDefault" style="width: 100%;">
                  <!-- Item -->
                  <div class="accordion-item border-dashed rounded-3 px-3 px-sm-4"  style="background-color: #ffff;">
                    <h3 class="accordion-header" id="headingOne">
                      <button class="accordion-button " type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne"><a class="stretched-link d-flex align-items-center fw-semibold text-decoration-none text-primary-mint"><i class="ai-circle-plus fs-xl me-2 text-primary-mint"></i>새로운 약 추가</a></button>
                    </h3>
                    <div class="accordion-collapse collapse show" id="collapseOne" aria-labelledby="headingOne" data-bs-parent="#accordionDefault">
                      <div class="accordion-body fs-sm">
                        <form class="modal-body" novalidate method="post" action="${path}/myPage/myPillipop/insert">
                          <div class="mb-4">
                           <div style="display:none;">
                            <label class="form-label" for="itemImage"><br>약품이미지</label>
                            <div style="display: flex;">
                              <c:choose>
	                              <c:when test="${not empty medicine}">
	                              	<input class="form-control" type="file" name="itemImage" value="${medicine.itemImage}" required>
	                              </c:when>
	                              <c:otherwise>
	                              	<input class="form-control" type="text" name="itemImage" style="width:100%;" required>
	                              </c:otherwise>
	                              </c:choose>
                            </div>
                           </div>
                            <label class="form-label" for="tablet-name"><br>약품명</label>
                            <div style="display: flex;">
                              <c:choose>
	                              <c:when test="${not empty medicine}">
	                              	<input class="form-control" type="text" placeholder="검색 버튼을 눌러 약품을 찾아보세요" name="itemName" value="${medicine.itemName}"></input>
	                              </c:when>
	                              <c:otherwise>
	                              	<input class="form-control" type="text" required placeholder="검색 버튼을 눌러 약품을 찾아보세요" name="itemName" style="width:100%;">
	                              </c:otherwise>
	                              </c:choose>
                              <span>
                                <button class="btn btn-primary_new ms-sm-3" type="button" onclick="search();">검색</button>
                                  <script>
									  function search() {
									  window.location = "${path}/myPage/myPillipop/popup";
									  }
								  </script>
                              </span>
                            </div>
                          </div>
                          <div class="mb-4">
                            <label class="form-label" for="itemSeq">약품코드</label>
                            <div>
                            <c:choose>
                              <c:when test="${not empty medicine}">
                              	<input class="form-control" type="text" required name="itemSeq" value="${medicine.itemSeq}">
                              </c:when>
                              <c:otherwise>
                              	<input class="form-control" type="text" required name="itemSeq">
                              </c:otherwise>
                            </c:choose>
                            </div>
                          </div>
                          <div class="mb-4">
                            <label class="form-label" for="itemEffect">약효</label>
                            <div>
	                            <c:choose>
	                              <c:when test="${not empty medicine}">
	                              	<input class="form-control" type="text" required placeholder="press the button" name="itemEffect" value="${medicine.efcyQesitm}">
	                              </c:when>
	                              <c:otherwise>
	                              	<input class="form-control" type="text" required name="itemEffect">
	                              </c:otherwise>
                              </c:choose>
                            </div>
                          </div>                     
                          <div class="mb-4">
                          <label class="form-label" for="itemNum">복용량</label>
		                      <select class="form-select mb-4" name="itemNum">
		                        <option value="" selected disabled>횟수</option>
		                        <option value="1">1</option>
		                        <option value="2">2</option>
		                        <option value="3">3</option>
		                        <option value="4">4</option>
		                        <option value="5">5</option>
		                        <option value="6">6</option>
		                        <option value="7">7</option>
		                        <option value="8">8</option>
		                        <option value="9">9</option>
		                        <option value="10">10</option>
		                      </select>
		                  </div>
                          <div class="mb-4">
                            <label class="form-label" for="dosingPeriod">복용주기</label>
                            <div style="width: 100%; display: flex;">
                              <label class="form-check-label" for="morning">아침&nbsp;&nbsp;</label>
                              <input class="form-check-input" type="checkbox" name="itemCycle" value="아침" id="itemCycle1" onclick='getCheckboxValue()'>
                              <label class="form-check-label" for="lunch">&nbsp;&nbsp;점심&nbsp;&nbsp;</label>
                              <input class="form-check-input" type="checkbox" name="itemCycle" value="점심" id="itemCycle2" onclick='getCheckboxValue()'>
                              <label class="form-check-label" for="dinner">&nbsp;&nbsp;저녁&nbsp;&nbsp;</label>
                              <input class="form-check-input" type="checkbox" name="itemCycle" value="저녁" id="itemCycle3" onclick='getCheckboxValue()'>                
                              <script language="javascript">
                              	function getCheckboxValue()  {
                            	  // 선택된 목록 가져오기
                            	  const query = 'input[name="itemCycle1, itemCycle2, itemCycle3 "]:checked';
                            	  const selectedEls = 
                            	      document.querySelectorAll(query);
                            	  
                            	  // 선택된 목록에서 value 찾기
                            	  let result = '';
                            	  selectedEls.forEach((el) => {
                            	    result += el.value + ' ';
                            	  });
                            	  
                            	  // 출력
                            	  document.getElementById('itemCycleResult').innerText
                            	    = result;
                            	}
                          	  </script>
                            </div>
                          </div>
                          <div class="mb-4">
                            <label class="form-label" for="medicationGuide">메모</label>
                            <div>
                              <input class="form-control" type="text"name="memo" required >
                            </div>
                          </div>
                          <div class="mb-4">
                            <label class="form-label" for="medicationGuide">복용기간</label>
                            <div style="display: flex;">
                            <!-- 아이디는 스크립트 / 네임으로 반영 -->
                              <input class="form-control" type="date" name="itemStart" style="width: 40%;">
                              <div class="text-muted" style="text-align: center; margin: auto;">부터</div>
                              <input class="form-control" type="date" name="itemEnd" style="width: 40%;">
                              <div class="text-muted" style="text-align: center; margin: auto;">까지</div>
                            </div>
                          </div>
                          <div class="col-12 d-flex justify-content-end pt-3">
                            <button class="btn btn-secondary mb-3 mb-sm-0" type="reset" data-bs-dismiss="modal">취소</button>
                            <button class="btn btn-primary_new ms-sm-3" type="submit">저장</button>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                  <!-- 자식 데이터에 접근 -->
                  <script>
	//		        const newWindow = window.open('popup.jsp');
			        
			        document.getElementById("getChildOutput").addEventListener("click", () => {
			            document.getElementById("childOutput").innerText = newWindow.document.getElementById("childInput").value
			        })
			      </script>
			       <!-- 내가 복용중인 약 카드-->
			      <form method="get" action="${path}/myPage/myPillipop/delete">
			      <c:if test="${!empty list}">
				  <c:forEach var="MyPillipop" items="${list}">
                  <div class="col" style="width: 100%;">
                    <div class="card h-100 rounded-3 p-3 p-sm-4">
                      <div class="d-flex align-items-center pb-2 mb-1">
                      <input type="hidden" value="${MyPillipop.itemSeq}" name="itemSeq"></input>
                        <h3 class="h6 text-nowrap text-truncate mb-0">약품명 : <c:out value="${MyPillipop.itemName}"/>(<c:out value="${MyPillipop.itemSeq}"/>)</h3>
                        <div class="d-flex ms-auto">
                          <button class="nav-link text-danger fs-xl fw-normal py-1 pe-0 ps-1 ms-2" type="submit" data-bs-toggle="tooltip" title="Delete"><i class="ai-trash"></i></button>
                        </div>
                      </div>
                      <div class="d-flex align-items-center">
                      <img class="drugImg" src="${MyPillipop.itemImage}">
                        <div class="ps-3 fs-sm text-dark" style="width: 50%;">
                          <div class="text-dark"> 약효 : ${MyPillipop.itemEffect} </div>
                          <hr><br>
                          <div class="text-dark"> 복용량 : 1일 <c:out value="${MyPillipop.itemNum}"/>회</div>
                          <hr><br>
                          <div class="text-dark"> 복용주기 : 
							<label class="form-check-label" for="morning">아침&nbsp;&nbsp;</label>
                            <input class="form-check-input" type="checkbox" name="itemCycle" value="아침" ${MyPillipop.itemCycle1 == 'Y' ? 'checked':''} >
                            <label class="form-check-label" for="lunch">&nbsp;&nbsp;점심&nbsp;&nbsp;</label>
                            <input class="form-check-input" type="checkbox" name="itemCycle" value="점심" ${MyPillipop.itemCycle2 == 'Y' ? 'checked':''}>
                            <label class="form-check-label" for="dinner">&nbsp;&nbsp;저녁&nbsp;&nbsp;</label>
                            <input class="form-check-input" type="checkbox" name="itemCycle" value="저녁" ${MyPillipop.itemCycle3 == 'Y' ? 'checked':''}>                
                          <hr><br>
                          <div class="text-dark"> 메모 : <c:out value="${MyPillipop.memo}"/></div>
                          <hr><br>
                          
                          <div class="text-dark"> 복용기간 : <c:out value="${MyPillipop.itemStart}"/> ~ <c:out value="${MyPillipop.itemEnd}"/></div>
                        </div>
                      </div>
                      </div>
                      </div><br>
                      </c:forEach>
			       	  </c:if>
			          </form>
                    </div>
                  </div>
              </div>
            </section>
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