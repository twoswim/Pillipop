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
    <title>pillipop | boardWrite</title>
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
    <link href="<%=request.getContextPath()%>/resources/css/4_boardWrite.css" rel="stylesheet" type="text/css" />
    <!-- include libraries(jQuery, bootstrap) -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!-- summernote link -->
    <script src="<%=request.getContextPath()%>/resources/summernote-0.8.18-dist/summernote-lite.js"></script>
    <script src="<%=request.getContextPath()%>/resources/summernote-0.8.18-dist/lang/summernote-ko-KR.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/summernote-0.8.18-dist/summernote-lite.css">
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
        <div class="container pb-lg-5 pb-md-4 pb-2 my-5 writeArea-bw">
            <!-- Breadcrumb-->
            <nav aria-label="breadcrumb">
                <ol class="pt-lg-3 pb-lg-4 pb-2 breadcrumb">
                    <li class="breadcrumb-item"><a href="${path}">홈</a></li>
                    <li class="breadcrumb-item">커뮤니티</li>
                    <li class="breadcrumb-item"><a href="${path}/board/4_boardList">게시판</a></li> 
                    <li class="breadcrumb-item presentPage">글쓰기</li>
                </ol>
            </nav>

            <div class="row mb-md-2 mb-xl-4">
                <!-- Blog posts-->
                <form action="${path}/board/4_boardWrite" method="post" enctype="multipart/form-data">
	                <div class="col-xl-8 pe-lg-4 pe-xl-0" style="margin:0 auto;">
	                    <!-- Writing Title -->
	                    <div class="WritingTitle-bw">
	                        <h3>글쓰기</h3>
	                        <input type="hidden" name="u_no" value="${loginMember.u_no}">
	                        <div class="row1-bw">
	                            <div class="TitleTextArea-bw">
	                                <input placeholder="제목을 입력해 주세요." class="TitleTextArea_input" name="title" onfocus="this.placeholder=''" onblur="this.placeholder='제목을 입력해주세요.'" style="overflow: hidden; overflow-wrap: break-word;" required></input>
	                            </div>
	                        </div>
	                        <div class="row2-bw">
	                            <select name="cid" id="writeType-bw" title="카테고리를 설정해 주세요." class="writeType-bw" required>
	                                            <option value="">카테고리를 설정해 주세요.</option>
	                                            <option value="공지">공지</option>
	                                            <option value="자유">자유</option>
	                                            <option value="후기">후기</option>
	                            </select>
								<div class="uploadBox-bw">
	                                <input class="uploadName-bw" name="upfile" value="첨부파일" placeholder="첨부파일">
	                                <label for="file">파일찾기</label>
	                                <input type="file" id="file" name="upfile"/>
	                            </div>
	                        </div>
	                    </div>
	                    <!-- summernote(글 작성) -->
	                    <div class="writeEditor-bw">
	                        <textarea class="summernote" name="boContent" required></textarea>
	                    </div>
	                    <!-- writing buttons -->
	                    <div class="writingBtn-bw" style="display : flex; justify-content: space-between;">
	                        <div class="writingBtn-list">
	                            <button type="button" onclick="location.href='${path}/board/4_boardList'" class="writing-buttonsGolist">목록으로</button>
	                        </div>
	                        <div class="writingBtn-upload">
	                            <button type="submit" class="writing-buttonsEnter">업로드</button>
	                        </div>
	                    </div>
	                    <script>
	                        $('.summernote').summernote({
	                        	placeholder: '내용을 작성하세요.',
	                        	minHeight: 500,
	                            maxHeight: 500,
	                            focus: true,
	                            lang: "ko-KR",
	                            toolbar: [
	                                ['undo', ['undo', 'redo']],
	                                ['style', ['style']],
	                                ['font', ['bold', 'italic', 'underline', 'strikethrough', 'superscript', 'subscript', 'clear']],
	                                ['fontname', ['fontname', 'fontsize', 'fontsizeunit']],
	                                ['color', ['forecolor', 'backcolor']],
	                                ['para', ['ul', 'ol', 'paragraph', 'height']],
	                                ['table', ['table', 'hr']],
	                                ['insert', ['link']],
	                                ['view', ['codeview', 'help']],
	                            ]
	                        });
	                    </script>
	                </div>
	            </form>
            </div>
       	</div>
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