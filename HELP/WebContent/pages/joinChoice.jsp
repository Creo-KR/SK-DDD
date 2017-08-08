<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../commons/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/joinChoice.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/join.css" />
</head>
<body>
	<div id="container">
		<div class="main_contents"   style="margin-left: 15%;">
			<div id="sub-contents">
			<div class="l-box">
				<div id="de-select">
					<div class="select-box-l box-1">
						<h3>일반 회원 가입</h3>
						<p>고수를 통하여 도움을 얻는 목적으로 회원 가입 하는 페이지</p>
						<div class="select-box-s">
							<h4>일반 회원의 권한</h4>
							<p>견적서를 작성하고 고수들을 통해 원하는 분야의 답변을 얻을 수 있습니다. 자세한 내용은 고객센터를 통하여 문의 하시기 바랍니다.</p>
							<div class="btn-box">
								<a href="join.help?m_type=0" class="btn-green">신고하기</a>
							</div>
						</div>
					</div>
					<div class="select-box-l box-2" style="height: 435px;">
						<h3>고수 회원 가입</h3>
						<p>
						<br>고수로서 일반회원에게 고용을 요청할 수 있도록 하는 회원 가입 페이지<br />
							<a href="about">작성된 견적서 조회</a>
						</p>
						<div class="select-box-s" style="width: 430px;">
							<h4>무선서비스(이동통신) 사업자</h4>
							<table class="table-12" style="width: 300px;">
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
								<a href="join.help?m_type=1" class="btn-blue">신고하기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	</div>
	<%@ include file="../commons/footer.jsp"%>
</body>
</html>