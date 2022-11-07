<%@page import="com.kh.pillipop.medicine.model.vo.Medicine"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8" />
    <title>Pillipop | 약 정보</title>
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Favicon and Touch Icons-->
    <link rel="apple-touch-icon" sizes="180x180" href="${path}/resources/favicon/apple-touch-icon.png" />
    <link rel="icon" type="image/png" sizes="32x32" href="${path}/resources/favicon/favicon-32x32.png" />
    <link rel="icon" type="image/png" sizes="16x16" href="${path}/resources/favicon/favicon-16x16.png" />
    <link rel="manifest" href="${path}/resources/favicon/site.webmanifest" />
    <link rel="mask-icon" color="#6366f1" href="${path}/resources/favicon/safari-pinned-tab.svg" />
    <meta name="msapplication-TileColor" content="#080032" />
    <meta name="msapplication-config" content="${path}/resources/favicon/browserconfig.xml" />
    <meta name="theme-color" content="white" />
    <!-- ajax -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
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
            -webkit-transition: all 0.4s 0.2s ease-in-out;
            transition: all 0.4s 0.2s ease-in-out;
            background-color: #fff;
            opacity: 0;
            visibility: hidden;
            z-index: 9999;
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
            -webkit-transition: opacity 0.2s ease-in-out;
            transition: opacity 0.2s ease-in-out;
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

        .page-spinner {
            display: inline-block;
            width: 2.75rem;
            height: 2.75rem;
            margin-bottom: 0.75rem;
            vertical-align: text-bottom;
            background-color: #d7dde2;
            border-radius: 50%;
            opacity: 0;
            -webkit-animation: spinner 0.75s linear infinite;
            animation: spinner 0.75s linear infinite;
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
                },1500);
            };
        })();
    </script>
    <!-- Vendor styles-->
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/lightgallery/css/lightgallery-bundle.min.css" />
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.min.css" />
    <!-- header/footer css -->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/0_headerfooter.css" />
    <!-- swim css -->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/6_swim.css" />
</head>
<!-- Body-->

<body class="font-NanumR">
    <%@ include file="../../common/loading.jsp" %>
    <!-- Page wrapper-->
    <main class="page-wrapper">

        <%@ include file="../../common/header.jsp" %>

        <!-- Page content-->
        <section class="container py-5 mt-5 mb-sm-2 mb-lg-3 mb-xl-4 mb-xxl-5">
             <!-- Breadcrumb-->
            <nav aria-label="breadcrumb">
                <ol class="pt-lg-3 pb-2 pb-md-4 breadcrumb">
                    <li class="breadcrumb-item"><a href="${path}">홈</a></li>
                    <li class="breadcrumb-item"><a href="${path}/medicine/list">일반검색</a></li>
                    <li class="breadcrumb-item breadcrumb-item-new active" aria-current="page">약 상세보기</li>
                </ol>
            </nav>
            <!-- Dscription section-->
            <section class="card border-0 py-1 p-xl-3 p-xxl-4">
                <div class="card-body pb-0">
                    <div class="row py-4 mb-0">
                        <div class="col-md-6 " style="margin-right: 0">
                            <img class="rounded-2" src="${medicine.itemImage}" alt="Image"
                                style="width: 560px; height: 330px" />
                        </div>
                        <div class="col-md-6">
                            <table class="table">
                                <tr>
                                    <td class="border-1 py-1" style="padding-right: 4rem; padding-left: 0">
                                        <h1 style=" color: #EFBE6F;">|</h1>
                                    </td>
                                    <td class="border-1 py-1 px-0">
                                        <h1 style="color: #1E4D56">${medicine.itemName}</h1>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="border-1 py-1 px-0">품목코드</td>
                                    <td class="border-1 text-muted py-1 px-0">${medicine.itemSeq}</td>
                                </tr>
                                <tr>
                                    <td class="border-1 py-1 px-0">업체명</td>
                                    <td class="border-1 text-muted py-1 px-0">${medicine.entpName}</td>
                                </tr>
                                <tr>
                                    <td class="border-1 py-1 px-0">효능</td>
                                    <td class="border-1 text-muted py-1 px-0">${medicine.efcyQesitm}</td>
                                </tr>
                                <tr>
                                    <td class="border-1 py-1 px-0">사용법</td>
                                    <td class="border-1 text-muted py-1 px-0">${medicine.useMethodQesitm}</td>
                                </tr>
                            </table>
                        </div>
                        <div class="alert alert-info d-flex mb-0 mt-4" role="alert"><i class="ai-circle-info fs-xl"></i>
                            <div class="ps-2">경고: ${medicine.atpnWarnQesitm}</div>
                        </div>
                    </div>
                </div>
                <div class="card-body pt-0">
                    <!-- Order-->
                    <div class="accordion-item border-top mb-0">
                        <div class="accordion-header">
                            <a class="d-flex fs-2 fw-normal text-decoration-none py-3">
                                <div class="d-flex">
                                    <div class="me-3 me-sm-4">
                                        <div class="fs-lg mb-2">● 주의사항</div>
                                        <div class="fs-base text-muted mb-2">${medicine.atpnQesitm}</div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <!-- Order-->
                    <div class="accordion-item border-top mb-0">
                        <div class="accordion-header">
                            <a class="d-flex fs-4 fw-normal text-decoration-none py-3">
                                <div class="d-flex">
                                    <div class="me-3 me-sm-4">
                                        <div class="fs-lg mb-2">● 상호작용</div>
                                        <div class="fs-base text-muted mb-2">${medicine.intrcQesitm}</div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <!-- Order-->
                    <div class="accordion-item border-top mb-0">
                        <div class="accordion-header">
                            <a class="d-flex fs-4 fw-normal text-decoration-none py-3">
                                <div class="d-flex">
                                    <div class="me-3 me-sm-4">
                                        <div class="fs-lg mb-2">● 부작용</div>
                                        <div class="fs-base text-muted mb-2">${medicine.seQesitm}</div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <!-- Order-->
                    <div class="accordion-item border-top mb-0">
                        <div class="accordion-header">
                            <a class="d-flex fs-4 fw-normal text-decoration-none py-3">
                                <div class="d-flex">
                                    <div class="me-3 me-sm-4">
                                        <div class="fs-lg mb-2">● 보관법</div>
                                        <div class="fs-base text-muted mb-2">${medicine.depositMethodQesitm}</div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <hr>
                </div>
            </section>
        </section>
    </main>
    
    <%@ include file="../../common/footer.jsp" %>
    
    <!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll>
        <svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
            <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10">
            </circle>
        </svg>
        <i class="ai-arrow-up"></i>
    </a>
    <!-- Vendor scripts: js libraries and plugins-->
    <script src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <script src="${path}/resources/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="${path}/resources/vendor/lightgallery/lightgallery.min.js"></script>
    <script src="${path}/resources/vendor/lightgallery/plugins/fullscreen/lg-fullscreen.min.js"></script>
    <script src="${path}/resources/vendor/lightgallery/plugins/zoom/lg-zoom.min.js"></script>
    <script src="${path}/resources/vendor/lightgallery/plugins/thumbnail/lg-thumbnail.min.js"></script>
    <!-- Main theme script-->
    <script src="${path}/resources/js/theme.min.js"></script>
</body>

</html>