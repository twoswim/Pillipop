<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="euc-kr">

<head>
    <meta charset="utf-8">
    <title>Around | Account - Overview</title>
    <!-- SEO Meta Tags-->
    <meta name="description" content="Around - Multipurpose Bootstrap HTML Template">
    <meta name="keywords" content="bootstrap, business, corporate, coworking space, services, creative agency, dashboard, e-commerce, mobile app showcase, saas, multipurpose, product landing, shop, software, ui kit, web studio, landing, dark mode, html5, css3, javascript, gallery, slider, touch, creative">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="apple-touch-icon" sizes="180x180" href="<%=request.getContextPath()%>/source/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/source/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/source/favicon/favicon-16x16.png">
    <link rel="manifest" href="<%=request.getContextPath()%>/source/favicon/site.webmanifest">
    <link rel="mask-icon" color="#6366f1" href="<%=request.getContextPath()%>/source/favicon/safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#080032">
    <meta name="msapplication-config" content="<%=request.getContextPath()%>/source/favicon/browserconfig.xml">
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
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/source/css/theme.min.css">
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/source/css/headerfooter.css">
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/source/css/3_testResult.css">
</head>
<!-- Body-->

<body class="bg-secondary">
    <!-- Page loading spinner-->
    <div class="page-loading active">
        <div class="page-loading-inner">
            <div class="page-spinner"></div><span>Loading...</span>
        </div>
    </div>
    <!-- Page wrapper-->
    <main class="page-wrapper">
        <!-- Navbar. Remove 'fixed-top' class to make the navigation bar scrollable with the page-->
        <header class="navbar navbar-expand-lg fixed-top bg-light font-NanumB" style="border-radius: 0px !important; display: block;" container>
            <div class="container">
                <a class="navbar-brand font-NotoSerif-B" href="#">
                    <span class="text-primary flex-shrink-0 me-2">
                    <img src="<%=request.getContextPath()%>/source/img/0_headerfooter/logo.png" style="width: 60px;"></span>Pillipop</a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse1"><span class="navbar-toggler-icon"></span></button>
                <nav class="collapse navbar-collapse" id="navbarCollapse1">
                    <ul class="navbar-nav me-auto ">
                        <li class="nav-item"><a class="nav-link" href="#">????????????</a></li>

                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">?????????</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">????????????</a></li>
                                <li><a class="dropdown-item" href="#">????????????</a></li>
                            </ul>
                        </li>
                        <li class="nav-item "><a class="nav-link" href="#">????????????</a></li>
                        <li class="nav-item "><a class="nav-link" href="#">?????????</a></li>
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">????????????</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">?????????</a></li>
                                <li><a class="dropdown-item" href="#">????????????</a></li>
                                <li><a class="dropdown-item" href="#">?????????</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">???????????????</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">??? ?????? ??????</a></li>
                                <li><a class="dropdown-item" href="#">??? ??????</a></li>
                                <li><a class="dropdown-item" href="#">???</a></li>
                                <li><a class="dropdown-item" href="#">??? ????????????</a></li>
                            </ul>
                        </li>
                    </ul>
                    <button class="common-bluegreen " style="width: 6rem; margin-right: 10px; ">?????????</button>
                    <button class="common-black " style="width: 7rem; ">????????????</button>

                </nav>
            </div>
        </header>
        <!-- Page content-->
        <div class="container py-3 mt-4 mt-lg-5 mb-lg-4 my-xl-5" style="padding-top: 15px !important;">
            <div class="row pt-sm-2 pt-lg-0">
                <!-- Sidebar (offcanvas on sreens < 992px)-->
                <aside class="col-lg-3  mt-n3" style="background-color: #FFFFFF;">
                    <div class="position-lg-sticky top-0">
                        <div class="d-none d-lg-block" style="padding-top: 30px;"></div>
                        <div class="offcanvas-lg offcanvas-start" id="sidebarAccount">
                            <button class="btn-close position-absolute top-0 end-0 mt-3 me-3 d-lg-none" type="button" data-bs-dismiss="offcanvas" data-bs-target="#sidebarAccount"></button>
                            <div class="offcanvas-body">
                                <h6 class="h6 mb-3 mt-3 text-center font-NanumB">?????????????????? 3</h6>
                                <hr>
                                <div class="pb-3 pb-lg-0 ms-sm-3">
                                    <img class="rounded-circle mb-2 mt-3 me-sm-2" src="https://img.pilly.kr/product/v20200519/calmgd/tablet.png?v=v202111172159?v=v202111172159" width="35" style="display: inline-block; background-color: #eae9e9">
                                    <p class="fs-xs mb-0 font-NanumR" style="display: inline-block;">????????? D</p>
                                </div>

                                <div class="pb-3 pb-lg-0 ms-sm-3">
                                    <img class="rounded-circle mb-2 mt-3 me-sm-2" src="https://img.pilly.kr/product/v20200519/vitaminb/tablet.png?v=v202111172159?v=v202111172159" width="35" style="display: inline-block; background-color: #afe19f">
                                    <p class="fs-xs mb-0 font-NanumR" style="display: inline-block;">????????????</p>
                                </div>

                                <div class="pb-3 pb-lg-0 ms-sm-3">
                                    <img class="rounded-circle mb-2 mt-3 me-sm-2" src="https://img.pilly.kr/product/v20200519/milkthistle/tablet.png?v=v202111172159?v=v202111172159" width="35" style="display: inline-block; background-color: #cbc5e8">
                                    <p class="fs-xs mb-0 font-NanumR" style="display: inline-block;">?????????3</p>
                                </div>

                            </div>
                        </div>
                    </div>
                </aside>
                <!-- Page content-->
                <div class="col-lg-9 pb-2 pb-sm-4 inner" style="padding-right: 0px; padding-left: 0px; padding-top: 15px;">

                    <!-- Basic info-->
                    <section class="">
                        <div class="inner" style="background-image: linear-gradient(to top,#86Cbc0, #D4F4FA );">
                            <div class="d-flex align-items-center mt-sm-n1 mb-0 mb-lg-1 mb-xl-3  justify-content-between">
                                <h5 class="h5 mb-4 font-NanumEB">??????????????? <br>???????????? ?????????</h5>

                                <div class="graph ">
                                    <ul class="data" style="padding: 0px !important;">
                                        <li class="lv1 ">?????????</li>
                                        <li class="lv2 ">??????</li>
                                        <li class="lv3 ">?????????</li>
                                        <li class="lv4 ">??????</li>
                                        <li class="lv5 active">????????????</li>
                                    </ul>
                                </div>
                            </div>
                            <!-- <div class="d-md-flex align-items-center">
                                <div class="d-sm-flex align-items-center">
                                    <div class="rounded-circle bg-size-cover bg-position-center flex-shrink-0" style="width: 80px; height: 80px; background-image: url(<%=request.getContextPath()%>/source/img/avatar/02.jpg);"></div>
                                    <div class="pt-3 pt-sm-0 ps-sm-3">
                                        <h3 class="h5 mb-2">Isabella Bocouse<i class="ai-circle-check-filled fs-base text-success ms-2"></i></h3>
                                        <div class="text-muted fw-medium d-flex flex-wrap flex-sm-nowrap align-iteems-center">
                                            <div class="d-flex align-items-center me-3"><i class="ai-mail me-1"></i>email@example.com</div>
                                            <div class="d-flex align-items-center text-nowrap"><i class="ai-map-pin me-1"></i>USA, $</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="w-100 pt-3 pt-md-0 ms-md-auto" style="max-width: 212px;">
                                    <div class="d-flex justify-content-between fs-sm pb-1 mb-2">Profile completion<strong class="ms-2">62%</strong></div>
                                    <div class="progress" style="height: 5px;">
                                        <div class="progress-bar" role="progressbar" style="width: 62%" aria-valuenow="62" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div> -->
                            <div class="row py-2">
                                <div class="col-md-6 mb-4 mb-md-0">
                                    <table class="table mb-0">
                                        <tr class="d-lg-inline-block">
                                            <td class="border-0 text-muted py-1 px-0">??????</td>
                                            <td class="border-0 text-dark fw-medium py-1 ps-3">???</td>
                                        </tr>
                                        <tr class="d-lg-inline-block">
                                            <td class="border-0 text-muted py-1 px-0">??????</td>
                                            <td class="border-0 text-dark fw-medium py-1 ps-3">26???</td>
                                        </tr>
                                        <tr class="d-lg-inline-block">
                                            <td class="border-0 text-muted py-1 px-0">BMI</td>
                                            <td class="border-0 text-dark fw-medium py-1 ps-3">18.5</td>
                                        </tr>

                                    </table>
                                </div>

                            </div>
                            <div class="recommend-wrap NORMAL" style="margin-left: auto; margin-right: auto;"><img src="https://pilly.kr/images/survey/icon-grade-NORMAL.png" alt="????????? ???????????????.">
                                <h4> ?????? ????????? ????????????. </h4>
                                <ul class="bullet-item">
                                    <li> ??? ?????? ????????? ?????? ??? ?????? ?????? ????????? ????????????. </li>
                                    <li> ?????? ????????? ???????????? ?????? ????????? ???????????? ????????? ????????????. </li>
                                    <li> ??? ????????? ?????? ????????? ????????????. </li>
                                </ul>
                            </div>

                        </div>
                    </section>
                    <!-- ?????? -->


                    <section id="calmgd" class="result-content calmgd" data-title="?????? ???????????? ?????????D" data-color="#eae9e9">
                        <div class="inner" style="background-color: rgba(234, 233, 233, 0.5);">
                            <div class="header result-content-header justify-content-between d-flex" data-color="#eae9e9">
                                <div style="display: inline-block;">
                                    <h4>?????? ???????????? ?????????D</h4>
                                    <ul>
                                        <li># ?????? ?????? ????????? ??????</li>
                                        <li># ???????????? ??????????????? ??????</li>
                                        <li># ???????????? ?????? ?????? ????????? ????????? ???</li>
                                    </ul>
                                </div>
                                <div style="display: inline-block; ">
                                    <ul class="tag">
                                        <li><span><img src="https://pilly.kr/images/icons/product/icon-bone.png" style="width: 34px; height: 34px;"></span>
                                            <p class="text-center">???</p>
                                        </li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                        <!-- <div class="inner" style="background-image: linear-gradient(to top, #EFBE6F,#FAECC5 );"> -->
                        <div class="inner" style="background-image: linear-gradient(to top, #ffffff, #f1d1a9 );">
                            <div class="content">
                                <h5>???????????? ?????????</h5>
                                <ul>
                                    <li>
                                        <h6> 01 ?????? ????????? ????????????. </h6>
                                        <div>
                                            <p class="li-text"> ?????????D??? ???????????? ??????????????? ????????? ????????? ???????????? ????????? ????????? ?????? ??????????????? ????????? ?????? ????????? ?????????. ????????? ???????????? ?????????D??? ????????? ????????? ?????? ????????? ????????? ????????? ????????? ????????????????????? ?????????????????? ????????? ????????????. </p>

                                        </div>
                                    </li>
                                    <li>
                                        <h6> 02 ????????? ?????? ????????? ????????????. </h6>
                                        <div>
                                            <p class="li-text"> ?????? ???????????? ???????????? ???????????? ????????? ????????? ??????, ?????????D??? ?????? ??? ????????? ????????? ?????? ??????????????? ????????? ???????????? ?????? ????????????. ?????? ???????????? ?????? ????????? ????????? ????????? ?????? ??? ?????? ??????????????? ????????? ??? ????????? ?????? ???????????????. </p>

                                        </div>
                                    </li>
                                    <li>
                                        <h6> 03 ??????????????? ????????????. </h6>
                                        <div>
                                            <p class="li-text"> ????????? ??????????????? ???????????? ????????? ????????? ??? ??? ????????????. 1966????????? 2003????????? ??? 40??? ?????? ??????????????? ????????? ?????? ????????? ????????? ???????????? ????????? ????????? ??? ??? ??????, ??????????????? ????????? ?????????????????? ????????? ????????? ????????? ??? ??? ????????????. </p>

                                        </div>
                                    </li>


                                </ul>
                            </div>
                            <div class="content">
                                <h5>????????????</h5>
                                <ul>
                                    <li>
                                        <h6> 01 ????????? ?????? ??????????????? ???????????????.</h6>
                                        <div>
                                            <p class="li-text">????????? ????????? ?????? ????????????, ????????? ????????????, ???????????? ????????? ?????? ??? ?????? ?????? ????????? ?????????. ?????????????????? ?????? 700~1,000mg?????? ?????? ?????? 2,000~3,000mg ????????? ???????????? ????????? ????????????. ????????????????????? ????????? ????????? ?????? ?????????????????? 65%????????? ????????? ???????????? ????????? ?????????. ????????? ????????? ???????????? ??????????????? ????????? ?????? ????????? ????????? ????????????
                                                ?????????????????? ????????? ????????? ??? ????????????. ???????????? ????????? ???????????? ????????? ????????? ???????????????.</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div>
                                <h5>??????????????????</h5>
                                <ul class="text-center">
                                    <li class="" style="display: inline-block; width: 25%;"><img src="https://img.pilly.kr/survey/food/FAPVHC.png" alt="?????????">
                                        <div>
                                            <p> ????????? <em>80g</em></p><span> #?????????<br> #???????????? ??????<br></span>
                                        </div>
                                    </li>
                                    <li style="display: inline-block; width: 25%;"><img src="https://img.pilly.kr/survey/food/YSVAML.png" alt="??????">
                                        <div>
                                            <p> ?????? <em>5???</em></p><span> #?????? ??????<br> #???????????? ??????<br></span>
                                        </div>
                                    </li>
                                    <li style="display: inline-block; width: 25%;"><img src="https://img.pilly.kr/survey/food/ZUARIO.png" alt="??????">
                                        <div>
                                            <p> ?????? <em>5???</em></p><span> #????????????<br> #???????????? ??????<br></span>
                                        </div>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </section>


                </div>
            </div>
        </div>
        <!-- Divider for dark mode only-->
        <hr class="d-none d-dark-mode-block">
        <!-- Sidebar toggle button-->
        <button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#sidebarAccount"><i class="ai-menu me-2"></i>Account menu</button>
    </main>
    <!-- Footer-->
    <footer class="footer py-5 " style="background-color: #333; color: white; margin-top: 0px; ">
        <div class="container pt-1 pt-sm-2 pt-md-3 pt-lg-4 pt-xl-0 ">
            <div class="border-bottom text-left pb-4 ">

                <a class="navbar-brand d-inline-flex text-nav py-0 mb-3 mb-md-4 " href="index.html ">
                    <img src="<%=request.getContextPath()%>/source/img/0_headerfooter/Pillipop_white.png" style="height: 40px; "><span style="color: white; margin-left: 0.5rem; "> Pillipop</span></a>
                <ul class="nav text-right py-1 pb-sm-2 " style="float: right; ">
                    <li class="nav-item "><a class="nav-link py-2 px-3 mx-1 " href="# " style="color: white; ">????????????</a>
                    </li>
                    <li class="nav-item "><a class="nav-link py-2 px-3 mx-1 " href="# " style="color: white; ">????????????????????????</a>
                    </li>
                    <li class="nav-item "><a class="nav-link py-2 px-3 mx-1 " href="# " style="color: white; ">????????????</a>
                    </li>
                </ul>
                <div style=" display: block; ">


                </div>
                <span>
                    <p style="margin-bottom: 0.5rem; font-size: 13px; opacity: .7; "> (???)????????? </p>
                    <p style="margin-bottom: 0.5rem; font-size: 13px; opacity: .7; ">??????????????? ????????? ????????????14??? 6 ???????????? 2F,
                        3F, 4F, 5F, 6F</p>
                    <p style="margin-bottom: 0.5rem; font-size: 13px; opacity: .7; ">KH???????????????</p>
                    <p style="margin-bottom: 0.5rem; font-size: 13px; opacity: .7; ">????????? ????????? ????????? ????????? ????????? ????????? ?????????</p>

                </span>
            </div>
            <div class="d-sm-flex align-items-center justify-content-between pt-4 mt-2 mt-sm-0 ">

                <p class="fs-sm order-sm-1 text-center mb-0 "><span class="opacity-70 ">&copy; 2022 Pillipop. All
                        rights
                        reserved.</p>
            </div>
        </div>
    </footer>
    <!-- Back to top button-->
    <a class="btn-scroll-top" href="#top" data-scroll>
        <svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
      </svg><i class="ai-arrow-up"></i></a>
    <!-- Vendor scripts: js libraries and plugins-->
    <script src="<%=request.getContextPath()%>/source/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/source/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <!-- Main theme script-->
    <script src="<%=request.getContextPath()%>/source/js/theme.min.js"></script>
</body>

</html>