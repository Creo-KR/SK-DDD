<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>H.E.L.P</title>
</head>
<body>
	<div>
		<h1><요청서 등록 페이지></h1>
		<form method="post" action="addRequest.help">
			<table>
				<tr>
					<td>요청서 번호 :</td>
					<td><input type="text" name="r_no"></td>
				</tr>
				<tr>
					<td>카테고리 번호 :</td>
					<td><input type="text" name="c_no"></td>
				</tr>
				<tr>
					<td>요청자 no :</td>
					<td><input type="text" name="r_writer"></td>
				</tr>
				<tr>
					<td>제목 :</td>
					<td><input type="text" name="r_title"></td>
				</tr>
				<tr>
					<td>내용 :</td>
					<td><input type="text" name="r_content"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="등록"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>