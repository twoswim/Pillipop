<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html lang="euc-kr">

<head>
    <meta charset="utf-8">
    <title>Pillipop | HOME</title>

    <!-- SEO Meta Tags-->
    <meta name="description" content="Around - Multipurpose Bootstrap HTML Template">
    <meta name="keywords" content="bootstrap, business, corporate, coworking space, services, creative agency, dashboard, e-commerce, mobile app showcase, saas, multipurpose, product landing, shop, software, ui kit, web studio, landing, dark mode, html5, css3, javascript, gallery, slider, touch, creative">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="apple-touch-icon" sizes="180x180" href="<%=request.getContextPath()%>/resources/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/resources/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/resources/favicon/favicon-16x16.png">
    <link rel="manifest" href="<%=request.getContextPath()%>/resources/favicon/site.webmanifest">
    <link rel="mask-icon" color="#6366f1" href="<%=request.getContextPath()%>/resources/favicon/safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#080032">
    <meta name="msapplication-config" content="<%=request.getContextPath()%>/resources/favicon/browserconfig.xml">
    <meta name="theme-color" content="white">


    <!-- Import Google Font-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@600;900&display=swap" rel="stylesheet">




    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;display=swap" rel="stylesheet" id="google-font">


    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@600;900&display=swap" rel="stylesheet">
    <!-- Vendor styles-->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/vendor/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/vendor/aos/dist/aos.css" />
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/theme.min.css">
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/0_headerfooter.css">
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/3_mainPage.css">
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/3_StoreMain.css">



    <!-- css 내꺼-->
    <style>
        .v-line {
            border-left: thick solid #EFBE6F;
        }
        
        .page-wrapper {
            flex: 1 0 auto
        }
    </style>


</head>


<body>
    <!-- Page wrapper-->
    <main class="page-wrapper">

        <%-- header --%>
	<%@ include file="../../common/header.jsp" %>

        <!-- Page content-->
        <!-- Hero slider-->
        <section class="ignore-dark-mode position-relative pt-5 ">
            <!-- Background image slider-->


            <div class="swiper-slide-cover bg-position-top-center " style="background-image: url(<%=request.getContextPath()%>/resources/img/3_MainPage/Banner.png);  width: 100%; height: 800px; top: 82px;  ">
            </div>


            <!-- Content-->
            <div class="container position-relative zindex-2 py-lg-3 pt-5 mt-5 ">
                <div class="mt-5">
                    <p style="float: left; color:#000000;">A drug search website</p>
                    <p style="float: right; color:#000000;">A drug search website</p>
                    <h1 class="" style="text-align: center; font-size: 2.8rem;">Pillipop</h1>


                </div>


                <div class="col py-5 mb-md-4 mb-lg-5 ">

                    <h4 class="display-5 text-uppercase mb-4 " style="color: white; ">웹사이트 소개소개
                        <br>소개소개소개소개소개소개<br>소개소개소개소개.
                    </h4>
                    <p class="d-block pb-2 mb-4 mb-md-5 font-NanumL mt-3" style="color: white; font-weight: lighter ">
                        세부소개세부소개세부소개세부소개세부소개세부소개세부소개세부소개
                    </p>
                </div>

                <style>
                    .searchbar {
                        vertical-align: middle;
                    }
                    
                     ::placeholder {
                        font-weight: 900 !important;
                    }
                </style>
                <div style="background-image: url(<%=request.getContextPath()%>/resources/img/3_MainPage/Search_bar.png); width: 100%; height: 63px; align-items: center; vertical-align: middle;">

                    <div style="height: max-content;">
                        <img src="<%=request.getContextPath()%>/resources/img/3_MainPage/Search_icon.png" style="height: fit-content; padding-left: 20px; position: relative; top:-30px;">
                        <form class="searchbar mb-3" action="" style="display: inline-block;
                        justify-content: space-between; align-items: center; width: 91.5%; ">
                            <!-- <span class="v-line" style="width: fit-content; height: 15rem;"></span> -->
                            <input class="font-NanumB" name="" type="text" placeholder="약 이름으로 바로 검색하기" style="align-items: center !important; line-height: 40px; display: inline-block; border: none; background: none; margin-left: 30px; font-weight: 900; width: 80%; ">
                            <button type="submit" class="common-black font-NanumB " style=" float: right;">검색하기</button>

                        </form>
                    </div>
                </div>

                <center class="mt-5 pt-3" style="margin-top: 90px !important;">
                    <button class="common-white  m-auto px-5" style="margin-left: auto !important; margin-right: auto !important;">
                        <h1 style="text-align: center; padding-top: 20px; ">Services Clip</h1>
                    </button>
                </center>
            </div>




            <div class="container pb-5" style="justify-content: center !important; margin : auto; z-index: 999;">

                <p class="font-NanumB" style="text-align: center; ">Pillipop에서는 다음과 같은 서비스를 제공하고 있습니다.</p>

                <span class="swiper-grid ">
                    <ul class="nav text-right py-1 pb-sm-2 font-NanumB" style="margin-left: 200px; margin-right: 200px; ">
                        <div class="card-hover card-lifted ">
                            <li style="margin-right: 40px; margin-left: 40px; "><img
                                    src="<%=request.getContextPath()%>/resources/img/3_MainPage/main_clip_1.png "></li>
                            <p class="mb-0 text-muted " style="text-align: center; ">약 검색</p>
                        </div>
                        <div class="card-hover card-lifted ">
                            <li style="margin-right: 40px; margin-left: 40px; "><img
                                    src="<%=request.getContextPath()%>/resources/img/3_MainPage/main_clip_2.png "></li>
                            <p class="mb-0 text-muted " style="text-align: center; ">약국 검색</p>
                        </div>
                        <div class="card-hover card-lifted ">
                            <li style="margin-right: 40px; margin-left: 40px; "><img
                                    src="<%=request.getContextPath()%>/resources/img/3_MainPage/main_clip_5.png "></li>
                            <p class="mb-0 text-muted " style="text-align: center; ">건강기능식품</p>
                        </div>
                        <div class="card-hover card-lifted ">
                            <li style="margin-right: 40px; margin-left: 40px; "><img
                                    src="<%=request.getContextPath()%>/resources/img/3_MainPage/main_clip_3.png "></li>
                            <p class="mb-0 text-muted " style="text-align: center; ">커뮤니티</p>
                        </div>
                        <div class="card-hover card-lifted ">
                            <li style="margin-right: 40px; margin-left: 40px; "><img
                                    src="<%=request.getContextPath()%>/resources/img/3_MainPage/main_clip_4.png "></li>
                            <p class="mb-0 text-muted " style="text-align: center; ">건강진단</p>
                        </div>

                    </ul>

            </div>



        </section>

        <div style="background-image: url(<%=request.getContextPath()%>/resources/img/3_MainPage/Background1_gra.png); background-repeat: no-repeat;">
            <section class=" container pt-5 ">
                
                <!-- Tab content-->
                <div class="tab-content py-5">
                    <!-- Beginers-->
                    <div class="tab-pane fade active show" id="beginners" role="tabpanel">
                        <div class="row align-items-lg-center pb-5"
                            style="display: flex !important; justify-content: space-between !important;">

                            <div class="col-md-6 col-lg-5 col-xl-4 " style="width: 50%; float: left;">
                                <div class="ps-md-4 ps-lg-0 ">
                                    <div class=" pb-4 mb-2 mb-md-3" style="align-items: flex-start; display: flex;">
                                        <div class="border_4" style="height: 4.5rem; width: 1.25rem; display: inline-block;"></div>
                                        <div style="display: inline-block;">
                                            <div class="text-B4 text_2-8 pb-2"><span class="font-NanumEB">About</span></div>

            </div>

            </div>
            <p class="pb-3 mb-3 mb-xl-4  font-NanumB text_1-2">의약품 검색하고 싶은데 어디서 해야할지 모르겠니?aaaaaaaaaaaaa<br>의약품 검색하고 싶은데 어디서 해야할지 모르겠니?<br>의약품 검색하고 싶은데 어디서 해야할지 모르겠니?<br>의약품 검색하고 싶은데 어디서 해야할지 모르겠니?<br>의약품 검색하고 싶은데 어디서 해야할지 모르겠니?<br>의약품 검색하고 싶은데 어디서 해야할지 모르겠니?<br></p>
            <div class="info" style="box-shadow: 0px 0px 30px rgb(197, 197, 197); width: fit-content; border-radius: 1.5rem;">
                <p class="ps-3 pt-3 p-bluegreen">Pillipop</p>
                <p>에서 제공하는</p>
                <p class="p-bluegreen pe-3">약&약국 데이터<br></p>
                <div class="px-3 font-NanumB" style="display: flex; justify-content: space-between;">
                    <p>의약품</p>
                    <p>21,226</p>
                </div>
                <div class="px-3 font-NanumB" style="display: flex; justify-content: space-between;">
                    <p>약국</p>
                    <p>21,221</p>
                </div>
            </div>

            </div>

            </div>
            <div class="col-md-6 pb-4 pb-md-5 mb-2 mb-md-0 ps-sm-5" style="width: 50%; float: right;">
                <img class="rounded-5 " src="<%=request.getContextPath()%>/resources/img/3_MainPage/bgimg36.jpeg " alt="Beginners" style="box-shadow: 30px -25px #89CBBD; width: 550px; height: 550px; object-fit: cover; ">
            </div>
            </div>
            </div>


            </div>

        </section>
        </div>

        <div style="background-image: url(<%=request.getContextPath()%>/resources/img/3_MainPage/background2.png); position: relative;">
            <div style="width: inherit; position: absolute; "><img src="<%=request.getContextPath()%>/resources/img/3_MainPage/Bubble_element1.png"></div>
            <div style="width: inherit; position: absolute; "> <img src="<%=request.getContextPath()%>/resources/img/3_MainPage/Bubble_element2.png"></div>




            <!-- Best Products start -->
            <section class="container font-NanumB pb-5 mb-lg-3 mb-xl-4 mb-xxl-5">
                <div class=" pb-4 mb-2 mb-md-3 pt-xxl-5" style="align-items: flex-start; display: flex;">
                    <div class="border_4" style="height: 8rem; width: 1.25rem; display: inline-block;"></div>
                    <div style="display: inline-block;">
                        <div class="text-B4 text_2-8 pb-2"><span class="font-NanumEB">BEST </span>products</div>
                        <!-- View all button-->
                        <div class="" style="z-index: 9; position: relative;"><a class="S_btn3 btn-outline-primary text_1-2 w-100 w-sm-auto" href="shop-catalog.html" style="width: 7rem !important;">Store</a>
                        </div>
                    </div>

                </div>
                <div class="" style="display: flex; justify-content: space-between; ">
                    <div class="text_1-2 text-G1 ">어떤 건강식품을 사야할지 고민된다면 다른 사람들이 좋아하는 상품을 참고해보세요!</div>
                    <div class="">
                        <!-- <div class="border_2" style="width: 65rem; height: 1.6rem;"></div> -->

                        <!-- Slider prev/next buttons-->
                    </div>
                </div>
                <div class="" style="position: relative; z-index: 5 !important;">
                    <div style="justify-content: flex-end; display: flex;">
                        <button class="S_btn_4 S_btn-p S_btn-icon-p S_btn-outline-primary-p S_rounded-circle-p ms_1-1" type="button" id="trending-prev" style=""><i class="ai-arrow-left"></i></button>
                        <button class="S_btn_4 S_btn-p S_btn-icon-p S_btn-outline-primary-p S_rounded-circle-p ms_1-1" type="button" id="trending-next"><i class="ai-arrow-right"></i></button>
                    </div>
                </div>


                <!-- Slider (popular items)-->
                <div>
                    <div style="width: inherit; height: inherit !important; position: absolute; "> <img src="<%=request.getContextPath()%>/resources/img/3_MainPage/Store_vector.png" style=" height: 25rem;"></div>
                    <div class="swiper pt-5" data-swiper-options="{&quot;slidesPerView&quot;: 1, &quot;spaceBetween&quot;: 24, &quot;loop&quot;: true, &quot;navigation&quot;: {
                    &quot;prevEl&quot;: &quot;#trending-prev&quot;, &quot;nextEl&quot;: &quot;#trending-next&quot;},
                    &quot;breakpoints&quot;: { &quot;500&quot;: { &quot;slidesPerView&quot;: 2 }, &quot;768&quot;: { &quot;slidesPerView&quot;: 3 }, &quot;1000&quot;: {
                    &quot;slidesPerView&quot;: 3}}}" style="width: 75%;   margin-right: 0px;">

                        <div class="swiper-wrapper">

                            <!-- products item repeat -->
                            <div class="swiper-slide bg_pink">
                                <div class="card-hover position-relative bg-p_9 rounded-1 p-3 mb-4">
                                    <!-- Sale/new -->
                                    <span class="badge E_bg-red E_text-red position-absolute top-0 start-0 mt-3 ms-3">Sale</span>
                                    <!-- 찜 icon -->
                                    <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5  /*opacity-0 */" type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i></button>
                                    <a class="d-block p-2 p-xl-4" href="2_product.html"><img class="d-block mx-auto rounded-1" style="width: 226px; height: 226px; object-fit: cover;" src="<%=request.getContextPath()%>/resources/img/3_MainPage/img1.jfif" alt="Product"></a>
                                </div>
                                <div class="mb-1 ">
                                    <div class=" mb-0"><a class="text-B a_none text_1-3" href="2_product.html">100억 단비유산균
                                        베이비</a>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center"><span class="me-2">37,500원</span>
                                    <!-- 세일할때 원가 -->
                                    <del class="fs-sm text-muted">39,500원</del>
                                    <div class="S_nav_cart ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left"
                                        title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                                </div>
                            </div>

                            <!-- products item -->
                            <div class="swiper-slide  bg_pink">
                                <div class="card-hover position-relative bg-p_9 rounded-1 p-3 mb-4">
                                    <!-- Sale/new -->
                                    <span class="badge E_bg-green E_text-green position-absolute top-0 start-0 mt-3 ms-3">New</span>
                                    <!-- 찜 icon -->
                                    <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5  opacity-0 " type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i></button>
                                    <a class="d-block p-2 p-xl-4" href="2_product.html"><img class="d-block mx-auto rounded-1" style="width: 226px; height: 226px; object-fit: cover;" src="<%=request.getContextPath()%>/resources/img/3_MainPage/img1.jfif" alt="Product"></a>
                                </div>
                                <div class="mb-1 ">
                                    <div class=" mb-0"><a class="text-B a_none text_1-3" href="2_product.html">100억 단비유산균
                                        베이비</a>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center"><span class="me-2">37,500원</span>
                                    <!-- 세일할때 원가 -->
                                    <del class="fs-sm text-muted">39,500원</del>
                                    <div class="S_nav_cart ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left"
                                        title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                                </div>
                            </div>

                            <!-- products item -->
                            <div class="swiper-slide  bg_pink">
                                <div class="card-hover position-relative bg-p_9 rounded-1 p-3 mb-4">
                                    <!-- 찜 icon -->
                                    <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5  /*opacity-0 */" type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i></button>
                                    <a class="d-block p-2 p-xl-4" href="2_product.html"><img class="d-block mx-auto rounded-1" style="width: 226px; height: 226px; object-fit: cover;" src="<%=request.getContextPath()%>/resources/img/3_MainPage/img1.jfif" alt="Product"></a>
                                </div>
                                <div class="mb-1 ">
                                    <div class=" mb-0"><a class="text-B a_none text_1-3" href="2_product.html">100억 단비유산균
                                        베이비</a>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center"><span class="me-2">37,500원</span>
                                    <!-- 세일할때 원가 -->
                                    <del class="fs-sm text-muted">39,500원</del>
                                    <div class="S_nav_cart ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left"
                                        title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                                </div>
                            </div>

                            <!-- products item -->
                            <div class="swiper-slide  bg_pink">
                                <div class="card-hover position-relative bg-p_9 rounded-1 p-3 mb-4">
                                    <!-- 찜 icon -->
                                    <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5  opacity-0 " type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i></button>
                                    <a class="d-block p-2 p-xl-4" href="2_product.html"><img class="d-block mx-auto rounded-1" style="width: 226px; height: 226px; object-fit: cover;" src="<%=request.getContextPath()%>/resources/img/3_MainPage/img1.jfif" alt="Product"></a>
                                </div>
                                <div class="mb-1 ">
                                    <div class=" mb-0"><a class="text-B a_none text_1-3" href="2_product.html">100억 단비유산균
                                        베이비</a>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center"><span class="me-2">37,500원</span>
                                    <!-- 세일할때 원가 -->
                                    <del class="fs-sm text-muted">39,500원</del>
                                    <div class="S_nav_cart ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left"
                                        title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                                </div>
                            </div>
                            <!-- products item repeat last -->


                        </div>
                    </div>
                </div>



            </section>
            <!-- Best Products end -->


            <div style="background-image: url(<%=request.getContextPath()%>/resources/img/3_MainPage/background3.png); height: fit-content; background-repeat: no-repeat;">
                <div class="container pt-5" style="">
                    <div class="border_3" style="width: 15rem; height: 1.6rem; display: table; margin-left: auto; margin-right: auto;">
                    </div>
                    <div class="text_2-5" style="text-align: center; color: white;"><span class="text_2 font-NanumEB"> Pillipop에게
                         건강을 물어봐!</h3></span>

                        <ul class="text_1-4 font-NanumR mt_5" style="justify-content: center;">
                            <li class="none m_r_8" style="display: inline-block;"><img src="<%=request.getContextPath()%>/resources/img/3_MainPage/check_icon.png">나만을 위한 맞춤영양소</li>
                            <li class="none m_r_8" style="display: inline-block;"><img src="<%=request.getContextPath()%>/resources/img/3_MainPage/check_icon.png">나만을 위한 맞춤영양소</li>
                            <li class="none" style="display: inline-block;"><img src="<%=request.getContextPath()%>/resources/img/3_MainPage/check_icon.png">나만을 위한 맞춤영양소</li>
                        </ul>

                        <div class="mt-5">

                            <button class="test-white mt-5">지금 바로 건강 체크하러 가기</button>
                            <h5 class="mt-3 pb-5" style="color: white; font-family: NanumSquareL;">약 3분 정도 소요될 수 있습니다</h5>
                        </div>
                    </div>

                </div>

            </div>


            <div class="py-5" style="background-image: url(<%=request.getContextPath()%>/resources/img/3_MainPage/background2.png); position: relative;">
                <div class="container">

                    <div class="mt-5" style="position: absolute; "><img src="<%=request.getContextPath()%>/resources/img/3_MainPage/pop_element.png"></div>
                </div>
                <div class="container py-5" style="color: black; ">
                    <div class="left p-sm-5">
                        <div class="text_3-5 pb-3 pt-5"><span class="font-NanumEB">NEWS POP!</span></div>

                        <span class="font-NanumB pb-5" style="display: block; font-size: 29px;">약에 관련된 흥미로운 <br>정보들을 모아서 볼 수 있어요</span>

                        <button class="news-yellow mt-3 mb-5" style="font-size: 20px;">모든 뉴스 보러 가기</button>
                    </div>

                    <div class="right mt-3" style="float: right;">
                        <ul class="mt-5">




                            <li class="news-li">
                                <div style=" height: 100%;">
                                    <img src="<%=request.getContextPath()%>/resources/img/3_MainPage/bgimg21.jpg" style="filter: brightness(30%); position: absolute; width: 13.5rem; height: 26rem; object-fit: cover;">
                                    <div class="px-4" style="width: 13rem; position: absolute; ">
                                        <div style="margin-top: 15rem;">
                                            <p class="text-white font-NanumR text_1-4" style="margin-bottom: 5px;">약 먹기 싫은디 <br>우짤래미</p>
                                            <p class="text-white font-NanumL text_1-1" style="margin-bottom: 0px;">2022-09-21</p>
                                            <button class="news-button disabled" style="position: absolute; right: 15px;"><i class="ai-chevron-right" style="font-size: 3rem; font-weight: 900; "></i></button>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li class="news-li">
                                <div style=" height: 100%;">
                                    <img src="<%=request.getContextPath()%>/resources/img/3_MainPage/bgimg21.jpg" style="filter: brightness(30%); position: absolute; width: 13.5rem; height: 26rem; object-fit: cover;">
                                    <div class="px-4" style="width: 13rem; position: absolute; ">
                                        <div style="margin-top: 15rem;">
                                            <p class="text-white font-NanumR text_1-4" style="margin-bottom: 5px;">약 먹기 싫은디 <br>우짤래미</p>
                                            <p class="text-white font-NanumL text_1-1" style="margin-bottom: 0px;">2022-09-21</p>
                                            <button class="news-button disabled" style="position: absolute; right: 15px;"><i class="ai-chevron-right" style="font-size: 3rem; font-weight: 900; "></i></button>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li class="news-li">
                                <div style=" height: 100%;">
                                    <img src="<%=request.getContextPath()%>/resources/img/3_MainPage/bgimg21.jpg" style="filter: brightness(30%); position: absolute; width: 13.5rem; height: 26rem; object-fit: cover;">
                                    <div class="px-4" style="width: 13rem; position: absolute; ">
                                        <div style="margin-top: 15rem;">
                                            <p class="text-white font-NanumR text_1-4" style="margin-bottom: 5px;">약 먹기 싫은디 <br>우짤래미</p>
                                            <p class="text-white font-NanumL text_1-1" style="margin-bottom: 0px;">2022-09-21</p>
                                            <button class="news-button disabled" style="position: absolute; right: 15px;"><i class="ai-chevron-right" style="font-size: 3rem; font-weight: 900; "></i></button>
                                        </div>
                                    </div>
                                </div>
                            </li>

                        </ul>
                    </div>

                </div>

            </div>
    


	
    <%-- footer --%>
    <%@ include file="../../common/footer2.jsp" %>
    
    <!-- Back to top button-->
     <div class="floatdiv" style="position: fixed;
    width: 80px;
    height: 80px;
    display: inline-block;
    right: 0;
    left: 94%;
    /* 창에서 오른쪽 길이 */
    top: 82%;
    /* 창에서 위에서 부터의 높이 */
    margin: 0;
    border-radius: 90px;
    z-index: 99;">
        <a href="http://pf.kakao.com/_xfxemsxj/chat">
            <img class="floatimg" src="<%=request.getContextPath()%>/resources/img/2_img/logo/chatbot.png" style="width: auto; height: 130px;">
        </a>
    </div>
    
	
    </main>
      
    <!-- Vendor scripts: js libraries and plugins-->
    <script src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js "></script>
    <script src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js "></script>
    <script src="${path}/resources/vendor/jarallax/dist/jarallax.min.js "></script>
    <script src="${path}/resources/vendor/swiper/swiper-bundle.min.js "></script>
    <!-- Main theme script-->
    <script src="${path}/resources/js/theme.min.js "></script>
</body>

</html>