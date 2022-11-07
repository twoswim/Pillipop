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
    <title>pillipop | boardList</title>
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
    <link href="<%=request.getContextPath()%>/resources/css/4_boardList.css" rel="stylesheet" type="text/css" />
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
    	
    	<c:set var="searchType" value="${param.searchType}"/>
		<c:if test="${empty searchType}">
			<c:set var="searchType" value="${'title'}"/>
		</c:if>
    	
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
                    <li class="breadcrumb-item "><a href="${path}">홈</a></li>
                    <li class="breadcrumb-item ">커뮤니티</li>
                    <li class="breadcrumb-item presentPage">게시판</li>
                </ol>
            </nav>

            <div class="row mb-md-2 mb-xl-4">
                <!-- 게시판 시작 -->
                <div class="col-lg-9 col-xl-8 pe-lg-4 pe-xl-0">
                    <div class="list-title">
                        <h3>자유게시판</h3>
                    </div>
                    <div class="inform-box">
                        <ul class="inform-box-detail">
                            <li>
                                상업성광고, 특정인에 대한 비방, 정치적 목적이나 성향, 반복적 게시물, 불법유해 정보 등은 관리자에 의해 통보없이 삭제될 수 있습니다. 또한, 게시판 내에 개인정보를 입력 시 악용될 우려가 있으니 입력하지 않도록 유의하시기 바랍니다.
                            </li>
                        </ul>
                    </div>
                    <div class="board">
                        <!-- 검색 창 -->
                        <form action="${path}/board/4_boardList" id="searchForm" method="get" class="search">
                            <fieldset>
                                <div class="search-word">
                                    <div class="searchOption-select">
                                        <label>
                                        	<c:if test="${searchType == 'title'}">
	                                            <input type="radio" name="searchType" value="title" checked />
	                                            <span>제목</span>
                                        	</c:if>
                                        	<c:if test="${searchType != 'title'}">
	                                            <input type="radio" name="searchType" value="title" />
	                                            <span>제목</span>
                                        	</c:if>
                                        </label>
                                        <label>
                                        	<c:if test="${searchType == 'content'}">
	                                            <input type="radio" name="searchType" value="content" checked />
	                                            <span>내용</span>
                                        	</c:if>
                                        	<c:if test="${searchType != 'content'}">
	                                            <input type="radio" name="searchType" value="content"  />
	                                            <span>내용</span>
                                        	</c:if>
                                        </label>
                                        <label>
                                        	<c:if test="${searchType == 'writer'}">
	                                            <input type="radio" name="searchType" value="writer" checked />
	                                            <span>작성자</span>
                                        	</c:if>
                                        	<c:if test="${searchType != 'writer'}">
	                                            <input type="radio" name="searchType" value="writer" />
	                                            <span>작성자</span>
                                        	</c:if>
                                        </label>
                                    </div>
                                    <span class="search-word-select">
                                        <select name="searchCate" id="searchtype" title="검색조건을 설정하세요."
                                            class="form-select ms-auto select-type">
                                            
                                            <option selected>전체</option>
                                            	<option value="공지">공지</option>
                                            	<option value="자유">자유</option>
                                            	<option value="후기">후기</option>
                                        </select>
                                    </span>

                                    <!-- Search box-->
                                    <div class="position-relative searchBox-bl"><i class="ai-search position-absolute top-50 start-0 translate-middle-y ms-3"></i>
                                        <input class="form-control ps-5" id="searchValue" name="searchValue" type="search" value="${param.searchValue}" placeholder="검색">
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                        <!-- 게시판 목록 시작 -->
                        <table class="board-list">
                            <thead>
                                <tr>
                                    <th scope="col" class="board-list-table">번호</th>
                                    <th scope="col" class="board-list-table-title">제목</th>
                                    <th scope="col" class="board-list-table">작성자</th>
                                    <th scope="col" class="board-list-table">작성일</th>
                                    <th scope="col" class="board-list-table">조회수</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:if test="${empty list}">
								<tr>
									<td colspan="5">조회된 글이 없습니다.</td>
								</tr>
								</c:if>
								
								<c:if test="${!empty list}">
									<c:forEach var="board" items="${list}">
										<tr>
                                    		<td class="board-list-table"><c:out value="${board.boNo}"/></td>
                                   			<td class="boardPostName">
                                   				<c:if test="${board.cid eq '공지'}">
	                                        		<span class="badge bg-faded-danger text-danger fs-xs typeIcon-bl">공지</span>
                                   				</c:if>
                                   				<c:if test="${board.cid eq '자유'}">
	                                        		<span class="badge bg-faded-info text-info fs-xs typeIcon-bl">자유</span>
                                   				</c:if>
                                   				<c:if test="${board.cid eq '후기'}">
	                                        		<span class="badge bg-faded-primary text-primary fs-xs typeIcon-bl">후기</span>
                                   				</c:if>
                                        			<a href="${path}/board/4_boardRead?boNo=${board.boNo}">
                                        				<c:out value="${board.title}"/>
                                        			</a>
                                    		</td>
                                    		<td class="board-list-table"><c:out value="${board.u_nickname}"/></td>
                                    		<td class="board-list-table"><fmt:formatDate type="date" value="${board.boDate}"/></td>
                                    		<td class="board-list-table"><c:out value="${board.readAccount}"/></td>
                               			 </tr>
									</c:forEach>
								</c:if>
                            </tbody>
                        </table>
                        <!-- 게시판 목록 끝 -->
                    </div>
					<!-- 게시판 끝 -->

                    <!-- Pagination 시작 -->
                    <div class="row gy-3 align-items-center paginationBl">
                        <div class="col col-md-4 col-6 order-md-1 order-1">
                        </div>
                        <div class="col col-md-4 col-12 order-md-2 order-3 text-center">
                            <nav aria-label="Page navigation">
                                <ul class="pagination pagination-sm justify-content-end pageNumBl ">
                                
                                	<!-- 처음 페이지로 -->
                                	<li class="page-item">
                                        <a class="page-link" onclick="movePage('${path}/board/4_boardList?page=1');"><i class="ai-chevrons-left"></i></a>
                                    </li>
                                	<!-- 이전 페이지로 -->
                                    <li class="page-item">
                                        <a class="page-link" onclick="movePage('${path}/board/4_boardList?page=${pageInfo.prevPage}');"><i class="ai-chevron-left"></i></a>
                                    </li>
                                    
                                   	<!-- 페이지 목록 -->
                                    <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
                                    	<c:if test="${pageInfo.currentPage == status.current}">
		                                    <li class="page-item active" aria-current="page"><span class="page-link"><c:out value="${status.current}"/><span
		                                                class="visually-hidden">(current)</span></span>
		                                    </li>
                                    	</c:if>
                                    	<c:if test="${pageInfo.currentPage != status.current}">
		                                    <li class="page-item"><a class="page-link" onclick="movePage('${path}/board/4_boardList?page=${status.current}');">
		                                    	<c:out value="${status.current}"/></a>
		                                    </li>
                                    	</c:if>
                                    </c:forEach>
                                    
                                    <!-- 다음 페이지로 -->
                                    <li class="page-item">
                                        <a class="page-link" onclick="movePage('${path}/board/4_boardList?page=${pageInfo.nextPage}');"><i class="ai-chevron-right"></i></a>
                                    </li>
                                    <!-- 마지막 페이지로 -->
                                    <li class="page-item">
                                        <a class="page-link" onclick="movePage('${path}/board/4_boardList?page=${pageInfo.maxPage}');"><i class="ai-chevrons-right"></i></a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
						<!-- 글쓰기 버튼 -->
                        <div class="col col-md-4 col-6 order-md-3 order-2 writeBtnBl">
                        	<c:if test="${loginMember != null}">
                            	<button class="set-button" onclick="location.href='${path}/board/4_boardWrite'">회원 글쓰기</button>
                        	</c:if>
                        </div>
                    </div>
                    <!-- Pagination 종료 -->
                </div>
            </div>
        </div>
        
        <!-- Sidebar toggle button-->
        <button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#sidebarBlog"><i class="ai-layout-column me-2"></i>Sidebar</button>
        
        <script type="text/javascript">
		function movePage(pageUrl){
			var searchValue = document.getElementById("searchValue"); 
			var searchTypes = document.getElementById("searchtype"); 
			if(searchValue.value.length > 0){
				for(var i = 0; i < searchTypes.options.length; i++){
					if(searchTypes.options[i].checked == true){
						searchType = searchTypes[i].value;
					}
				}
				pageUrl = pageUrl + '&searchType=' + searchType + '&searchValue=' + searchValue.value; 
			}
			location.href = encodeURI(pageUrl);	
		}
		</script>
        
    </main>

 	<!-- footer -->
    <%@ include file="../../common/footer.jsp" %>
    
    <!-- Back to top button-->
    <a class="btn-scroll-top" href="#top" data-scroll>
        <svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
            <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10">
            </circle>
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