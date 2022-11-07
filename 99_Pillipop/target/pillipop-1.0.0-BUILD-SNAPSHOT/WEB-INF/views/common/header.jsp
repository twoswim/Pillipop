<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="euc-kr">
    <header class="navbar navbar-expand-lg fixed-top bg-light font-NanumB" style="border-radius: 0px !important; display: block; z-index: 9999;" container>
        <div class="container">
            <a class="navbar-brand font-NotoSerif-B" href="#">
                <span class="text-primary flex-shrink-0 me-2">
                    <img src="${path}/resources/img/0_headerfooter/logo.png" style="width: 60px;"></span>Pillipop</a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse1"><span class="navbar-toggler-icon"></span></button>
            <nav class="collapse navbar-collapse" id="navbarCollapse1">
                <ul class="navbar-nav me-auto ">
                    <li class="nav-item"><a class="nav-link" href="#">추천성분</a></li>

                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">의약품</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">일반검색</a></li>
                            <li><a class="dropdown-item" href="#">낱알검색</a></li>
                        </ul>
                    </li>
                    <li class="nav-item "><a class="nav-link" href="#">약국검색</a></li>
                    <li class="nav-item "><a class="nav-link" href="#">스토어</a></li>
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">커뮤니티</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">게시판</a></li>
                            <li><a class="dropdown-item" href="#">고객센터</a></li>
                            <li><a class="dropdown-item" href="#">매거진</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">마이페이지</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">내 정보 수정</a></li>
                            <li><a class="dropdown-item" href="#">내 활동</a></li>
                            <li><a class="dropdown-item" href="#">찜</a></li>
                            <li><a class="dropdown-item" href="#">내 복용상황</a></li>
                        </ul>
                    </li>
                </ul>
                <button class="common-bluegreen " style="width: 6rem; margin-right: 10px; ">로그인</button>
                <button class="common-black " style="width: 7rem; ">가입하기</button>

            </nav>
        </div>
    </header>