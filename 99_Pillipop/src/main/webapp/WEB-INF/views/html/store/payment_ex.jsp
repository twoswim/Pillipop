<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="java.text.*"%>
<%@ page import= "java.lang.Math"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>	
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Pillipop Store</title>
    <!-- SEO Meta Tags-->
    <meta name="description" content="Around - Multipurpose Bootstrap HTML Template">
    <meta name="keywords" content="bootstrap, business, corporate, coworking space, services, creative agency, dashboard, e-commerce, mobile app showcase, saas, multipurpose, product landing, shop, software, ui kit, web studio, landing, dark mode, html5, css3, javascript, gallery, slider, touch, creative">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/resources/img/0_S_headerfooter/Store_logo.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/resources/img/0_S_headerfooter/Store_logo.png">
    <link rel="manifest" href="<%=request.getContextPath()%>/resources/favicon/site.webmanifest">
    <link rel="mask-icon" color="#6366f1" href="<%=request.getContextPath()%>/resources/favicon/safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#080032">
    <meta name="msapplication-config" content="<%=request.getContextPath()%>/resources/favicon/browserconfig.xml">
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


    <!-- Import Google Font-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;display=swap" rel="stylesheet" id="google-font">
    <!-- Vendor styles-->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/vendor/swiper/swiper-bundle.min.css" />
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/theme.min.css">
    <!-- 0_S_headerfooter -->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/0_S_headerfooter.css">
    <!-- 1_StoreMain -->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/1_StoreMain.css">
</head>
<!-- Body-->

<body>
    <%@ include file="../../common/loading.jsp" %>
    <!-- Page wrapper-->
    <main class="page-wrapper font-NanumR">
        <!-- header start -->
       	<%@ include file="../../common/Store_header.jsp" %>

        <!-- Page content-->
        <div class="d-none d-lg-block position-fixed top-0 start-0 h-100" style="width: 52.5%;"></div>
        <div class="needs-validation container position-relative zindex-2 pt-5 pb-lg-5 pb-md-4 pb-2" >
            <div class="row">
                <div class="col-lg-6">
                    <!-- Breadcrumb-->
                    <nav aria-label="breadcrumb">
                        <ol class="mt-5 pt-lg-3 pb-md-1 pb-lg-3 breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">???????????????</a></li>
                            <li class="breadcrumb-item"><a href="shop-catalog.html">????????????</a></li>
                            <li class="text-P3 breadcrumb-item active" aria-current="page">??????/??????</li>
                        </ol>
                    </nav>
                    <h1 class="h2 font-NanumEB">??????<span class="font-NanumR">/</span>??????</h1>
                </div>
            </div>
            <div style=" box-shadow: 0px 10px 10px rgb(218, 218, 218);">
                <!-- ???????????? -->
                <div style="box-shadow: 0px 10px 10px rgb(226, 226, 226);">
                    <table style="width: 100%;">
                        <colgroup>
                            <col width="700">
                            <!-- <col width="135"> -->
                            <col width="120">
                            <col width="130">
                            <col width="110">
                            <col>
                        </colgroup>
                        <thead class="t_a back_c_3 p_tb_1">
                            <tr>
                                <th scope="col" style="height: 3.5rem;">????????????</th>
                                <!-- <th scope="col">?????????</th> -->
                                <th scope="col">?????????</th>
                                <th scope="col">??????</th>
                                <th scope="col">??????</th>
                                <th scope="col">????????????(????????????)</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${basket}" var="basket">
	                            <tr class="border-bottom">
	                                <td>
	                                    <a class="d-inline-block flex-shrink-0 p-sm-2 p-xl-3 mb-2 mb-sm-0 mx-sm-5" href="shop-single.html">
	                                        <img class="rounded-3" style="width: 10rem; height: 9rem; object-fit: cover;" src="<c:out value="${basket.hth_img}"/>" alt="Image">
	                                    </a>
	                                    <div class=" pt-1 ps-sm-4 d-inline-block">
	                                        <div class="d-flex">
	                                            <div class="me-3">
		                                              <div class="d-sm-flex flex-wrap mt-2">
		                                                  <div class="text-muted fs-sm me-3">[&nbsp;<c:out value="${basket.BSSH_NM}"/>&nbsp;]</div>
		                                              </div>
	                                                <h3 class="h5 mb-0"><a href="2_product.html">${basket.PRDLST_NM}</a></h3>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </td>
	                                <td rowspan="1" class="text-center">10,000 ???</td>
	                                <td rowspan="1" class="text-center"><c:out value="${basket.b_ea}"/></td>
	                                <c:if test="${basket.hth_discount != null}">
		                                <td class="text-center">
		                                    <c:set var="sale" value="${Math.round((basket.hth_price - (basket.hth_price * (basket.hth_discount/100)))/100)}"></c:set>
		                                	(-)<fmt:formatNumber value="${basket.hth_price - (sale*100)}" pattern="#,### ???" />
		                                </td>
		                                <td>
		                                    <div class="text-center ms-auto">
		                                        <del class="text-muted ms-auto mt-2"><fmt:formatNumber value="${basket.hth_price}" pattern="#,### ???"/></del>
		                                        <div class="fs-5 mb-0"><fmt:formatNumber value="${sale*100}" pattern="#,### ???" /></div>
		                                    </div>
		                                </td>
	                                </c:if>
	                                <c:if test="${basket.hth_discount == null}">
	                                	<td class="text-center">
		                                </td>
		                                <td>
		                                 	<div class="text-center ms-auto">
		                                		<div class="fs-5 mb-0"><fmt:formatNumber value="${basket.hth_price}" pattern="#,### ???" /></div>
		                                	</div>
		                                </td>
	                                </c:if>
	                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="back_c_1">
                    <div class="m-auto">
                        <form name="destination" action="${path}/health/payment" method="post">
	                        <div class="border_g1 d-inline-block mt-5 ms-4 back_c_0 rounded-1" style="height: 53rem; width: 63%;">
	                            <div class="mt-5 ps-5">
	                                <div class="font-NanumB text-dark text_1-5">
	                                    ????????? ??????
	                                </div>
	                      
	                                <!-- ??????????????? -->
                              		<div class="align-items-lg-center">
                                   		<div class="g-4 pb-4 pb-md-5 mb-3 mb-md-1  mt-3" style="padding: 0;">
	                                         <div class="col-sm-5 ">
	                                             <label class="form-label fs-base ">?????????</label>
	                                             <input class="form-control form-control-lg " type="text" placeholder="?????????" required>
	                                         </div>
	                                         <div class="col-sm-5 mt-3">
	                                             <label class="form-label fs-base ">?????????</label>
	                                             <div class="position-relative"><i class="ai-phone fs-lg position-absolute top-50 start-0 translate-middle-y ms-3 "></i>
	                                                 <input class="form-control form-control-lg ps-5" type="tel" name="r_phone" placeholder="?????????" required>
	                                             </div>
	                                         </div>
	                                         <div class="col-sm-3  mt-3" style="display: inline-block;">
	                                             <label class="form-label fs-base ">????????????</label>
	                                             <input class="form-control form-control-lg " type="text" id="sample4_postcode" name="addr_postal" placeholder="????????????" required>
	                                         </div>
	                                         <div class="col-sm-2  mt-3 position-relative" style="display: inline-block; top: 2.5rem">
	                                             <input class="form-control form-control-lg back_c_3" type="button" onclick="sample4_execDaumPostcode()" value="???????????? ??????"><br>
	                                         </div>
	                                         <div>
	                                             <div class="col-sm-5 mt-3" style="display: inline-block;">
	                                                 <label class="form-label fs-base ">???????????????</label>
	                                                 <input class="form-control form-control-lg " type="text" id="sample4_roadAddress" name="addr_road" placeholder="???????????????" required>
	                                             </div>
	                                             <div class="col-sm-5 mt-3 ms-2" style="display: inline-block;">
	                                                 <label class="form-label fs-base ">????????????</label>
	                                                 <input class="form-control form-control-lg" type="tel" id="sample4_jibunAddress" name="addr_land" placeholder="????????????" required>
	                                             </div>
	                                         </div>
	                                         <div class="col-sm-6 mt-3" style="display: inline-block;">
	                                             <label class="form-label fs-base ">????????????</label>
	                                             <input class="form-control form-control-lg " type="text" id="sample4_detailAddress" name="addr_detail" placeholder="????????????" required>
	                                         </div>
	                                         <div class="col-sm-4 mt-3 position-relative" style="display: inline-block;">
	                                             <input class="form-control form-control-lg" type="tel" id="sample4_extraAddress" name="addr_detail_add" placeholder="????????????">
	                                         </div>
	                                         <div class="col-sm-11 mt-3">
	                                             <label class="form-label fs-base " for="c-notes ">?????? ?????? <span class='text-muted'>(??????)</span></label>
	                                             <textarea class="form-control form-control-lg " rows="3" style="resize: none;" id="c-notes" name="r_memo"></textarea>
	                                         </div>
	                                         <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	                                         <script>
	                                             //??? ??????????????? ????????? ?????? ?????? ????????? ?????? ????????? ??????, ???????????? ???????????? ???????????? ????????? ????????? ???????????? ????????? ???????????????.
	                                             function sample4_execDaumPostcode() {
	                                                 new daum.Postcode({
	                                                     oncomplete: function(data) {
	                                                         // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.
	
	                                                         // ????????? ????????? ?????? ????????? ?????? ????????? ????????????.
	                                                         // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
	                                                         var roadAddr = data.roadAddress; // ????????? ?????? ??????
	                                                         var extraRoadAddr = ''; // ?????? ?????? ??????
	
	                                                         // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
	                                                         // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
	                                                         if (data.bname !== '' && /[???|???|???]$/g.test(data.bname)) {
	                                                             extraRoadAddr += data.bname;
	                                                         }
	                                                         // ???????????? ??????, ??????????????? ?????? ????????????.
	                                                         if (data.buildingName !== '' && data.apartment === 'Y') {
	                                                             extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                                                         }
	                                                         // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
	                                                         if (extraRoadAddr !== '') {
	                                                             extraRoadAddr = ' (' + extraRoadAddr + ')';
	                                                         }
	
	                                                         // ??????????????? ?????? ????????? ?????? ????????? ?????????.
	                                                         document.getElementById('sample4_postcode').value = data.zonecode;
	                                                         document.getElementById("sample4_roadAddress").value = roadAddr;
	                                                         document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
	
	                                                         // ???????????? ???????????? ?????? ?????? ?????? ????????? ?????????.
	                                                         if (roadAddr !== '') {
	                                                             document.getElementById("sample4_extraAddress").value = extraRoadAddr;
	                                                         } else {
	                                                             document.getElementById("sample4_extraAddress").value = '';
	                                                         }
	
	                                                         var guideTextBox = document.getElementById("guide");
	                                                         // ???????????? '?????? ??????'??? ????????? ??????, ?????? ???????????? ????????? ?????????.
	                                                         if (data.autoRoadAddress) {
	                                                             var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                                                             guideTextBox.innerHTML = '(?????? ????????? ?????? : ' + expRoadAddr + ')';
	                                                             guideTextBox.style.display = 'block';
	
	                                                         } else if (data.autoJibunAddress) {
	                                                             var expJibunAddr = data.autoJibunAddress;
	                                                             guideTextBox.innerHTML = '(?????? ?????? ?????? : ' + expJibunAddr + ')';
	                                                             guideTextBox.style.display = 'block';
	                                                         } else {
	                                                             guideTextBox.innerHTML = '';
	                                                             guideTextBox.style.display = 'none';
	                                                         }
	                                                     }
	                                                 }).open();
	                                             }
	                                         </script>
	                                     </div>
	                                 </div>
	                            </div>
	                        </div>
	
	                        <div class="border_g1 back_c_0 d-inline-block mt-5 ms-4 rounded-1" style="position: absolute; width: 30%; height: 53rem;">
	                            <div class="mt-5 ps-5 mb-5">
	                                <div class="font-NanumB text-dark text_1-1">????????? ??????</div>
	                                <div class="mt-2 font-NanumR text-dark text_1">${loginMember.u_nickname}&nbsp;(&nbsp;${loginMember.u_name}&nbsp;)</div>
	                                <div class="mt-2 font-NanumR text-dark text_1">
	                                	<fmt:formatNumber var="phone" value="${loginMember.u_phone}" pattern="#,####" />
	                                	0<c:out value="${fn:replace(phone, ',', '-')}" />
	                                </div>
	                                <div class="mt-2 font-NanumR text-dark text_1">${loginMember.u_id}</div>
	                            </div>
	                            <div class="border_g1 m-auto" style="width: 20rem;"></div>
	                            <div class="mt-5 pe-5 ps-5">
	                                <div class="font-NanumB text-dark text_1-5">????????????</div>
	                                <div class="mt-2 font-NanumR text-dark text_1 jus_between">
	                                    <div class="">?????? ??????</div>
	                                    <div><fmt:formatNumber value="${total}" pattern="#,### ???"/></div>
	                                </div>
	                                <div class="mt-2 font-NanumR text-dark text_1 jus_between">
	                                    <div class="">?????????</div>
	                                    <div><fmt:formatNumber value="${basket.size()*10000}" pattern="#,### ???"/></div>
	                                </div>
	                                <div class="border_g1 m-auto mt-3" style="width: 15rem;"></div>
	                                <div class="mt-2 font-NanumB text-dark text_1-1 jus_between">
	                                    <div class="">??? ??????</div>
	                                	<div>
	                                    	<c:set var="to" value="${total+(basketcount*10000)}"></c:set>
											<fmt:formatNumber value="${to}" pattern="#,### ???"/>
											<input type="hidden" name="or_price" value="${to}">
										</div>
	                                </div>
	                            </div>
	                        </div>
	                        <div class=" d-inline-block mt-5 ms-4 mb-5 " style=" width: 100%;">
	                            <div class="form-check mb-4 " style="justify-content: center; display: flex;">
	                                <div>
	                                    <input class="form-check-input" type="checkbox" required>
	                                </div>
	                                <label class="form-check-label" for="save-info2"><span class="text-muted">?????? ????????? ??????????????????, ?????? ?????? ?????? ???????????????.</span></label>
	                            </div>
	                            <div style="justify-content: center; display: flex;">
	                                <button class="btn btn-lg S_btn-payment w-100 w-sm-auto" type="submit">????????????</button>
	                            </div>
	                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>
    
    <!-- Footer-->
   	<%@ include file="../../common/footer.jsp" %>
   	
   
    <!-- Back to top button-->
    <a class="btn-scroll-top" href="#top" data-scroll>
    	<svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
   		<circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
   		</svg><i class="ai-arrow-up"></i>
    </a>
    <!-- Vendor scripts: js libraries and plugins-->
    <script src="<%=request.getContextPath()%>/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/cleave.js/dist/cleave.min.js"></script>

        <!-- Main theme script-->
        <script src="<%=request.getContextPath()%>/resources/js/theme.min.js"></script>
</body>

</html>