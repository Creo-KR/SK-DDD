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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/join.js"></script>
</head>
<body>
	<div id="container">
		<div class="main_contents">
			<!-- 본문영역 -->
			<form action="loginProc.help" method="post">
			<div class="contents_inner">
				<div class="xans-element- xans-member xans-member-join ">


					<h3 style="font-size: 30px; font-weight: bold;">Login</h3>
					<div class="boardWrite">
						<table border="1" summary="">
							<tbody>
								<tr>
									<th scope="row" style="font-size: 18px;">ID</th>
									<td><input id="m_id" name="m_id" type="text"
										height="30px" /> <br>
										</td>
										
								</tr>
								<tr>
									<th scope="row" style="font-size: 18px;">PASSWORD</th>
									<td><input id="m_pwd" name="m_pwd" maxlength="16"
										value="" type="password" /> <br />
										
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<br>
					<span class="btnArea center smp-btn-reg">
						<a><button id="loginButton" type="submit" style="cursor: pointer;">Login</button></a>
					</span>
				</div>
				
				</div>
			</form>
			</div>
		</div>
	<%@ include file="../commons/footer.jsp"%>
</body>

</html>