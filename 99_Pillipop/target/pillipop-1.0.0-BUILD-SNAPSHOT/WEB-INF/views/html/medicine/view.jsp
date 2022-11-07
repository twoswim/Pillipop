<%@page import="com.kh.pillipop.medicine.model.vo.Medicine"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<% Medicine medicine = (Medicine)request.getAttribute("medicine"); %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8" />
    <title>Search Medicine</title>
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
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
                },1500);
            };
        })();
    </script>
    <!-- checkbox selectOne-->
    <script type="text/javascript">
        function selectOne(a) {
            var obj = document.getElementsByName('categories');
            for (var i = 0; i < obj.length; i++) {
                if (obj[i] != a) {
                    obj[i].checked = false;
                }
            }
        }
    </script>
    <!-- swim css -->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/6_swim.css" />
    <!-- Vendor styles-->
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/nouislider/dist/nouislider.min.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/swiper/swiper-bundle.min.css" />
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.min.css" />
	<!-- header/footer css -->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/0_headerfooter.css" />
</head>
<!-- Body-->

<body class="font-NanumR">
    <!-- Page loading spinner-->
    <div class="page-loading active">
        <div class="page-loading-inner">
            <div class="page-spinner"></div>
            <span>Loading...</span>
        </div>
    </div>
    <!-- Page wrapper-->
    <main class="page-wrapper">

        <!-- header start -->
        <%@ include file="../../common/header.jsp" %>
        <!-- header end -->

        <!-- Page content-->
        <section class="container py-5 mt-5 mb-sm-2 mb-lg-3 mb-xl-4 mb-xxl-5">
            <!-- Breadcrumb-->
            <nav aria-label="breadcrumb">
                <ol class="pt-lg-3 pb-2 pb-md-4 breadcrumb">
                    <li class="breadcrumb-item"><a href="index.jsp">홈</a></li>
                    <li class="breadcrumb-item"><a href="${path}/list">일반검색</a></li>
                    <li class="breadcrumb-item breadcrumb-item-new active" aria-current="page">약 상세보기</li>
                </ol>
            </nav>
            <!-- Dscription section-->
            <section class="container pb-5 mb-sm-2 mb-lg-3 mb-xl-4 mb-xxl-5">
                <div class="row align-items-center pb-md-3">
                	<img src="${path}/resources/img/drug_detail/curve1.png" style="position: relative;" />
                    <div class="col-md-6 col-lg-5 mb-4 mb-md-0" style="position: absolute; translate: 0; top: 30%;">    
                        <img class="rounded-2" src="<%=medicine.getItemImage()%>" alt="Image"
                            style="width: 500px; height: 300px" />
                    </div>
                    <div class="col-md-6 col-lg-5 offset-lg-1" style="position: absolute; left: 40%; top: 30%;">
                        <div class="offcanvas-lg offcanvas-end" id="shopSidebar">
                            <div class="offcanvas-header">
                                <h5 class="offcanvas-title">Filters</h5>
                                <button class="btn-close" type="button" data-bs-dismiss="offcanvas"
                                    data-bs-target="#shopSidebar"></button>
                            </div>
                        </div>
                        <div class="ps-md-4 ps-lg-0">
                            <div class="breadcrumb mb-0" style="width: 500px" >
                                &nbsp;&nbsp;&nbsp;
                                <h1 style="color: #1E4D56">
                                	<span style="color: #EFBE6F;">|</span>
                                	<%=medicine.getItemName()%>
                                	</h1>
                                &nbsp;&nbsp;&nbsp;
                            </div>
                            <br><br>
                            <ul class="list-unstyled mb-0">
                                <li class="mb-3">품목코드:<span class="text-dark fw-semibold"
                                        style="position: absolute; left: 20%;">
                                        <%=medicine.getItemSeq()%></span>
                                </li>
                                <li class="mb-2">업체명:<span class="text-dark fw-semibold"
                                        style="position: absolute; left: 20%;">
                                        <%=medicine.getEntpName()%></span>
                                </li>
                                <!-- Categories (accordion with checkboxes)-->
                                <div class="accordion accordion-alt pb-2" id="shopCategories">
                                    <div class="accordion-item mb-0">
                                        <h4 class="accordion-header">
                                            <button class="accordion-button fs-xl fw-medium py-2" style="width: 100px"
                                                type="button" data-bs-toggle="collapse" data-bs-target="#effect"
                                                aria-expanded="true" aria-controls="effect">
                                                <span class="fs-base">효능</span>
                                            </button>
                                        </h4>
                                        <div class="accordion-collapse collapse show" id="effect"
                                            data-bs-parent="#shopCategories">
                                            <div class="accordion-body py-1 mb-1" style="width: 600px">
                                                <%=medicine.getEfcyQesitm()%>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item mb-0">
                                        <h4 class="accordion-header">
                                            <button class="accordion-button collapsed fs-xl fw-medium py-2"
                                                style="width: 100px" type="button" data-bs-toggle="collapse"
                                                data-bs-target="#use" aria-expanded="false" aria-controls="use">
                                                <span class="fs-base">사용법</span>
                                            </button>
                                        </h4>
                                        <div class="accordion-collapse collapse" id="use"
                                            data-bs-parent="#shopCategories">
                                            <div class="accordion-body py-1 mb-1" style="width: 600px">
                                                <%=medicine.getUseMethodQesitm()%>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item mb-0">
                                        <h4 class="accordion-header">
                                            <button class="accordion-button collapsed fs-xl fw-medium py-2"
                                                style="width: 100px" type="button" data-bs-toggle="collapse"
                                                data-bs-target="#warning" aria-expanded="false" aria-controls="warning">
                                                <span class="fs-base">경고</span>
                                            </button>
                                        </h4>
                                        <div class="accordion-collapse collapse" id="warning"
                                            data-bs-parent="#shopCategories">
                                            <div class="accordion-body py-1 mb-1" style="width: 600px">
                                                <%=medicine.getAtpnWarnQesitm()%>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item mb-0">
                                        <h4 class="accordion-header">
                                            <button class="accordion-button collapsed fs-xl fw-medium py-2"
                                                style="width: 100px" type="button" data-bs-toggle="collapse"
                                                data-bs-target="#precautions" aria-expanded="false"
                                                aria-controls="precautions">
                                                <span class="fs-base">주의사항</span>
                                            </button>
                                        </h4>
                                        <div class="accordion-collapse collapse" id="precautions"
                                            data-bs-parent="#shopCategories">
                                            <div class="accordion-body py-1 mb-1" style="width: 600px">
                                               <%=medicine.getAtpnQesitm()%>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item mb-0">
                                        <h4 class="accordion-header">
                                            <button class="accordion-button collapsed fs-xl fw-medium py-2"
                                                style="width: 100px" type="button" data-bs-toggle="collapse"
                                                data-bs-target="#interaction" aria-expanded="false"
                                                aria-controls="interaction">
                                                <span class="fs-base">상호작용</span>
                                            </button>
                                        </h4>
                                        <div class="accordion-collapse collapse" id="interaction"
                                            data-bs-parent="#shopCategories">
                                            <div class="accordion-body py-1 mb-1" style="width: 600px">
                                               <%=medicine.getIntrcQesitm()%>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item mb-0">
                                        <h4 class="accordion-header">
                                            <button class="accordion-button collapsed fs-xl fw-medium py-2"
                                                style="width: 100px" type="button" data-bs-toggle="collapse"
                                                data-bs-target="#side_effect" aria-expanded="false"
                                                aria-controls="side_effect">
                                                <span class="fs-base">부작용</span>
                                            </button>
                                        </h4>
                                        <div class="accordion-collapse collapse" id="side_effect"
                                            data-bs-parent="#shopCategories">
                                            <div class="accordion-body py-1 mb-1" style="width: 600px">
                                                <%=medicine.getSeQesitm()%>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item mb-0">
                                        <h4 class="accordion-header">
                                            <button class="accordion-button collapsed fs-xl fw-medium py-2"
                                                style="width: 100px" type="button" data-bs-toggle="collapse"
                                                data-bs-target="#storage" aria-expanded="false" aria-controls="storage">
                                                <span class="fs-base">보관법</span>
                                            </button>
                                        </h4>
                                        <div class="accordion-collapse collapse" id="storage"
                                            data-bs-parent="#shopCategories">
                                            <div class="accordion-body py-1 mb-1" style="width: 600px">
                                                <%=medicine.getDepositMethodQesitm()%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <li class="mb-3">공개일자:<span class="text-dark fw-semibold"
                                    style="position: absolute; left: 20%;">
                                    <%=medicine.getOpenDe()%></span>
                                </li>
                                <li class="mb-3">수정일자:<span class="text-dark fw-semibold"
                                    style="position: absolute; left: 20%;">
                                    <%=medicine.getUpdateDe()%></span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <img src="${path}/resources/img/drug_detail/curve2_ver2.png" style="position: relative; margin-top: 350px;" />
                </div>
            </section>
        </section>
    </main>

    <!-- Footer start -->
    <%@ include file="../../common/footer.jsp" %>
    <!-- Footer end -->

    <!-- Vendor scripts: js libraries and plugins-->
    <script src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <script src="${path}/resources/vendor/nouislider/dist/nouislider.min.js"></script>
    <script src="${path}/resources/vendor/swiper/swiper-bundle.min.js"></script>
    <!-- Main theme script-->
    <script src="${path}/resources/js/theme.min.js"></script>
    <script>
        (function clickCheck(target) {
            document.querySelectorAll(`input[type=checkbox]`).forEach((el) => (el.checked = false));
            target.checked = true;
        });
    </script>
</body>

</html>