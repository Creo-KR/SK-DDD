<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/common.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/board.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/layout.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/contents.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css?ver=1" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/print-preview.css"
	media="screen" />


<script src='/sptier0/sptier0.js'></script>
<script src='/sptier0/sptier0-ajax.js'></script>
<script src='/sptier0/sptier0-window.js'></script>
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
		<a href="/HELP"><h1>H.E.L.P.</h1></a>
		<!--search start-->

		<div id="util">
		<c:if test="${sessionScope.COUNT != 1}">
			<div class="certify" id="idlogin">
					<a href="loginForm.help">LOGIN</a>
			</div>
			<a href="joinChoice.help" class="eng">SIGN UP</a>
			</c:if>

			<c:if test="${sessionScope.COUNT eq 1}">
			<a style="float: left;">${sessionScope.UNAME}님 어서오세요!</a>
			<a href="#" class="eng" style="float: left;">MY PAGE</a>
			<div class="certify logon" id="idlogout" style="width: 80px">
				<a href="#" onclick="logout(); return false;">LOGOUT</a>
			</div>
			</c:if>

			<a href="/kor/subpage/contents.asp?cn=6O5VSISW&ln=P4CEDQYK&sb=5MSNIAR0&tb=59Q7R5X#sitemap"
				class="site">SITEMAP</a>
			<div class="search_area">
				<form
					action="/kor/subpage/contents.asp?cn=5AQWDUQC&amp;ln=2JHTTETB&amp;sb=61ZTM0KX&amp;tb=O24R5WZ"
					name="contactfrm" id="contactfrm" method="post">
					<input type="text" id="searchtext" name="stxt"
						onkeyup="topsearchSb(event);" maxlength="10" title="검색어 입력" /> <a
						href="#" onclick="sbsb(); return false;">search</a>
				</form>
			</div>
		</div>

		<script type='text/javascript'>
			//<![CDATA[

			function countdown(elementName, minutes, seconds) {
				var element, endTime, hours, mins, msLeft, time;

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
					location.href="${pageContext.request.contextPath}/logout.help";
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


		<div id="gnb">
			<ul>









			
								<li><a
									href="/kor/subpage/contents.asp?cn=VTW780ZD&amp;ln=MM0Y482B&amp;sb=BENK49KO&amp;tb=2M77KF6">정보공개청구</a>

								</li>


								<li><a
									href="/kor/subpage/contents.asp?cn=6MKYPITT&ln=3BHSUG7D&sb=0Y22DEE5&tb=XMFQDUF"
									target="_self" title="">공공데이터 개방</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=T92EL42S&ln=FD72SGUN&sb=PE20RI8D&tb=AFFIS5P"
									target="_self" title="">사업실명제</a></li>


							</ul>
							<div class="sub_quick">
								<a
									href="/kor/subpage/contents.asp?cn=9VET0S7R&ln=0MM9U6U2&sb=TZH6XZ0F&tb=VTR7OOJ"
									class="quick01">발전용어검색</a> <a
									href="/kor/subpage/contents.asp?cn=BEP7U83O&ln=QM0XE00M&sb=TQ5IZPX9&tb=4GM4DAT"
									class="quick02">질문과 답변</a>
							</div>
						</div>

					</div></li>





				<li><a href="#" onclick="return false;"> 고객센터 </a>

					<div class="submenu" style="display: none;">
						<div class="submenu_inner custom">
							<ul>

								<li><a
									href="/kor/subpage/contents.asp?cn=55GXSZ3W&amp;ln=EHWNUQKN&amp;sb=G32QE25U&amp;tb=WOEGHP8"
									target="_self" title="">EWP에 바란다</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=J1S3XTS6&amp;ln=3V7EOZJM&amp;sb=WTUJKS57&amp;tb=AY73906"
									target="_self" title="">고객 제안방</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=V6V25JGP&amp;ln=TBXZM2LI&amp;sb=J0UTZYGS&amp;tb=6DP9QZA">공지사항</a>

								</li>


								<li><a
									href="/kor/subpage/contents.asp?cn=BEP7U83O&amp;ln=QM0XE00M&amp;sb=TQ5IZPX9&amp;tb=4GM4DAT">질문과
										답변</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=7JT6ZMHV&amp;ln=CKP4UFB0&amp;sb=HJ9H37ZE&amp;tb=VSY60WA"
									target="_self" title="">개인정보권리행사</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=NEICQMQC&amp;ln=OT7VUPRY&amp;sb=XGT2K0V1&amp;tb=ONMEKGV"
									target="_self" title="">발전소 견학 및 출입</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=T8412GVY&amp;ln=WIC0UJWJ&amp;sb=7URTR9SA&amp;tb=PN4BMYF"
									target="_self" title="">본사시설물</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=431WPVKZ&amp;ln=1VPHMH0C&amp;sb=AGFDAYNT&amp;tb=9H87AWM"
									target="_self" title="">본사 웨딩홀</a></li>


							</ul>
							<div class="sub_quick">
								<a
									href="/kor/subpage/contents.asp?cn=8MXS7N74&ln=0TC5U7VV&sb=8JNAST1Q&tb=75UKJ6W"
									class="quick07">발전사업</a> <a
									href="/kor/subpage/contents.asp?cn=PV57U5FA&ln=7GW2H80R&sb=W6P6YQ1J&tb=YDPC6GD"
									class="quick08">건설현황</a>
							</div>
						</div>

					</div></li>





				<li><a href="#" onclick="return false;"> 기업지원센터 </a>

					<div class="submenu" style="display: none;">
						<div class="submenu_inner support">
							<ul>

								<li><a
									href="/kor/subpage/contents.asp?cn=0CLFOCYG&amp;ln=VBMXU9FP&amp;sb=P5L0WLIV&amp;tb=8TDCBM6"
									target="_self" title="">입찰정보</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=ARKRXUOJ&amp;ln=M90ZY6YD&amp;sb=7VO1453D&amp;tb=ZULXSIR"
									target="_self" title="">수의계약 체결현황</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=SJFKC4C5&amp;ln=K7W7KDCE&amp;sb=82CETL6R&amp;tb=ZKB3BTX">EWP
										SRM</a></li>


								<li><a href="https://together.ewp.co.kr/main/main.asp"
									target="_blank" title="">중소기업동반성장센터</a></li>


								<li><a href="http://cafe.naver.com/biofuelcommunity"
									target="_blank" title="">바이오매스 커뮤니티</a></li>


								<li><a href="https://ewp.co.kr/kor/consolidation/login.asp"
									target="_blank" title="">연결결산 지원센터</a></li>


								<li><a
									href="https://one-click.ewp.co.kr:9043/WebContent/jsp/main"
									target="_blank" title="">신재생에너지</a></li>


								<li><a
									href="https://together.ewp.co.kr/subpage/contents.asp?cd_cn=0S64&cd_tp=7IX1&cd_ln=3ITG&cd_fl=7J92&cd_sb=5A0Q&cd_mu=JCTZ&cd_tb=8NQP&cd_te=UBY&cd_ta=sub&cd_ya=&cd_mn=&cd_dy="
									target="_blank" title="">연구개발</a></li>


							</ul>
							<div class="sub_quick">
								<a
									href="/kor/subpage/contents.asp?cn=PNMJLOMH&ln=RII0E5YO&sb=S97HUTHX&tb=UH3X76Z"
									class="quick03">하도급 승인</a> <a
									href="/kor/subpage/contents.asp?cn=9UCFV062&ln=6NUHGNIP&sb=BKLC6YPJ&tb=0SPKW6P"
									class="quick04">사전입찰안내</a>
							</div>
						</div>

					</div></li>





				<li><a href="#" onclick="return false;"> 경영공시 </a>

					<div class="submenu" style="display: none;">
						<div class="submenu_inner business">
							<ul>

								<li><a
									href="/kor/subpage/contents.asp?cn=CPNX41QJ&amp;ln=WZ97HU3O&amp;sb=WUMOXJK3&amp;tb=8IIFL4I">경영공시
										목록</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=FH7IIE2C&amp;ln=LZ6O77EJ&amp;sb=YPYY92EF&amp;tb=L9HNGZP"
									target="_self" title="">경영현황</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=H5PGB2TT&amp;ln=HMADBHVB&amp;sb=E7YDM16R&amp;tb=C16QT6D"
									target="_self" title="">기관운영</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=2AMQHPG5&amp;ln=6Y3GIJSD&amp;sb=GY14DYZL&amp;tb=7AV0K1L"
									target="_self" title="">주요 재무정보</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=O1MY7EVB&amp;ln=8V269MH7&amp;sb=EO43UDA4&amp;tb=V1DFNRB"
									target="_self" title="">대내외평가</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=L7BGXEBU&amp;ln=HKOF7GW8&amp;sb=TE3R3SFJ&amp;tb=OBLKXTI"
									target="_self" title="">사업소 경영공시</a></li>


								<li><a
									href="http://alio.go.kr/popReportTerm.do?apbaId=C0066&reportFormRootNo=63701"
									target="_blank" title="">복리후생 8대 항목</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=YSJPGY6M&amp;ln=58P9ZBWP&amp;sb=6XK708O9&amp;tb=TXPJ8GZ"
									target="_self" title="">기타</a></li>


							</ul>
							<div class="sub_quick">
								<a
									href="/kor/subpage/contents.asp?cn=4WCV3O3I&ln=MEB3M1RP&sb=LBKU935H&tb=IY80D5J"
									class="quick05">자체감사결과</a> <a
									href="/kor/subpage/contents.asp?cn=4K7LZYE8&ln=MM2NIT5M&sb=6BFLZU38&tb=3L3X3LA"
									class="quick06">규정</a>
							</div>
						</div>

					</div></li>





				<li><a href="#" onclick="return false;"> 지속가능경영 </a>

					<div class="submenu" style="display: none;">
						<div class="submenu_inner manage">
							<ul>

								<li><a
									href="/kor/subpage/contents.asp?cn=7Y82307Z&amp;ln=H479Q0ZU&amp;sb=29S0B9SD&amp;tb=9SHT9I9"
									target="_self" title="">환경경영</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=A9L57I6K&amp;ln=PJR9KVEJ&amp;sb=VEMPKCZ6&amp;tb=AH6P0CP"
									target="_self" title="">윤리경영</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=NKPRJ3P6&amp;ln=JV8B3DPE&amp;sb=D6APQE41&amp;tb=EN4HQVT"
									target="_self" title="">사회공헌</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=WY31ITLE&amp;ln=EF25C832&amp;sb=R7RNO7P6&amp;tb=5XPIAAG"
									target="_self" title="">보고서</a></li>


							</ul>
							<div class="sub_quick">
								<a
									href="/kor/subpage/contents.asp?cn=VPMVKWP1&ln=414G0GR3&sb=6P19F73Y&tb=O5GTMNC"
									class="quick09">윤리경영소식</a> <a
									href="/kor/subpage/contents.asp?cn=NKPRJ3P6&ln=JV8B3DPE&sb=D6APQE41&tb=EN4HQVT"
									class="quick10">사회봉사단소개</a>
							</div>
						</div>

					</div></li>





				<li><a href="#" onclick="return false;"> 사이버홍보실 </a>

					<div class="submenu" style="display: none;">
						<div class="submenu_inner advertise">
							<ul>

								<li><a
									href="/kor/subpage/contents.asp?cn=8B073MG0&amp;ln=51SG246L&amp;sb=4F3LZV1D&amp;tb=W7ADTHM"
									target="_self" title="">동서뉴스</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=NQNNRKQR&amp;ln=3E3ESGTP&amp;sb=609EK2IH&amp;tb=FYV5XRV&amp;taborder=1"
									target="_self" title="">영상자료</a></li>


								<li><a href="https://www.facebook.com/ewp.powerian"
									target="_blank" title="">SNS(facebook)</a></li>


								<li><a href="https://twitter.com/withewp" target="_blank"
									title="">SNS(Twitter)</a></li>


							</ul>
							<div class="sub_quick">
								<a
									href="/kor/subpage/contents.asp?cn=8B073MG0&ln=51SG246L&sb=4F3LZV1D&tb=W7ADTHM"
									class="quick11">보도자료</a> <a
									href="/kor/subpage/contents.asp?cn=FQJ8DWGM&ln=OI6V418Y&sb=J9E8EQ8B&tb=EIYOXWX"
									class="quick12">홍보영상</a>
							</div>
						</div>

					</div></li>





				<li>

					<div class="submenu" style="display: none;">
						<div class="submenu_inner company">
							<ul>

								<li><a
									href="/kor/subpage/contents.asp?cn=JZ75USU3&amp;ln=I2CS5QSE&amp;sb=R55YFXSD&amp;tb=2CWMVPO"
									target="_self" title="">EWP</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=QI4QVD44&amp;ln=MUKHSJFF&amp;sb=QFTC1QEF&amp;tb=5LHNGZS"
									target="_self" title="">CEO</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=29NSVRHH&amp;ln=96TUDRT4&amp;sb=0A0BAFTI&amp;tb=YIU6UWU"
									target="_self" title="">비전 2030</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=NIW143HF&amp;ln=B1AGK6JX&amp;sb=JQP9GY95&amp;tb=ZF5BG2C"
									target="_self" title="">채용정보</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=8A6EDBXT&amp;ln=F6H5V7JP&amp;sb=W29U15RE&amp;tb=ES8E515"
									target="_self" title="">이사회</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=8MXS7N74&amp;ln=0TC5U7VV&amp;sb=8JNAST1Q&amp;tb=75UKJ6W"
									target="_self" title="">사업소개</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=SUKWUW3S&amp;ln=O8V3IUZ9&amp;sb=8DHV0B2W&amp;tb=54ECV9G">연간업무계획</a>

								</li>


								<li><a
									href="/kor/subpage/contents.asp?cn=1314FD2O&amp;ln=OO69QUWU&amp;sb=UJ2MZMM2&amp;tb=2ZWNPNL"
									target="_self" title="">발전소소개</a></li>


								<li><a
									href="/kor/subpage/contents.asp?cn=GZU8G6VJ&amp;ln=S06AIY9K&amp;sb=XFYKIWYE&amp;tb=3W8IJUR">찾아오시는길</a>

								</li>


							</ul>
							<div class="sub_quick">
								<a
									href="/kor/subpage/contents.asp?cn=8WF9WA4U&ln=1XB8Q9IE&sb=R3BAUE4W&tb=SP5RQGK"
									class="quick13">채용공고</a> <a
									href="/kor/subpage/contents.asp?cn=CCNYV7XQ&ln=79XPB922&sb=AC55EJ9V&tb=1JWK3XF"
									class="quick14">경영방침</a>
							</div>
						</div>

					</div></li>




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
<!--//header end -->

<!-- //header -->
<div class="dark_window"></div>