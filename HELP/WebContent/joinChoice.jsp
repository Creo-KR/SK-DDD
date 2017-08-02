<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="commons/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/joinChoice.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/join.css" />
</head>
<body>
	<div id="container">
		<div class="main_contents">
			<div id="sub-contents">
			<div class="l-box">
				<div id="de-select">
					<div class="select-box-l box-1">
						<h3>일반신고 접수</h3>
						<p>불법TM을 신고하여 주시기 바랍니다.</p>
						<div class="select-box-s">
							<h4>불법TM신고</h4>
							<p>영업점의 불법행위를 증빙할 수 있는 자료를 첨부하시어 신고 접수하시면 조사에 도움이 됩니다.</p>
							<div class="btn-box">
								<a href="${pageContext.request.contextPath}/join.jsp?m_type=0" class="btn-green">신고하기</a>
							</div>
						</div>
					</div>
					<div class="select-box-l box-2">
						<h3>포상신고 접수</h3>
						<p>
						<br>※ 불법TM신고센터 참여 사업자에 한하여 시행하고 있습니다.<br />
							<a href="about">* 신고센터 참여사업자 확인</a>
						</p>
						<div class="select-box-s">
							<h4>무선서비스(이동통신) 사업자</h4>
							<table class="table-1">
								<tr>
									<th>MNO</th>
									<td>SKT, KT, LG U+</td>
								</tr>
								<tr>
									<th>MVNO<span>(알뜰폰)</span></th>
									<td>CJ헬로모바일, KCT, 미디어로그, KT M 모바일, 티브로드_모바일</td>
								</tr>
							</table>
							<div class="btn-box">
								<a href="${pageContext.request.contextPath}/join.jsp?m_type=1" class="btn-blue">신고하기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	</div>
	<%@ include file="commons/footer.jsp"%>
</body>
</html>