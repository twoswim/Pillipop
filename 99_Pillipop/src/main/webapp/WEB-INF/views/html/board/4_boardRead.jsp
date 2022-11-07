<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="euc-kr">

<head>
    <meta charset="utf-8">
    <title>pillipop | boardRead</title>
    <!-- SEO Meta Tags-->
    <meta name="description" content="Around - Multipurpose Bootstrap HTML Template">
    <meta name="keywords" content="bootstrap, business, corporate, coworking space, services, creative agency, dashboard, e-commerce, mobile app showcase, saas, multipurpose, product landing, shop, software, ui kit, web studio, landing, dark mode, html5, css3, javascript, gallery, slider, touch, creative">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="apple-touch-icon" sizes="180x180" href="<%=request.getContextPath()%>/resources/img/4_board/Pillipop.png">
    <link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/resources/img/4_board/Pillipop.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/resources/img/4_board/Pillipop.png">
    <link rel="manifest" href="<%=request.getContextPath()%>/resources/favicon/site.webmanifest">
    <link rel="mask-icon" color="#6366f1" href="<%=request.getContextPath()%>/resources/favicon/safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#080032">
    <meta name="msapplication-config" content="<%=request.getContextPath()%>/resources/favicon/browserconfig.xml">
    <meta name="theme-color" content="white">
    <!-- headerfooter-->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/0_headerfooter.css">
    <!-- Css -->
    <link href="<%=request.getContextPath()%>/resources/css/4_boardRead.css" rel="stylesheet" type="text/css" />
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
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/resources/css/theme.min.css">
</head>

<!-- Body-->
<body>
    <style>
        body {
            font-family: "NanumSquareR";
        }
    </style>
    <!-- Page loading spinner-->
	<%@ include file="../../common/loading.jsp" %>
	
    <!-- Page wrapper-->
    <main class="page-wrapper">
     
 		<!-- header -->
    	<%@ include file="../../common/header.jsp" %>
    	
        <!-- Page content-->
        <!-- Hero-->
        <section>
            <div class="jarallax bg-dark py-5 mainPic" data-jarallax data-type="scroll-opacity" data-speed="0.7">
                <div class="jarallax-img" style="background-image: url(<%=request.getContextPath()%>/resources/img/4_board/baner_6.png);"></div>
                <div class="container position-relative zindex-5 py-sm-4 py-lg-5 mt-4"></div>
            </div>
        </section>
        <div class="container pb-lg-5 pb-md-4 pb-2 my-5">
            <!-- Breadcrumb-->
            <nav aria-label="breadcrumb">
                <ol class="pt-lg-3 pb-lg-4 pb-2 breadcrumb">
                    <li class="breadcrumb-item"><a href="${path}">홈</a></li>
                    <li class="breadcrumb-item">커뮤니티</li>
                    <li class="breadcrumb-item"><a href="${path}/board/4_boardList">게시판</a></li>
                    <li class="breadcrumb-item"></li>
                    <li class="presentPage">게시글</li>
                </ol>
            </nav>
            <div class="row mb-md-2 mb-xl-4">
                <!-- Blog posts-->
                <div class="col-lg-9 col-xl-8 pe-lg-4 pe-xl-0">
                    <div class="read-header">
                        <div class="ReadTitle">
                            <div class="read-type">
                            <c:if test="${board.cid eq '공지'}">
	                        	<span class="badge bg-faded-danger text-danger fs-xs typeIcon-bl">공지</span>
                            </c:if>
                            <c:if test="${board.cid eq '자유'}">
	                        	<span class="badge bg-faded-info text-info fs-xs typeIcon-bl">자유</span>
                            </c:if>
                            <c:if test="${board.cid eq '후기'}">
	                        	<span class="badge bg-faded-primary text-primary fs-xs typeIcon-bl">후기</span>
                            </c:if>	
                            </div>
                            <div class="read-title">
                                <h3 class="title-text">${board.title}</h3>
                            </div>
                        </div>
                        <div class="SubTitle">
                            <div class="WriterInfo">
                                <div class="profile">
                                    <img class="rounded-circle" src="${loginMember.u_img}" width="50" alt="Comment author">
                                </div>
                                <div class="read-info">
                                    <div class="profile-info">
                                        <div class="nickname">
                                            <h5>${board.u_nickname}</h5>
                                        </div>
                                    </div>
                                    <div class="write-info">
                                        <span class="date"><fmt:formatDate type="both" dateStyle="short" value="${board.boDate}"/></span>
                                        <span class="read-count">조회수 ${board.readAccount}</span>
                                        <span>게시글 no.${board.boNo}</span>
                                    </div>
                                </div>
                            </div>
                            <!-- 글작성자 수정삭제 가능 -->
                            <div class="ReadTool">
                          		<c:if test="${ !empty loginMember && (loginMember.u_no == board.u_no) }">
	                                <button type="button" id="btnUpdate" onclick="location.href = '${path}/board/4_boardUpdate?boNo=${board.boNo}'">수정</button>
	                                <button type="button" id="btnDelete" onclick="location.href = '${path}/board/delete?boNo=${board.boNo}'">삭제</button>
                          		</c:if>
                            </div>
                        </div>
                    </div>
                    <!-- 첨부파일 -->
                    <div class="file-down">
                    	<c:if test="${ !empty board.attachment }">
                        	<a href="javascript:fileDownload('${board.attachment}', '${board.modifiedAttachment}')">
                            	<i class="ai-save">첨부파일</i>
                            	<c:out value="${board.attachment}"></c:out>
                        	</a>
                        	<script>
								function fileDownload(oriname, rename) {
									const url = "${path}/board/fileDown";
									
									let oName = encodeURIComponent(oriname);
									let rName = encodeURIComponent(rename);
									
									location.assign(url + "?oriname=" + oName + "&rename=" + rName);
								}
							</script>
                    	</c:if>
                    	<c:if test="${empty board.attachment}">
							<span> - </span>
						</c:if>
                    </div>
                    <div class="read-container">
                        <div class="read-view">
                            <div class="text-area" style="height: 400px">
                               		${board.boContent}
                            </div>
                        </div>
                    </div>
                    
                    <!-- 댓글 작성 -->
                    <div class="comment">
                        <div class="comment-write">
                        	<form action="${path}/board/reply" method="post">
	                            <div class="comment-input">
	                            	<input type="hidden" name="boNo" value="${board.boNo}"/> 
    								<input type="hidden" name="u_no" value="${loginMember.u_no}"/>
    								<c:if test="${ empty loginMember }">
	                                	<textarea name="reContent" id="replyContent" placeholder="로그인이 필요합니다." onfocus="this.placeholder=''" onblur="this.placeholder='로그인이 필요합니다.'" rows="1" class="comment-input-text" style="overflow: hidden; overflow-wrap: break-word; height: 100px;"></textarea>
	                                </c:if>
	                                <c:if test="${ !empty loginMember }">
	                                	<textarea name="reContent" id="replyContent" rows="1" class="comment-input-text" style="overflow: hidden; overflow-wrap: break-word; height: 100px;" required></textarea>
	                                </c:if>
	                            </div>
	                            <div class="comment-enter-box">
	                                <button class="comment-enter-btn" id="btn-insert" type="submit">작성</button>
	                            </div>
                            </form>
                        </div>
                    </div>
                    
                    <!-- 댓글 목록 -->
                    <div class="pt-4 pt-xl-5 mt-4" id="comments">
                    	<c:if test="${!empty replyList}">
                    		<c:forEach var="reply" items="${replyList}">
		                        <div class="border-bottom py-4 mt-2 mb-4">
		                            <div class="d-flex align-items-center pb-1 mb-3"><img class="rounded-circle" src="${loginMember.u_img}" width="48" alt="Comment author">
		                                <div class="ps-3">
		                                    <h6 class="mb-0">${reply.u_nickname}</h6><span class="fs-sm text-muted">${reply.u_id}</span><span class="fs-sm text-muted"><fmt:formatDate type="both" dateStyle="short" value="${reply.reDate}"/></span>
		                                </div>
		                                <div class="commentFixBr">
		                                	<c:if test="${ !empty loginMember && (loginMember.u_id == reply.u_id) }">
		                                    <button class="commentDelBtn" onclick="deleteReply('${reply.reNo}','${board.boNo}');">삭제 <i class="ai-delete"></i></button>
		                                    </c:if>
		                                </div>
		                            </div>
		                            <p class="pb-2 mb-0">${reply.reContent}</p>
		                        </div>
	                        </c:forEach>
                        </c:if>
                        <c:if test="${empty replyList}">
                        	<div class="border-bottom py-4 mt-2 mb-4">
		                   		<p class="pb-2 mb-0">등록된 댓글이 없습니다.</p>
		                    </div>
                        </c:if>
                    </div>
                    
                    <!-- prev, next posts-->
                    <dl class="prevNext">
                        <c:if test="${ board.boNo != 1 }">
                        	<dt class="prev">이전글
                            	<i class="ai-chevron-right"></i>
	                            <a href="${path}/board/4_boardRead?boNo=${board.boNo -1}">${board.boNo -1}번 게시글</a>
                        	</dt>
                        </c:if>
                        <dt class="next">다음글
                            <i class="ai-chevron-right"></i>
	                        <a href="${path}/board/4_boardRead?boNo=${board.boNo +1}">${board.boNo +1}번 게시글</a>
                        </dt>
                    </dl>
                </div>
            </div>
        </div>
        
	    <!-- Sidebar toggle button-->
	    <button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#sidebarBlog"><i class="ai-layout-column me-2"></i>Sidebar</button>
 	
	 	<script>
			function deleteReply(reNo, boNo){
				var url = "${path}/board/replydel?reNo=";
				var requestURL = url + reNo + "&boNo=" + boNo;
				location.replace(requestURL);
			}
		</script>
 	
    </main>

	<!-- footer -->
    <%@ include file="../../common/footer.jsp" %>
    
    <!-- Back to top button-->
    <a class="btn-scroll-top" href="#top" data-scroll>
        <svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
      </svg><i class="ai-arrow-up"></i></a>
    <!-- Vendor scripts: js libraries and plugins-->
    <script src="<%=request.getContextPath()%>/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/shufflejs/dist/shuffle.min.js"></script>
    <!-- Main theme script-->
    <script src="<%=request.getContextPath()%>/resources/js/theme.min.js"></script>
</body>

</html>