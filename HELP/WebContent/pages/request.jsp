<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../commons/header.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/join.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/join.js"></script>
</head>
<body>
	<div id="container">
		<div class="main_contents">
			<!-- 본문영역 -->
 			진행중...
 			<div style="text-align: center">
			<form method="post" action="addRequest.help">
				<h1>종류</h1>
				<select name="category">
					<option value="category1">카테고리1</option>
					<option value="category2">카테고리2</option>
					<option value="category3">카테고리3</option>
					<option value="category4">카테고리4</option>
					<option value="category5">카테고리5</option>
				</select>
				<br>
				
				제목
				<input type="text">
				<br> 
				
				
				내용<br> 
				질문을 준비해야함.
				
			

			</form>
			</div>
			

		</div>
	</div>
	<%@ include file="../commons/footer.jsp"%>
</body>

</html>