<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
/* 폰트설정 */
.t3 {
	position: relative;
	font-size: 13px;
	font-family: 'Nanum Gothic'
}

.t3 h3 {
	font-size: 1.69em;
	margin-bottom: 0.75em;
	color: #323232;
	letter-spacing: -0.05em;
}

.t3 .tblWrap {
	width: 100%;
	overflow: hidden;
}

.t3 table {
	width: 90% !important;
	letter-spacing: -0.05em;
	border-top: 3px solid #37315d;
	border-bottom: 2px solid #e2e2e2;
	border-spacing: 0;
	border-collapse: collapse;
	line-height: 18px;
}

.t3 thead tr:first-child th {
	border-top: 0;
}

.t3 th, .t3 td {
	padding: 10px 0;
	font-weight: 400;
	text-align: center;
	border-top: 1px solid #e2e2e2;
	border-left: 1px solid #e2e2e2;
}

.t3 thead tr:first-child th:first-child, .t3 td.ty3 {
	border-left: 0;
}

.t3 th {
	background: #f4f4f4;
}

.t3 th.ty1 {
	background: #f4efe4;
}

.t3 td.ty1 {
	background: #fcf5e9;
}

.t3 td.ty2 {
	color: #005c9a;
}

.t3 td.ty3 {
	color: #e72744;
	font-weight: bold
}

.t3 td.ty4 {
	color: #e72744;
}
</style>
</head>



<body>

	<link
		href="http://ts.daumcdn.net/custom/blog/0/606/skin/images/nanumgothic.css"
		rel="stylesheet" type="text/css">
	<div class="t3">
		<h1>
			<요청서 상세 페이지>
		</h1>

		<div class="tblWrap">
			<table>
				<tr>
					<th style="width: 200px">요청서 번호 :</th>
					<td class="ty2">${requestDetailKey.r_no}</td>
				</tr>
				<tr>
					<th>카테고리 :</th>
					<c:if test="${requestDetailKey.c_no == 1}">
						<td class="ty2" data-title="Name">피아노</td>
					</c:if>
					<c:if test="${requestDetailKey.c_no == 2}">
						<td class="ty2" data-title="Name">이사</td>
					</c:if>
					<c:if test="${requestDetailKey.c_no == 3}">
						<td class="ty2" data-title="Name">웹 개발</td>
					</c:if>
					<c:if test="${requestDetailKey.c_no == 4}">
						<td class="ty2" data-title="Name">포토 샵</td>
					</c:if>
					<c:if test="${requestDetailKey.c_no == 5}">
						<td class="ty2" data-title="Name">결혼</td>
					</c:if>

				</tr>
				<tr>
					<th>제목 :</th>
					<td class="ty2">${requestDetailKey.r_title}</td>
				</tr>
				<tr>
					<th>내용 :</th>
					<td class="ty2"><c:forEach var="content"
							items="${contentSplit}">
							<table style="border-style: hidden;">
								<tr>
									<td>${content}</td>
								</tr>
							</table>
						</c:forEach></td>
				</tr>
				<tr>
					<th>완료여부</th>
					<c:if test="${requestDetailKey.r_active == 1}">
						<td class="ty2">대기중</td>
					</c:if>
					<c:if test="${requestDetailKey.r_active == 0}">
						<td class="ty2">진행중</td>
					</c:if>
				</tr>
				<tr>
					<th>날짜</th>
					<td class="ty2">${requestDetailKey.r_date}</td>
				</tr>
			</table>
		</div>

		<div style="width: 100%; text-align: center">
			<c:if test="${sessionType==1}">
				<button onclick="chat_go()"
					style="font-weight: bold; margin-left: 15px; margin-top: 10px">
					신청하기</button>
			</c:if>
		</div>


		<script>
		
			var chat_go = function() {
				window.location = "  ";
			}
		</script>






	</div>
</body>
</html>