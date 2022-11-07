<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>    
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>pillipop | News List</title>
    <!-- SEO Meta Tags-->
    <meta name="description" content="Around - Multipurpose Bootstrap HTML Template">
    <meta name="keywords" content="bootstrap, business, corporate, coworking space, services, creative agency, dashboard, e-commerce, mobile app showcase, saas, multipurpose, product landing, shop, software, ui kit, web studio, landing, dark mode, html5, css3, javascript, gallery, slider, touch, creative">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="apple-touch-icon" sizes="180x180" href="${path}/resources/img/2_img/logo/Pillipop.png">
    <link rel="icon" type="image/png" sizes="32x32" href="${path}/resources/img/2_img/logo/Pillipop.png">
    <link rel="icon" type="image/png" sizes="16x16" href="${path}/resources/img/2_img/logo/Pillipop.png">
    <link rel="manifest" href="${path}/resources/favicon/site.webmanifest">
    <link rel="mask-icon" color="#6366f1" href="${path}/resources/favicon/safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#080032">
    <meta name="msapplication-config" content="${path}/resources/favicon/browserconfig.xml">
    <meta name="theme-color" content="white">
    <!-- Theme mode-->

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
    </style>
    
    <!-- Import Google Font-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;display=swap" rel="stylesheet" id="google-font">
    <!-- Vendor styles-->
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/swiper/swiper-bundle.min.css" />
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.min.css">
    <!-- headerfooter -->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/0_headerfooter.css">
    <!-- 1_StoreMain -->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/1_news.css">
</head>
<!-- Body-->

<body>
    <!-- Page loading spinner-->
	<%@ include file="../../common/loading.jsp" %>
	
    <!-- Page wrapper-->
    <main class="page-wrapper">
        <%-- header --%>
		<%@ include file="../../common/header.jsp" %>

        <div class="container pt-5 my-5">
            <!-- Breadcrumb-->
            <nav aria-label="breadcrumb" class="font-NanumB">
                <ol class="pt-lg-3 pb-lg-4 pb-2 breadcrumb">
                    <li class="breadcrumb-item"><a href="${path}">홈</a></li>
                    <li class="breadcrumb-item"><a href="#">커뮤니티</a></li>
                    <li class="text-P2 breadcrumb-item active" aria-current="page">스토리</li>
                </ol>
            </nav>
        </div>
        <div>
            <div class="font-NanumB">
                <div class="pt-5">
                    <div class="container position-relative zindex-2 mt-sm-4 mt-md-5" style="bottom : 5.5rem;">
                        <div class="row pt-xl-3 pt-xxl-4">
                            <div class="col-lg-5 pt-sm-3">
                                <!-- Contact form-->
                                <form class="card border-0 py-4 px-xxl-4" method="get" action="${path}/news/newslist">
                                    <div class="card-body" style="padding-right: 38px 28px 38px 28px;">
                                        <div class="font-NanumEB text_2 text-P2 mt-n2 ">Health <span class="text-P2">news</span></div>
                                        <div style="display: block; ">
                                            <select class="form-select" style="width: 8rem; display: inline-block;"  id="searchType" name="searchType" required>
                                                 <option value="" selected disabled>카테고리</option>
                                                 <option value="title">전체</option>
                                                 <option value="Life">Life</option>
                                                 <option value="nutrition">Nutrition</option>
                                            </select>
                                            <div class="gy-lg-4 gy-3 gx-xl-4 gx-sm-3 gx-2 ms-3" style="display: inline-block;">
                                                <div class=" " style="display: inline-block; width: 254px;">
                                                    <div class="position-relative mt-4"><i class="ai-search position-absolute top-50 start-0 translate-middle-y ms-3 "></i>
                                                		<input class="form-control ps-5" type="text" id="searchValue" name="searchValue" placeholder="제목 검색">
                                            		</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 d-flex justify-content-center mb-3">
										<button class="btn rounded-1 border-0" type="reset" style="background-color: #979797;">다시입력</button>
										<button class="btn ms-3 rounded-1 border-0" type="submit" onclick="getSearchList()" style="background-color: #86cbcd">
										검색<i class="ai-search" style="margin-left: 10px"></i>
										</button>
									</div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- Parallax image-->
                    <div class="jarallax rounded-5 " data-jarallax data-speed="0.6 " style="max-width: 2000px; ">
                        <div class=" jarallax-img " style="background-image: url(${path}/resources/img/1_StoreMain/baner_story_4.png); ">
                        </div>
                        <div class="d-none d-xxl-block " style="height: 450px; margin-top: -470px; "></div>
                        <div class="d-none d-xl-block d-xxl-none " style="height: 7000px; margin-top: -490px; ">
                        </div>
                        <div class="d-none d-lg-block d-xl-none " style="height: 650px; margin-top: -560px; "></div>
                        <div class="d-none d-sm-block d-lg-none " style="height: 480px; margin-top: -450px; "></div>
                        <div class="d-sm-none " style="height: 450px; margin-top: -450px; "></div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="pt-1" id="newsList">
        <div class="container pt-5 pb-lg-5 pb-md-4 pb-2 my-5 ">
            <!-- Post-->
            
            <c:if test="${empty list}">
            		<h3 style="text-align: center;">조회된 글이 없습니다.</h3>
            </c:if>
            
            
            <c:if test="${!empty list}">
				<c:forEach var="News" items="${list}">
					<article class="row g-0 border-0 pt-3 pt-sm-0 mb-4 ">
                		<a class="col-sm-5 col-lg-4 bg-repeat-0 bg-size-cover bg-position-center rounded-5 " href="${path}/news/newsdetail?st_seqNo=${News.st_seqNo}" 
                		style="background-image: url(<c:out value="${News.st_thumbNail}"/>); min-height: 16rem ">
                		</a>
                		<div class="col-sm-7 col-lg-8 ">
                    		<div class="pt-4 pb-sm-4 ps-sm-4 pe-lg-4 ">
                        		<h3><a href="${path}/news/newsdetail?st_seqNo=${News.st_seqNo}"><c:out value="${News.st_title}"/>
                            		<span class="text_1 ">(feat.pilly)</span>
                        		</a></h3>
                        		<p class="d-sm-none d-md-block ">
                            		<c:out value="${News.st_subTitle}"/>
                        		</p>
	                        	<div class="d-flex flex-wrap align-items-center mt-n2 ">
	                            	<a class="badge text-nav fs-xs border mt-2 " href="# "><c:out value="${News.st_cate}"/></a>
	                            	<span class="fs-xs opacity-20 mt-2 mx-3 ">|</span><span class="fs-sm text-muted mt-2 "><c:out value="${News.st_date}"/></span>
	                            	<span class="fs-xs opacity-20 mt-2 mx-3 "></span>
                    			</div>
                			 </div>
                		 </div>
            		  </article>
				  </c:forEach>
			  </c:if>
           </div>
        </div>
    </main>

    <!-- Footer-->
 	<%@ include file="../..//common/footer.jsp" %>
    <!-- Back to top button-->
    <a class="btn-scroll-top " href="#top " data-scroll>
        <svg viewBox="0 0 40 40 " fill="currentColor " xmlns="http://www.w3.org/2000/svg ">
        <circle cx="20 " cy="20 " r="19 " fill="none " stroke="currentColor " stroke-width="1.5 " stroke-miterlimit="10 "></circle>
      </svg><i class="ai-arrow-up "></i></a>
    <!-- Vendor scripts: js libraries and plugins-->
    <script src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js "></script>
    <script src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js "></script>
    <script src="${path}/resources/vendor/jarallax/dist/jarallax.min.js "></script>
    <script src="${path}/resources/vendor/swiper/swiper-bundle.min.js "></script>
    <!-- Main theme script-->
    <script src="${path}/resources/js/theme.min.js "></script>
</body>

</html>