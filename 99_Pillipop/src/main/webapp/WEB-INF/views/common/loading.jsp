<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
	
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
<!-- Page loading spinner-->
	<div class="page-loading active" style="z-index: 999999">
        <div class="page-loading-inner">
            <div style="margin-bottom: 30px;">
                <img src="${path}/resources/img/2_img/loading/loading.gif">
            </div>
            <span>
                <h1 style="color: #d3b7d8;">
                    <p>필리필리필리팝-♪</p>
                    <p>필리필리 POP! POP!</p>
                </h1>
            </span>
        </div>
	</div>
