<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<%@ include file="../commons/header.jsp"%>
</head>
<body>
	<div id="container">

		<div class="main_contents">
			<!-- 본문영역 -->
			<!-- <div class="dark_window"></div> -->
			<div>
				<%@ include file="../commons/category_menu.jsp"%>
				<div class="contents">
					<!-- 본문영역 -->
					<!--ㅡmove menu 시작-->

					<div id="move_menu">
						<h4 style="font-weight: bold; font-family: 'Cooper Black', '나눔고딕 ExtraBold'">MY PAGE(일반)</h4>
					</div>

					<!--move menu 끝-->

					<!--ㅡtab menu 시작-->

					<!--tab menu 끝-->

					<!--ㅡbox_menu 시작-->

					<!--box_menu 끝-->

					<!-- 공표주기 -->
					<!--내용 시작-->

					<!--내용 끝-->


					<!--내용 시작-->
					<!-- pagecheck 시작 -->

					<!-- pagecheck 끝 -->

					<div class="contents_inner">
						<!-- EWP SRM -->
						<div class="srm_index">
							<div class="srm_info">
								<dl>
									<dt>원하는 메뉴를 선택하세요.</dt>
									<dd>
										개인 정보 수정과 비밀번호 수정<br />고수와 거래한 내역을 확인할 수 있습니다.
									</dd>
								</dl>
							</div>
							<dl>
								<dt>나의 거래 목록 조회하기</dt>
								<dd class="pl01 none">계약이행실적증명 발급시스템</dd>
								<dd class="txt">계약을 모두 이행한 사실을 증명할 수 있는 서류를 발급받으실 수 있습니다.</dd>
								<dd class="txt">
									<a href="redirectByUtype.help"
										class="nw">이동 하기</a>
								</dd>
							</dl>
							<dl>
								<dt>개인 정보 수정</dt>
								<dd class="pl02 none">기존의 정보를 수정할 수 있습니다.</dd>
								<dd class="txt">세부적인 내용들의 대하여 수정할 수 있는 페이지 입니다.</dd>
								<dd class="txt">
									<a href="pwdCheck.help"
										class="nw">이동 하기</a>
								</dd>
							</dl>
							<dl>
								<dt class="alt">비밀번호 변경</dt>
								<dd class="pl03 none">정비적격업체관리시스템(시험성적서 QR코드 발행)</dd>
								<dd class="txt">정비적격업체로 선정된 기업을 관리 및 시험 성적 QR코드 발행이 가능합니다.</dd>
								<dd class="txt">
									<a href="https://ewpsrm.ewp.co.kr:8443/cert/midex_login.jsp"
										target="_blank" class="nw">자세히 보기</a>
								</dd>
							</dl>
							<dl>
								<dt>발전5사 정비적격기업 통합관리시스템</dt>
								<dd class="pl04 none">발전5사 정비적격기업 통합관리시스템</dd>
								<dd class="txt">5개의 발전사에 선정된 정비적격업체를 통합 운영&middot;관리하는
									시스템입니다.</dd>
								<dd class="txt">
									<a href="https://withu.ewp.co.kr:8443/user" target="_blank"
										class="nw">자세히 보기</a>
								</dd>
							</dl>
							<dl>
								<dt>품질협업시스템</dt>
								<dd class="pl05 none">품질협업시스템</dd>
								<dd class="txt">품질 향상을 위하여 최상의 품질에 대한 정보를 제공해 드립니다.</dd>
								<dd class="txt">
									<a href="https://ewpsrm.ewp.co.kr:8443/cert/midex_login.jsp"
										target="_blank" class="nw">자세히 보기</a>
								</dd>
							</dl>
							<dl>
								<dt>건설자료협업시스템</dt>
								<dd class="pl06 none">건설자료협업시스템</dd>
								<dd class="txt">건설과 관련된 자료를 수집하여 관련 기술자에게 정보를 제공해 드립니다.</dd>
								<dd class="txt">
									<a href="https://epms.ewp.co.kr:8444/epms/devmenu/Index.jsp"
										target="_blank" class="nw">자세히 보기</a>
								</dd>
							</dl>
						</div>
						<!--내용 끝-->


						<!--정보공개 만족도조사 시작-->

						<!--정보공개 만족도조사 끝-->


						<!--담당자 start-->

						<!--담당자 end-->
						<!-- 담당자 -->

					</div>
				</div>
				</section>

				<div class="topBtn">
					<!-- <a href="#">top</a> -->
				</div>
				<script type='text/javascript'>
			//<![CDATA[
			/*$(function() {
				
			//	$(window).resize(function(){ 
					//$(".topBtn").css("bottom", $(".interest_wrap").position().top);
			//		topbtnPosition();
				});

				function topbtnPosition(){
					//console.log($(".interest_wrap").css("top").replace("px","")+"---"+$(".topBtn").height());
					//$(".topBtn").css("top", $(".interest_wrap").position().top -$(".topBtn").height());
					$(".topBtn").offset({top: $(".interest_wrap").css("top").replace("px","") -$(".topBtn").height()});
					//console.log($(".topBtn").css("top") +"::"+ $(".interest_wrap").css("top"));
				}

				topbtnPosition();
			});*/
			//]]>
			</script>

			</div>


		</div>
	</div>

	<%@ include file="../commons/footer.jsp"%>
</body>
</html>