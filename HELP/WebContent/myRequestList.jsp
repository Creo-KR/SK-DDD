<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><요청서 목록> - 대기중</h1>
	<table>
		<tr>
			<th>요청서 번호</th>
			<th>카테고리 번호</th>
			<th>제목</th>
			<th>완료여부</th>
			<th>날짜</th>
		</tr>
	<c:forEach var="request" items="${requestKey.active}">
	<tr>
		<th><a href="getRequestDetail.help?r_no=${request.r_no}">${request.r_no}</a></th>
		<th>${request.c_no}</th>
		<th>${request.r_title}</th>
		<th>${request.r_active}</th>
		<th>${request.r_date}</th>
	</tr>
	</c:forEach>
	</table>
	<br>
	<h1><요청서 목록> - 진행중</h1>
	<table>
		<tr>
			<th>요청서 번호</th>
			<th>카테고리 번호</th>
			<th>제목</th>
			<th>완료여부</th>
			<th>날짜</th>
		</tr>
	<c:forEach var="request" items="${requestKey.inactive}">
	<tr>
		<th><a href="getRequestDetail.help?r_no=${request.r_no}">${request.r_no}</a></th>
		<th>${request.c_no}</th>
		<th>${request.r_title}</th>
		<th>${request.r_active}</th>
		<th>${request.r_date}</th>
	</tr>
	</c:forEach>
	</table>
</body>
</html>