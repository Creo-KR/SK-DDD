<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://s.codepen.io/assets/libs/modernizr.js"
	type="text/javascript"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="css/requestList.css">
</head>
<body>
	<div>
		<%-- 		<%@ include file="commons/header.jsp"%> --%>
	</div>
	<div>
		<div id="demo">
			<div class="table-responsive-vertical shadow-z-1">
				<h1>
					<요청서 목록> - 대기중 
				</h1>
				<table id="table" class="table table-hover table-mc-light-blue">
					<thead>
						<tr>
							<th>요청서 번호</th>
							<th>카테고리 번호</th>
							<th>제목</th>
							<th>완료여부</th>
							<th>날짜</th>
						</tr>
					</thead>
					<c:forEach var="request" items="${requestKey}">
						<tbody>
							<tr>
								<td data-title="ID"><a
									href="getRequestDetail.help?r_no=${request.r_no}">${request.r_no}</a></td>
								<td data-title="Name">${request.c_no}</td>
								<td data-title="Link">${request.r_title}</td>
								<c:if test="${request.r_active ==1 }">
									<td data-title="Status">대기중</td>
								</c:if>
								<td data-title="Status">${request.r_date}</td>

							</tr>
						</tbody>
					</c:forEach>
				</table>

</body>
</html>