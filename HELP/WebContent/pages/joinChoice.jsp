<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../commons/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/joinChoice.css?ver=5" />
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
								<a href="join.help?m_type=0" class="btn-green">가입하기</a>
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
							<h4>카테고리 종류</h4>
							<table class="table-12" style="width: 300px;">
								<tr>
									<th>생활</th>
									<td>이사, 피아노</td>
								</tr>
								<tr>
									<th>프로젝트</th>
									<td>웹 개발, 포토샵, 결혼</td>
								</tr>
								<tr>
									<th>기타</th>
									<td>이 외에도 다양한 카테고리가 있습니다</td>
								</tr>
							</table>
							<div class="btn-box">
								<a href="join.help?m_type=1" class="btn-blue">가입하기</a>
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