<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../commons/header.jsp"%>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Dark Login Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, SonyErricsson, Motorola Web Design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //For-Mobile-Apps -->
<!-- Style --> <link rel="stylesheet" href="${pageContext.request.contextPath}/css/loginstyle.css" type="text/css" media="all" />
</head>
<script type="text/javascript">
$(document).ready(function() {
	var a = '${CHECK}';
	if(a == "CHECK"){
		alert("아이디 또는 비밀번호가 틀렸습니다. 다시 입력해 주세요.");
	}
});
</script>
<body>
<div id="container">
		<div class="main_contents">
<h1 style="font-weight: bold; color: #555;">LOGIN</h1>
     <div class="contact-form">
	 <div class="signin">
     <form action="loginProc.help" method="post">
	      <p>UserID</p>
	      <input type="text" id="m_id" name="m_id" class="user" value="Enter Here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Here';}" />
		  <p>Password <a href="#">Forgot your password?</a></p>
		  <input type="password" id="m_pwd" name="m_pwd" class="pass" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" />
          <input type="submit" id="loginButton" value="Login" />
	 </form>
	 </div>
	 </div>
	 </div>
	 </div>
	 <br><br><br><br>
	<%@ include file="../commons/footer.jsp"%>
</body>

</html>