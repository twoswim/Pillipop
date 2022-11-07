<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

    <header class="navbar navbar-expand-lg fixed-top bg-light font-NanumB" style="border-radius: 0px !important; display: block; z-index: 9999;">
        <div class="container">
            <a class="navbar-brand font-NotoSerif-B" href="${path}">
                <span class="text-primary flex-shrink-0 me-2">
                    <img src="${path}/resources/img/0_S_headerfooter/Store_logo.png" style="height: 42px;"></span>Pillipop</a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse1"><span class="navbar-toggler-icon"></span></button>
            <nav class="collapse navbar-collapse" id="navbarCollapse1">
                <ul class="navbar-nav me-auto ">
                    <li class="nav-item"><a class="nav-link" href="#">추천성분</a></li>

                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">의약품</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="${path}/medicine/list">일반검색</a></li>
                            <li><a class="dropdown-item" href="${path}/medicine/list2">낱알검색</a></li>
                        </ul>
                    </li>
                    <li class="nav-item "><a class="nav-link" href="${path}/pharmacy/main">약국검색</a></li>
                    <li class="nav-item "><a class="nav-link" href="${path}/health/Store_main">스토어</a></li>
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">커뮤니티</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="${path}/board/4_boardList">게시판</a></li>
                            <li><a class="dropdown-item" href="${path}/board/4_service">고객센터</a></li>
                            <li><a class="dropdown-item" href="${path}/news/newslist">매거진</a></li>
                        </ul>
                    </li>
                    <c:if test="${loginMember != null}">
	                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">마이페이지</a>
	                        <ul class="dropdown-menu">
	                            <li><a class="dropdown-item" href="${path}/myPage/profile">내 정보 수정</a></li>
	                            <li><a class="dropdown-item" href="${path}/board/myPage/myActivities">내 활동</a></li>
	                            <li><a class="dropdown-item" href="${path}/medicine/mLike">찜</a></li>
	                            <li><a class="dropdown-item" href="${path}/myPage/myPillipop">내 복용상황</a></li>
	                            <li><a class="dropdown-item" href="${path}/health/basketList?no=${loginMember.u_no}">장바구니</a></li>
	                            <li><a class="dropdown-item" href="${path}/health/mypage_order?no=${loginMember.u_no}">주문확인</a></li>
	                            
	                        </ul>
	                    </li>
                    </c:if>
                </ul>
                <c:if test="${loginMember == null}">
	                <button class="common-bluegreen" style="width: 6rem; margin-right: 10px;" onclick="location.href='${path}/loginp'">로그인</button>
	                <button class="common-black" style="width: 7rem;" onclick="location.href='${path}/signupp'">가입하기</button>
				</c:if>
				<c:if test="${loginMember != null}">
					<a class="nav-link position-relative fs-4 pe-3" href="${path}/health/basketList?no=${loginMember.u_no}"><i class="ai-cart"></i></a>
					<c:out value="${loginMember.u_nickname}님 환영합니다."></c:out>
					<button class="common-bluegreen" style="width: 6rem; margin-right: 10px; margin-left: 10px;" onclick="location.href='${path}/logout'">로그아웃</button>
				</c:if>
            </nav>
        </div>
    </header>