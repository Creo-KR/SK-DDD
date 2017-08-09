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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/pwdCheck.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/loginstyle.css" type="text/css" media="all" />
</head>
<body>
	<div id="container">
		<div class="main_contents">
			<!-- 본문영역 -->

			<div class="contents_inner">
				<div class="xans-element- xans-member xans-member-join ">

					<h3 style="font-size: 30px; font-weight: bold; color: black;">정보를 수정하기 위해 비밀번호를 입력하세요</h3>
					<br><br>
			     <div class="contact-form">
					 <div class="signin">
					     <form action="updateMypage.help" method="post">
						      <p>Password</p>
						      <input type="password" id="m_pwd" name="m_pwd" class="m_pwd" value=""/>
							  <p>Password Confirm</p>
							  <input type="password" id="user_passwd_confirm" name="user_passwd_confirm" class="pass" value=""/>
					          <span id="errorMsg"></span>
					          <input type="submit" id="loginButton" value="Confirm" />
						 </form>
					 	</div>
					 </div>
					</div>
					<br><br><br><br>
				</div>
			</div>

		</div>
		<%@ include file="../commons/footer.jsp"%>
</body>

</html>
