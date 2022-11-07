<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<%-- ${path}/resources --%>
<%-- ${path}/resources --%>

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
        a {
            color: #576071;
            text-decoration: none;
        }
        
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
</head>

<!-- Body-->

<body class="bg-secondary_new2">
    <%@ include file="../../common/loading.jsp" %>
    <!-- Page wrapper-->
    <main class="page-wrapper">
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
                        <li class="breadcrumb-item active">내 활동</li>
                    </ol>
                </nav>
                <!-- Sidebar (offcanvas on sreens < 992px)-->
                <%@ include file="../../common/aside.jsp" %>
                <!-- Page content-->
                <div class="col-lg-9 pt-4 pb-2 pb-sm-4">
                    <div class="d-flex align-items-center mb-4">
                        <h1 class="h2 mb-0">내 활동</h1>
                    </div>
                    <div class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4">
                        <div class="card-body pb-4">
                            <!-- 내댓글/내게시글 -->
                            <section class="container font-NanumB">
                                <!-- Nav tabs-->
                                <ul class="nav nav-tabs flex-nowrap overflow-auto text-nowrap w-100 pb-1 mx-auto" role="tablist" style="max-width: 892px; position: relative; right: 12px;">
                                    <li class="nav-item mb-0"><a class="nav-link active" href="#beginners" data-bs-toggle="tab" role="tab" type="submit">내 게시글</a></li>
                                    <li class="nav-item mb-0"><a class="nav-link" href="#stretching" data-bs-toggle="tab" role="tab" type="submit">내 댓글</a></li>
                                </ul>
                                <!-- Tab content-->
                                <div class="tab-content">
                                    <!-- Beginers-->
                                    <div class="tab-pane fade show active" id="beginners" role="tabpanel">
                                        <div class="row align-items-lg-center">
                                            <table class="subject_table font-NanumR text_1-2 a_none">
                                                <thead>
                                                    <tr>
                                                        <th class="py-4" style="width: 10%;"></th>
                                                        <th style="width: 45%;">제목</th>
                                                        <th style="width: 18%;">작성자</th>
                                                        <th style="width: 18%;">작성일</th>
                                                        <th style="width: 18%;">조회수</th>
                                                    </tr>
                                                </thead>
                                                <!-- 게시물 내용 -->
                                				<c:if test="${!empty list}">
	                                				<c:forEach var="Board" items="${list}">
	                                                <tbody class="font-NanumB text_1">
	                                                    <tr style="border-bottom: 1px solid #e7e7e7">
	                                                        <td class="text_center py-4">
	                                                        <c:if test="${Board.cid eq '공지'}">
				                                        		<span class="badge bg-faded-danger text-danger fs-xs typeIcon-bl">공지</span>
			                                   				</c:if>
			                                   				<c:if test="${Board.cid eq '자유'}">
				                                        		<span class="badge bg-faded-info text-info fs-xs typeIcon-bl">자유</span>
			                                   				</c:if>
			                                   				<c:if test="${Board.cid eq '후기'}">
				                                        		<span class="badge bg-faded-primary text-primary fs-xs typeIcon-bl">후기</span>
			                                   				</c:if>
                                   							</td>
	                                                        <td class="text_center"><a href="#"><c:out value="${Board.title}"/></a></td>
	                                                        <td class="text_center"><c:out value="${Board.u_nickname}"/></td>
	                                                        <td class="text_center"><fmt:formatDate type="both" value="${Board.boDate}" pattern="yy-MM-dd"/></td>
	                                                        <td class="text_center"><c:out value="${Board.readAccount}"/></td>
	                                                    </tr>
	                                                </tbody>
	                                                </c:forEach>
			    								</c:if>
                                            </table>
                                        </div>
                                    </div>
                                    <!-- Stretching-->
                                    <div class="tab-pane fade" id="stretching" role="tabpanel">
                                        <div class="row align-items-lg-center">
                                            <table class="subject_table font-NanumR text_1-2 a_none">
                                                <thead>
                                                    <tr>
                                                        <th class="py-3" style="width: 50%;">댓글 내용</th>
                                                        <th style="width: 20%;">작성자</th>
                                                        <th>작성일</th>
                                                    </tr>
                                                </thead>
                                                <!-- 댓글 내용 -->
                                				<c:if test="${!empty list2}">
                                				<c:forEach var="Reply" items="${list2}">
                                                <tbody class="font-NanumB text_1">
                                                    <tr style="border-bottom: 1px solid #e7e7e7">
                                                        <td class="text_center py-4"><a href="#"><c:out value="${Reply.reContent}"/></a></td>
                                                        <td class="text_center"><c:out value="${Reply.u_nickname}"/></td>
                                                        <td class="text_center"><fmt:formatDate type="both" value="${Reply.reDate}" pattern="yy-MM-dd"/></td>
                                                    </tr>
                                                </tbody>
                                                </c:forEach>
			    								</c:if>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </section>
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