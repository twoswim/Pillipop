<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
    
<section id = "content">
	<h3>홈</h3>
	<a href="${path}/medicine/list"><button></button></a>
	<a href="${path}/medicine/list2"><button></button></a>
</section>

