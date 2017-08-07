<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><요청서 상세 페이지></h1>
	<table>
		<tr>
			<th>요청서 번호 :</th>
			<th>${requestDetailKey.r_no}</th>
		</tr>
		<tr>
			<th>카테고리 :</th>
			<th>${requestDetailKey.c_no}</th>
		</tr>
		<tr>
			<th>제목 :</th>
			<th>${requestDetailKey.r_title}</th>
		</tr>
		<tr>
			<th>내용 :</th>
			<th>${requestDetailKey.r_content}</th>
		</tr>
		<tr>
			<th>완료여부</th>
			<th>${requestDetailKey.r_active}</th>
		</tr>
		<tr>
			<th>날짜</th>
			<th>${requestDetailKey.r_date}</th>
		</tr>
	</table>
</body>
</html>