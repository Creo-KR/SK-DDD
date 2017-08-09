<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/common.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/board.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/layout.css?ver=1" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/contents.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/vendor.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/print-preview.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/sample.css" media="screen" />
<!-- <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" /> -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" type="text/css"
	media="screen" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/jquery.autocomplete.css" type="text/css"
	media="screen" />
<!-- <script src='/sptier0/sptier0.js'></script>
<script src='/sptier0/sptier0-ajax.js'></script>
<script src='/sptier0/sptier0-window.js'></script> -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/m_design.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.jplayer.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/TweenMax.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/common.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.print-preview.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.autocomplete.js"></script>

<!-- header start -->

<!--로딩 영역-->
<div class="loader" style="display: none;" id="loding01"></div>
<div class="loading_txt" style="display: none" id="load_txt">처리중입니다.</div>
<div class="shadow2" id="loding02">가림영역</div>
<!--로딩 영역-->


<div id="header">
	<!--  class="gnbover" -->
	<div class="shadow">가림영역</div>
	<div id="header_inner">
		<a href="/HELP"><img src="${pageContext.request.contextPath}/images/help.png" width="250px" height="110px" style="margin-top: 20px"/></a>
		<!--search start-->

		<div id="util">
			<c:if test="${sessionScope.COUNT != 1}">
				<div class="certify" id="idlogin">
					<a href="loginForm.help" style="font-family: 'Cooper Black'; font-size: 18px;">LOGIN</a>
				</div>
				<a href="joinChoice.help" class="eng" style="font-family: 'Cooper Black'; font-size: 18px;">SIGN UP</a>
			</c:if>
			<c:if test="${sessionScope.COUNT eq 1}">
				<a style="float: left; font-family: 'Cooper Black'; font-size: 18px;" >${sessionScope.UNAME}님 어서오세요!</a>
				<a href="mypageDivision.help" class="eng" style="float: left; font-family: 'Cooper Black'; font-size: 18px;">MY
					PAGE</a>
					<a href="#" onclick="logout(); return false;" style="font-family: 'Cooper Black'; font-size: 18px;">LOGOUT</a>
			</c:if><a onclick="divOpen('chat_list')" style="font-family: 'Cooper Black'; font-size: 18px;">CHAT</a>
		</div>

		<script type='text/javascript'>
		//<![CDATA[
		
			function countdown(elementName, minutes, seconds) {
				var element,
					endTime,
					hours,
					mins,
					msLeft,
					time;
		
				function twoDigits(n) {
					return (n <= 9 ? "0" + n : n);
				}
		
				function updateTimer() {
					msLeft = endTime - (+new Date);
					if (msLeft < 1000) {
						if (confirm("통합인증을 연장하시겠습니까?") == true) {
							document.getElementById('check_ifm').src = '/certification/session_chk.asp?check_type=renew';
							return false;
						} else {
							document.getElementById('check_ifm').src = '/certification/session_chk.asp?check_type=logout';
							return false;
						}
					} else {
						time = new Date(msLeft);
						hours = time.getUTCHours();
						mins = time.getUTCMinutes();
						element.innerHTML = (hours ? hours + ':'
						+ twoDigits(mins) : mins)
						+ ':' + twoDigits(time.getUTCSeconds());
						setTimeout(updateTimer, time.getUTCMilliseconds() + 500);
					}
				}
		
				element = document.getElementById(elementName);
				endTime = (+new Date) + 1000 * (60 * minutes + seconds) + 500;
				updateTimer();
			}
		
			function logout() {
				if (confirm("로그아웃을 하시겠습니까?") == true) {
					//document.getElementById('check_ifm').src = '/certification/session_chk.asp?check_type=logout';
					location.href = "${pageContext.request.contextPath}/logout.help";
					return false;
				}
			}
		
			function renew() {
				if (confirm("통합인증을 연장하시겠습니까?") == true) {
					document.getElementById('check_ifm').src = '/certification/session_chk.asp?check_type=renew';
					return false;
				}
			}
		
			//#####문자체크
			function char_chk(str, chk) {
				for (i = 0; i < str.length; i++) {
					c = str.charAt(i);
					if (c == chk) {
						return false;
					}
				}
			}
		
			function topsearchSb(evt) {
				var m_Sp = /[$\\@\\\#%\^\&\*\(\)\[\]\+\_\{\}\`\~\=\|\<\>]/;
				var m_val = $("form[name=contactfrm]").find("input[name=stxt]")
					.val();
				var strLen = m_val.length;
				var m_char = m_val.charAt((strLen) - 1);
		
				if (m_char.search(m_Sp) != -1) {
					alert("특수문자는 사용할수없습니다.");
					$("form[name=contactfrm]").find("input[name=stxt]").val("");
					$("form[name=contactfrm]").find("input[name=stxt]").focus();
					return false;
				}
		
				if (char_chk($("form[name=contactfrm]")
						.find("input[name=stxt]").val(), "'") == false) {
					alert("\n검색어는 '을 포함할 수 없습니다.");
					$("form[name=contactfrm]").find("input[name=stxt]").val("");
					$("form[name=contactfrm]").find("input[name=stxt]").focus();
					return;
				}
		
				var keyCode = evt.which ? evt.which : event.keyCode;
				if (keyCode == 13) {
		
					sbsb();
		
				}
			}
		
		
			//]]>
		</script>

		<iframe name="check_ifm" id="check_ifm" style="display: none"
			title="blind"></iframe>
		<!--search end-->

		<!--top_menu start-->




	</div>
	</li>












	</ul>
</div>

<script type='text/javascript'>
	//gnb메뉴 show
	$('#gnb > ul > li').hover(function() {
		$('#header').toggleClass('gnbover');
		$(this).children('.submenu').toggle();
		$(this).find('.submenu_inner').stop().fadeToggle(300);
		$(this).children('a').toggleClass('active');
	})

	/* $('#gnb > ul > li > a').focus(function(){
			$('#header').addClass('gnbover');
			$(this).parent().children('.submenu').toggle();
			$(this).parent().find('.submenu_inner').stop().fadeToggle(300);

	}) */
</script>
<!--top_menu end-->


</div>
</div>

<script>
	$(function() {

		$('.print').printPreview(".contents_inner", "1");

		// Add keybinding (not recommended for production use)
		$(document).bind('keydown', function(e) {
			var code = (e.keyCode ? e.keyCode : e.which);
		});
	});

	function lodingbar() {
		document.getElementById('loding01').style.display = "block";
		document.getElementById('loding02').style.display = "block";
	//document.getElementById('load_txt').style.display = "block";
	}
</script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>

<!--//header end -->

<!-- //header -->
<div class="dark_window"></div>
<%@ include file="chat.jsp"%>