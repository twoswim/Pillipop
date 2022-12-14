<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>Around | Business Consulting</title>
    <!-- ajax -->
	<script src="https://code.jquery.com/jquery-latest.js"></script>
    <!-- SEO Meta Tags-->
    <meta name="description" content="Around - Multipurpose Bootstrap HTML Template">
    <meta name="keywords" content="bootstrap, business, corporate, coworking space, services, creative agency, dashboard, e-commerce, mobile app showcase, saas, multipurpose, product landing, shop, software, ui kit, web studio, landing, dark mode, html5, css3, javascript, gallery, slider, touch, creative">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="apple-touch-icon" sizes="180x180" href="${path}/resources/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="${path}/resources/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="${path}/resources/favicon/favicon-16x16.png">
    <link rel="manifest" href="${path}/resources/favicon/site.webmanifest">
    <link rel="mask-icon" color="#6366f1" href="${path}/resources/favicon/safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#080032">
    <meta name="msapplication-config" content="${path}/resources/favicon/browserconfig.xml">
    <meta name="theme-color" content="white">
    <!-- Theme mode-->
    <script language='javascript'>
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
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/aos/dist/aos.css" />
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.min.css">
    <!-- ?????? CSS -->
    <link rel="stylesheet" href="${path}/resources/css/7.css">
    <!-- ?????? CSS -->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/0_headerfooter.css">
</head>
<!-- Body-->

<body class="bg-secondary">
   <%@ include file="../../common/loading.jsp" %>
    <!-- Page wrapper-->
    <main class="page-wrapper">
        <!-- Header -->
<%@ include file="../../common/header.jsp" %>
        <!-- Page content-->
        <!-- Map-->
        <div class="container py-5 mt-5">
            <!-- Breadcrumb-->
            <nav aria-label="breadcrumb">
                <ol class="pt-lg-3 pb-2 breadcrumb ks_black font-NanumAcR">
                	<li class="breadcrumb-item"><a href="${path}/">???</a></li>
                    <li class="breadcrumb-item"><a href="${path}/pharmacy/main">?????? ??????</a></li>
                    <li class="breadcrumb-item"><a href="#">?????? ??????</a></li>
                    <li class="breadcrumb-item active" aria-current="page">?????? ??????</li>
                </ol>
            </nav>
        </div>
        <section class="det_body ks_black font-NanumAcR">
            <div class="common-hgroup2">
            	<center>
                    <h1><img src="${path}/resources/img/7_drug/drug_7.png" width="50px" style="margin-bottom: 0px;" alt=""></img> ?????? ?????? </h1>
                <center>
                <div class="common-caution" style="box-shadow: 0px 5px 10px rgb(218, 218, 218);"> ??????????????? ????????? ??? ???????????? ????????? ?????? ?????? ??? ?????????????????? ????????????.</div>
            </div>
            <section>
                <div class="common-name1">
                    <div class="common-hgroup3">
                        <h3>
                            ${pharmacy.dutyName}
                        </h3>
                    </div>
                    <div class="common-hgroup30">
                        <p class="det_icon10">
                            <span class="det_icon_open">????????????</span>
                            <!-- <span class="det_icon_tel">????????????</span> -->
                            <!-- <span class="det_icon_close">????????????</span> -->
                        </p>
                    </div>
                    <div class="common-hgroup31">
						<c:choose>
							<c:when test="${not empty loginMember}">
													<a class="position-absolute 
														<c:forEach var="plike" items="${like}">
															<c:if test="${fn:contains(plike.u_no, loginMember.u_no) && fn:contains(plike.dutyNo, pharmacy.dutyNo)}">
																nav-link fs-3 ai-heart-filled
															</c:if>
														</c:forEach>"
														style="float: right; color: red;" id="${pharmacy.dutyNo}" 
														data-bs-toggle="tooltip" type="button" data-value="${pharmacy.dutyNo}"> 
													</a>
													<a class="position-absolute nav-link fs-3 ai-heart" style="float: right; color: red;" id="${pharmacy.dutyNo}" 
														data-bs-toggle="tooltip" type="button" data-value="${pharmacy.dutyNo}"> 
													</a>	
							</c:when>
							<c:otherwise></c:otherwise>	
						</c:choose>
					</div>
                </div>
                <div class="common-row2">
                    <div class="column-size5">
                        <div class="place-view-body">
                            <div>
                                <div id="map" style="width:400px; height:300px;"></div>
                                <script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=f8e5e54f712b221ce7cfad600f9b0265"></script>
                                <script>
                                    var mapContainer = document.getElementById('map'); // ????????? ????????? div 
                                    var mapOption = {
                                        center: new kakao.maps.LatLng(${pharmacy.wgs84Lat}, ${pharmacy.wgs84Lon}), // ????????? ????????????
                                        level: 3 // ????????? ?????? ??????
                                    };

                                    // ????????? ???????????? 
                                    var map = new kakao.maps.Map(mapContainer, mapOption);

                                    // ?????? ???????????? ??????
                                    var markerImageUrl = 'https://velog.velcdn.com/images/kxxseop/post/f1976740-6619-4a3c-8b8c-4651dfc37bcf/image.png',
                                        markerImageSize = new kakao.maps.Size(30, 49), // ?????? ???????????? ??????
                                        markerImageOptions = {
                                            offset: new kakao.maps.Point(20, 42) // ?????? ????????? ???????????? ????????? ?????? ??????
                                        };

                                    // ?????? ???????????? ????????????
                                    var markerImage = new kakao.maps.MarkerImage(markerImageUrl, markerImageSize, markerImageOptions);

                                    // ????????? ????????? ???????????? ????????????
                                    var marker = new kakao.maps.Marker({
                                        position: new kakao.maps.LatLng(${pharmacy.wgs84Lat}, ${pharmacy.wgs84Lon}), // ????????? ??????
                                        image: markerImage, // ????????? ?????????
                                        map: map // ????????? ????????? ?????? ??????
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="column-size7">
                        <div>
                            <table class="common-board">
                                <colgroup>
                                    <col width="120">
                                    <col>
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th>??????</th>
                                        <td>
                                            <div>
                                                <p>${pharmacy.dutyAddr}</p>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>????????????</th>
                                        <td>
                                            <div>
                                                <p>${pharmacy.dutyTel1}</p>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>????????????</th>
                                        <td>
                                            <div>
                                                <p>${pharmacy.postCdn1}-${pharmacy.postCdn2}</p>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>??????</th>
                                        <td>
                                            <div>
                                                <p>${pharmacy.dutyMapimg}</p>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="common-hgroup5">
                        <h5>????????????</h5>
                    </div>
                    <div>
                        <div class="common-time">
                            <ul style="overflow:hidden;">
                                <li>
                                    <c:if test="${pharmacy.dutyTime1s eq '-'}">
                                    <span>?????????</span> -
                               		</c:if>
                                	<c:if test="${pharmacy.dutyTime1s ne '-'}">
                                    <span>?????????</span> ${pharmacy.dutyTime1s} ~ ${pharmacy.dutyTime1c}
                               		</c:if>
                                </li>
                                <li>
                                    <c:if test="${pharmacy.dutyTime1s eq '-'}">
                                    <span>?????????</span> -
                               		</c:if>
                                	<c:if test="${pharmacy.dutyTime1s ne '-'}">
                                    <span>?????????</span> ${pharmacy.dutyTime1s} ~ ${pharmacy.dutyTime1c}
                               		</c:if>
                                </li>
                                <li>
                                    <c:if test="${pharmacy.dutyTime1s eq '-'}">
                                    <span>?????????</span> -
                               		</c:if>
                                	<c:if test="${pharmacy.dutyTime1s ne '-'}">
                                    <span>?????????</span> ${pharmacy.dutyTime1s} ~ ${pharmacy.dutyTime1c}
                               		</c:if>
                                </li>
                                <li>
                                    <c:if test="${pharmacy.dutyTime1s eq '-'}">
                                    <span>?????????</span> -
                               		</c:if>
                                	<c:if test="${pharmacy.dutyTime1s ne '-'}">
                                    <span>?????????</span> ${pharmacy.dutyTime1s} ~ ${pharmacy.dutyTime1c}
                               		</c:if>
                                </li>
                                <li>
                                    <c:if test="${pharmacy.dutyTime1s eq '-'}">
                                    <span>?????????</span> -
                               		</c:if>
                                	<c:if test="${pharmacy.dutyTime1s ne '-'}">
                                    <span>?????????</span> ${pharmacy.dutyTime1s} ~ ${pharmacy.dutyTime1c}
                               		</c:if>
                                </li>
                                <li>
                                    <c:if test="${pharmacy.dutyTime6s eq '-'}">
                                    <span>?????????</span> -
                               		</c:if>
                                	<c:if test="${pharmacy.dutyTime6s ne '-'}">
                                    <span>?????????</span> ${pharmacy.dutyTime6s} ~ ${pharmacy.dutyTime6c}
                               		</c:if>
                                </li>
                                <li>
                                	<c:if test="${pharmacy.dutyTime7s eq '-'}">
                                    <span>?????????</span> -
                               		</c:if>
                                	<c:if test="${pharmacy.dutyTime7s ne '-'}">
                                    <span>?????????</span> ${pharmacy.dutyTime7s} ~ ${pharmacy.dutyTime7c}
                               		</c:if>
                                </li>
                                <li>
                                    <c:if test="${pharmacy.dutyTime8s eq '-'}">
                                    <span>?????????</span> -
                               		</c:if>
                                	<c:if test="${pharmacy.dutyTime8s ne '-'}">
                                    <span>?????????</span> ${pharmacy.dutyTime8s} ~ ${pharmacy.dutyTime8c}
                               		</c:if>
                                </li>
                            </ul>
                            <p>
                             	<c:if test="${pharmacy.dutyInf eq '-'}">
                            	<span style="font-weight: bold; color: red; padding-left: 12px;">?????? : </span>
                            	</c:if>
                             	<c:if test="${pharmacy.dutyInf ne '-'}">
                            	<span style="font-weight: bold; color: red; padding-left: 12px;">?????? : ${pharmacy.dutyInf}</span>
                            	</c:if>
                            </p>
                        </div>
                        <div class="common-caution2">
                            <span style="font-weight:bold;">??????????????? : </span>??????, ???, ?????????, ????????????, ???????????????, ?????????, ?????????, ??????, ?????????, ?????????, ???????????????
                        </div>
                        <div class="common-command">
                            <button href="${path}/pharmacy/list" onclick="" class="common-btn btn-size-l btn-color-normal">??????</button>
                        </div>
                    </div>
                </div>
            </section>
        </section>
    </main>
    <script>
    	$(document).on('click', '.nav-link', function() {
        	// ?????? ????????? ?????????
        	if(${not empty loginMember}) {
        		let u_no 	= ${loginMember.u_no};
        		let dutyNo = $(this).attr("id");
        		
        		console.log("u_no: " + u_no);
                console.log("dutyNo: " + dutyNo);
	        	
                $.ajax({
	        		type: 'get',
	        		url: 'plike.do',
	        		dataType: 'json',
	        		data: {
	        			u_no: u_no,
	        			dutyNo: dutyNo
	        		},
	        		success: function(result) {
	        			console.log(result);
	        			if(result.result == 1) {
		        			alert("??? ????????? ?????????????????????.");
		        			$('a[data-value='+dutyNo+']').parent().find('.ai-heart').attr('class', 'position-absolute nav-link fs-3 ai-heart-filled');
	        			} 
	        			if(result.result == 0) {
		        			alert("??? ???????????? ?????????????????????.");
		        			$('a[data-value='+dutyNo+']').parent().find('.ai-heart-filled').attr('class', 'position-absolute nav-link fs-3 ai-heart');
	        			}
	        		},
	        		erorr: function() {
	        			alert("????????? ???????????????.");
	        		},
	        	});
        	} else {
        		alert("????????? ??? ?????? ??????????????????.");
        	}
     	})
     </script>
    <!-- Footer -->
<%@ include file="../../common/footer.jsp" %>
    <!-- Back to top button-->
    <a class="btn-scroll-top " href="#top " data-scroll>
        <svg viewBox="0 0 40 40 " fill="currentColor " xmlns="http://www.w3.org/2000/svg ">
        <circle cx="20 " cy="20 " r="19 " fill="none " stroke="currentColor " stroke-width="1.5 " stroke-miterlimit="10 "></circle>
      </svg><i class="ai-arrow-up "></i></a>
    <!-- Vendor scripts: js libraries and plugins-->
    <script src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js "></script>
    <script src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js "></script>
    <script src="${path}/resources/vendor/parallax-js/dist/parallax.min.js "></script>
    <script src="${path}/resources/vendor/swiper/swiper-bundle.min.js "></script>
    <script src="${path}/resources/vendor/aos/dist/aos.js "></script>
    <!-- Main theme script-->
    <script src="${path}/resources/js/theme.min.js "></script>
</body>

</html>