<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="commons/header.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/join.css" />
</head>
<body>
	<div id="container">

		<div class="main_contents">
			<!-- 본문영역 -->



			<div class="contents_inner">


				<form id="joinForm" name="joinForm"
					action="/exec/front/Member/join/" method="post"
					enctype="multipart/form-data">
					<input id="useSimpleSignin" name="useSimpleSignin" value="F"
						type="hidden" /> <input id="member_name_cert_flag"
						name="member_name_cert_flag" value="F" type="hidden" /> <input
						id="is_name_auth_use" name="is_name_auth_use" value="F"
						type="hidden" /> <input id="is_ipin_auth_use"
						name="is_ipin_auth_use" value="F" type="hidden" /> <input
						id="is_mobile_auth_use" name="is_mobile_auth_use" value="F"
						type="hidden" /> <input id="is_email_auth_use"
						name="is_email_auth_use" value="F" type="hidden" /> <input
						id="default_auth_reg_page_flag" name="default_auth_reg_page_flag"
						value="E" type="hidden" /> <input id="realNameEncrypt"
						name="realNameEncrypt" value="" type="hidden" /> <input
						id="add1_name" name="add1_name" value="" type="hidden" /> <input
						id="add2_name" name="add2_name" value="" type="hidden" /> <input
						id="add3_name" name="add3_name" value="" type="hidden" /> <input
						id="add4_name" name="add4_name" value="" type="hidden" /> <input
						id="is_display_register_business"
						name="is_display_register_business" value="F" type="hidden" /> <input
						id="is_display_register_foreign"
						name="is_display_register_foreign" value="T" type="hidden" /> <input
						id="idDuplCheck" name="idDuplCheck" value="" type="hidden" /> <input
						id="emailDuplCheck" name="emailDuplCheck" value="" type="hidden" />
					<input id="login_id_type" name="login_id_type" value="id"
						type="hidden" /> <input id="display_agree_information_check_flag"
						name="display_agree_information_check_flag" value="F"
						type="hidden" /> <input id="display_agree_consignment_check_flag"
						name="display_agree_consignment_check_flag" value="F"
						type="hidden" /> <input id="display_required_job"
						name="display_required_job" value="F" type="hidden" /> <input
						id="display_required_reco_id" name="display_required_reco_id"
						value="F" type="hidden" /> <input id="display_required_school"
						name="display_required_school" value="F" type="hidden" /> <input
						id="display_required_earning" name="display_required_earning"
						value="F" type="hidden" /> <input id="display_required_interest"
						name="display_required_interest" value="F" type="hidden" /> <input
						id="display_required_region" name="display_required_region"
						value="F" type="hidden" /> <input id="display_required_job_class"
						name="display_required_job_class" value="F" type="hidden" /> <input
						id="display_required_child" name="display_required_child"
						value="F" type="hidden" /> <input id="display_required_car"
						name="display_required_car" value="F" type="hidden" /> <input
						id="display_required_sex" name="display_required_sex" value="F"
						type="hidden" /> <input id="display_required_internet"
						name="display_required_internet" value="F" type="hidden" /> <input
						id="required_is_sms_flag" name="required_is_sms_flag" value="F"
						type="hidden" /> <input id="required_is_news_mail_flag"
						name="required_is_news_mail_flag" value="T" type="hidden" /> <input
						id="is_display_register_wedding"
						name="is_display_register_wedding" value="F" type="hidden" /> <input
						id="display_required_is_wedding_anniversary"
						name="display_required_is_wedding_anniversary" value="F"
						type="hidden" /> <input id="is_display_register_life_partner"
						name="is_display_register_life_partner" value="F" type="hidden" />
					<input id="display_required_is_life_partner"
						name="display_required_is_life_partner" value="F" type="hidden" />
					<input id="is_display_register_birthday"
						name="is_display_register_birthday" value="F" type="hidden" /> <input
						id="display_required_is_birthday"
						name="display_required_is_birthday" value="F" type="hidden" /> <input
						id="nick_name_flag" name="nick_name_flag" value="F" type="hidden" />
					<input id="nick_name_confirm" name="nick_name_confirm" value="F"
						type="hidden" /> <input id="display_required_nick_name_flag"
						name="display_required_nick_name_flag" value="F" type="hidden" />
					<input id="display_required_add1" name="display_required_add1"
						value="F" type="hidden" /> <input id="display_required_add2"
						name="display_required_add2" value="F" type="hidden" /> <input
						id="display_required_add3" name="display_required_add3" value="F"
						type="hidden" /> <input id="display_required_add4"
						name="display_required_add4" value="F" type="hidden" /> <input
						id="passwd_type" name="passwd_type" value="A" type="hidden" /> <input
						id="is_display_register_phone" name="is_display_register_phone"
						value="T" type="hidden" /> <input id="display_required_phone"
						name="display_required_phone" value="T" type="hidden" /> <input
						id="display_register_phone" name="display_register_phone"
						value="F" type="hidden" /> <input id="is_display_register_name"
						name="is_display_register_name" value="T" type="hidden" /> <input
						id="display_required_name" name="display_required_name" value="T"
						type="hidden" /> <input id="is_display_register_eng_name"
						name="is_display_register_eng_name" value="F" type="hidden" /> <input
						id="display_required_name_en" name="display_required_name_en"
						value="F" type="hidden" /> <input id="is_display_bank"
						name="is_display_bank" value="F" type="hidden" /> <input
						id="display_required_bank_account_no"
						name="display_required_bank_account_no" value="F" type="hidden" />
					<input id="is_display_register_addr"
						name="is_display_register_addr" value="T" type="hidden" /> <input
						id="__addr1" name="__addr1" value="" type="hidden" /> <input
						id="__city_name" name="__city_name" value="" type="hidden" /> <input
						id="__state_name" name="__state_name" value="" type="hidden" /> <input
						id="display_required_address" name="display_required_address"
						value="T" type="hidden" /> <input id="display_required_address2"
						name="display_required_address2" value="T" type="hidden" /> <input
						id="is_display_register_name_phonetic"
						name="is_display_register_name_phonetic" value="F" type="hidden" />
					<input id="display_required_name_phonetic"
						name="display_required_name_phonetic" value="F" type="hidden" />
					<input id="is_display_register_mobile"
						name="is_display_register_mobile" value="T" type="hidden" /> <input
						id="display_required_cell" name="display_required_cell" value="T"
						type="hidden" /> <input id="display_register_mobile"
						name="display_register_mobile" value="F" type="hidden" /> <input
						id="is_display_password_hint" name="is_display_password_hint"
						value="T" type="hidden" /> <input id="returnUrl" name="returnUrl"
						value="/member/join_result.html" type="hidden" /> <input
						id="sUseCountryNumberFlag" name="sUseCountryNumberFlag" value="T"
						type="hidden" /> <input id="sUseSeparationNameFlag"
						name="sUseSeparationNameFlag" value="F" type="hidden" /> <input
						id="is_use_checking_join_info" name="is_use_checking_join_info"
						value="F" type="hidden" />
					<div class="xans-element- xans-member xans-member-join ">
						<h2 style="font-size: 30px; font-weight: bold;">JOIN</h2>
						<!--
        $returnUrl = /member/join_result.html
        $checkIdUrl = /member/check_id.html
        $personalName = 이름
        $companyName = 법인명
        $companySsn = 법인번호
        $foreignerSsn1 = 외국인 등록번호
        $foreignerSsn2 = 여권번호
        $foreignerSsn3 = 국제운전면허증번호
     -->
						<div class="boardWrite type">
							<table border="1" summary="">
								<caption>회원가입</caption>
								<tbody>
									<tr>
										<td style="padding-left: 35%">
											<input id="member_type0" name="member_type" value="p" type="radio" checked="checked" />
											<label  style="font-size: 20px;" for="member_type0">고수로 가입하기</label>
											<input style="padding-left: 30px" id="member_type1" name="member_type" value="c" type="radio" />
											<label style="font-size: 20px; " for="member_type1">일반회원으로 가입하기</label>
										</td>
									</tr>

								</tbody>
							</table>
						</div>
						<h3 style="font-size: 25px; font-weight: bold;">Information</h3>
						<div class="boardWrite">
							<table border="1" summary="">
								<caption>회원 기본정보</caption>
								<tbody>
									<tr>
										<th scope="row" style="font-size: 15px;">ID <img
											src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif"
											alt="필수" /></th>
										<td><input id="member_id" name="member_id" type="text" /> 
										<a href="#none" title="새창 열기"
											onclick="checkIdLayer('/member/check_id.html')"
											class="i5a_btn1">ID-Check</a> (영문소문자/숫자, 4~16자)</td>
									</tr>
									<tr>
										<th scope="row" style="font-size: 15px;">PASSWORD <img
											src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif"
											alt="필수" /></th>
										<td><input id="passwd" name="passwd"
											fw-filter="isFill&isMin[4]&isMax[16]" fw-label="비밀번호"
											fw-msg="" autocomplete="off" maxlength="16"
											0="disabled" value="" type="password" /> <br />(영문 대소문자/숫자
											4자~16자)</td>
									</tr>
									<tr>
										<th scope="row" style="font-size: 20px;">비밀번호 확인 <img
											src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif"
											alt="필수" /></th>
										<td><input id="user_passwd_confirm"
											name="user_passwd_confirm" fw-filter="isFill&isMatch[passwd]"
											fw-label="비밀번호 확인" fw-msg="비밀번호가 일치하지 않습니다."
											autocomplete="off" maxlength="16" 0="disabled" value=""
											type="password" /></td>
									</tr>
									<tr>
										<th scope="row">비밀번호 확인 질문 <img
											src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif"
											alt="필수" /></th>
										<td><select id="hint" name="hint" fw-filter="isFill"
											fw-label="hint" fw-msg="">
												<option value="hint_01">기억에 남는 추억의 장소는?</option>
												<option value="hint_02">자신의 인생 좌우명은?</option>
												<option value="hint_03">자신의 보물 제1호는?</option>
												<option value="hint_04">가장 기억에 남는 선생님 성함은?</option>
												<option value="hint_05">타인이 모르는 자신만의 신체비밀이 있다면?</option>
												<option value="hint_06">추억하고 싶은 날짜가 있다면?</option>
												<option value="hint_07">받았던 선물 중 기억에 남는 독특한 선물은?</option>
												<option value="hint_08">유년시절 가장 생각나는 친구 이름은?</option>
												<option value="hint_09">인상 깊게 읽은 책 이름은?</option>
												<option value="hint_10">읽은 책 중에서 좋아하는 구절이 있다면?</option>
												<option value="hint_11">자신이 두번째로 존경하는 인물은?</option>
												<option value="hint_12">친구들에게 공개하지 않은 어릴 적 별명이 있다면?</option>
												<option value="hint_13">초등학교 때 기억에 남는 짝꿍 이름은?</option>
												<option value="hint_14">다시 태어나면 되고 싶은 것은?</option>
												<option value="hint_15">내가 좋아하는 캐릭터는?</option>
										</select></td>
									</tr>
									<tr>
										<th scope="row">비밀번호 확인 답변 <img
											src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif"
											alt="필수" /></th>
										<td><input id="hint_answer" name="hint_answer"
											fw-filter="isFill" fw-label="비밀번호 확인시 답변" fw-msg=""
											class="inputTypeText" placeholder="" value="" type="text" /></td>
									</tr>
									<tr>
										<th scope="row" id="nameTitle">이름 <img
											src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif"
											alt="필수" /></th>
										<td><span id="nameContents"><input id="name"
												name="name" fw-filter="isFill&isMax[30]" fw-label="이름"
												fw-msg="" class="ec-member-name" placeholder=""
												maxlength="30" value="" type="text" /></span> <span
											id="under14Msg" class="displaynone">14세 미만 사용자는 법정대리인
												동의가 필요합니다.</span></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">이름(영문) <img
											src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif"
											id="icon_name_en" alt="필수" /></th>
										<td><input id="name_en" name="name_en"
											fw-filter="isMax[30]" fw-label="이름(영문)" fw-msg=""
											class="ec-member-name" placeholder="" maxlength="30" value=""
											type="text" /> (이름 - 성 형식으로 입력해 주세요.)</td>
									</tr>
									<!-- 외국인 회원 정보 -->
									<tr>
										<th scope="row" id="ssnTitle"></th>
										<td id="ssnContents"></td>
									</tr>
									<!-- //외국인 회원 정보 -->
									<tr id="companyRow">
										<th scope="row">상호명 <img
											src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif"
											alt="필수" /></th>
										<td id="companyName"><input id="cname" name="cname"
											fw-filter="isMax[20]" fw-label="상호명" fw-msg=""
											class="inputTypeText" placeholder="" maxlength="20" value=""
											type="text" /></td>
									</tr>
									<tr id="companyNoRow">
										<th scope="row">사업자번호 <img
											src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif"
											alt="필수" /></th>
										<td id="companySsn"><input id="cssn" name="cssn"
											fw-filter="isMax[20]" fw-label="사업자 번호" fw-msg=""
											class="inputTypeText" placeholder="" maxlength="20" value=""
											type="text" /></td>
									</tr>
									<tr id="nation">
										<th>국적 <img
											src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif"
											alt="필수" /></th>
										<td><select id="citizenship" name="citizenship"
											fw-filter="isFill" fw-label="국적" fw-msg="">
												<option value="" selected="selected">선택하세요</option>
												<option value="AF">AFGHANISTAN(아프가니스탄)</option>
												<option value="AL">ALBANIA(알바니아)</option>
												<option value="DZ">ALGERIA(알제리)</option>
												<option value="AS">AMERICAN SAMOA(미국령 사모아)</option>
												<option value="AD">ANDORRA(안도라)</option>
												<option value="AO">ANGOLA(앙골라)</option>
												<option value="AI">ANGUILLA(안길라)</option>
												<option value="AQ">ANTARCTICA(남극)</option>
												<option value="AG">ANTIGUA AND BARBUDA(안티구아 바부다)</option>
												<option value="AR">ARGENTINA(아르헨티나)</option>
												<option value="AM">ARMENIA(아르메니아)</option>
												<option value="AW">ARUBA(아루바)</option>
												<option value="AU">AUSTRALIA(오스트레일리아)</option>
												<option value="AT">AUSTRIA(오스트리아)</option>
												<option value="AZ">AZERBAIJAN(아제르바이잔)</option>
												<option value="BS">BAHAMAS(바하마)</option>
												<option value="BH">BAHRAIN(바레인)</option>
												<option value="BD">BANGLADESH(방글라데시)</option>
												<option value="BB">BARBADOS(바베이도스)</option>
												<option value="BE">BELGIUM(벨기에)</option>
												<option value="BZ">BELIZE(벨리즈)</option>
												<option value="BJ">BENIN(베넹)</option>
												<option value="BM">BERMUDA(버뮤다)</option>
												<option value="BT">BHUTAN(부탄)</option>
												<option value="BO">BOLIVIA(볼리비아)</option>
												<option value="BA">BOSNIA HERCEGOVINA(보스니아 헤르체고비나)</option>
												<option value="BW">BOTSWANA(보트와나)</option>
												<option value="BV">BOUVET ISLAND(부베이 섬)</option>
												<option value="BR">BRAZIL(브라질)</option>
												<option value="IO">BRITISH INDIAN OCEAN TERRITORY(영인도 제도)</option>
												<option value="BN">BRUNEI DARUSSALAM(브루나이)</option>
												<option value="BG">BULGARIA(불가리아)</option>
												<option value="BF">BURKINA FASO(부르키나파소)</option>
												<option value="BI">BURUNDI(브룬디)</option>
												<option value="BY">BELARUS(벨라루스)</option>
												<option value="KH">CAMBODIA(캄보디아)</option>
												<option value="CM">CAMEROON(카메룬)</option>
												<option value="CA">CANADA(캐나다)</option>
												<option value="CV">CAPE VERDE(까뽀베르데)</option>
												<option value="KY">CAYMAN ISLANDS(카이만 군도)</option>
												<option value="CF">CENTRAL AFRICAN REPUBLIC(중앙 아프리카)</option>
												<option value="TD">CHAD(차드)</option>
												<option value="CL">CHILE(칠레)</option>
												<option value="CN">CHINA(중국)</option>
												<option value="CX">CHRISTMAS ISLAND(크리스마스 섬)</option>
												<option value="CC">COCOS (KEELING) ISLANDS(코코스킬링 제도)</option>
												<option value="CO">COLOMBIA(콜롬비아)</option>
												<option value="KM">COMOROS(코모르)</option>
												<option value="CG">CONGO(콩고)</option>
												<option value="CK">COOK ISLANDS(쿠크 군도)</option>
												<option value="CR">COSTA RICA(코스타리카)</option>
												<option value="CI">COTE D'IVOIRE(코트디부와르)</option>
												<option value="HR">CROATIA(크로아티아)</option>
												<option value="CU">CUBA(쿠바)</option>
												<option value="CY">CYPRUS(사이프러스)</option>
												<option value="CZ">CZECH REPUBLIC(체코)</option>
												<option value="CS">CZECHOSLOVAKIA(체코슬로바키아)</option>
												<option value="DK">DENMARK(덴마크)</option>
												<option value="DJ">DJIBOUTI(지부티)</option>
												<option value="DM">DOMINICA(도미니카)</option>
												<option value="DO">DOMINICAN REPUBLIC(도미니카 공화국)</option>
												<option value="TP">EAST TIMOR(동티모르)</option>
												<option value="EC">ECUADOR(에쿠아도르)</option>
												<option value="EG">EGYPT(이집트)</option>
												<option value="SV">EL SALVADOR(엘살바도르)</option>
												<option value="GQ">EQUATORIAL GUINEA(적도 기니)</option>
												<option value="EE">ESTONIA(에스토니아)</option>
												<option value="ET">ETHIOPIA(이디오피아)</option>
												<option value="FK">FALKLAND ISLANDS (포클랜드)</option>
												<option value="FO">FAROE ISLANDS(페로 군도)</option>
												<option value="FJ">FIJI(피지)</option>
												<option value="FI">FINLAND(핀란드)</option>
												<option value="FR">FRANCE(프랑스)</option>
												<option value="GF">FRENCH GUIANA(프랑스령 기아나)</option>
												<option value="PF">FRENCH POLYNESIA(프랑스령 폴리네시아)</option>
												<option value="TF">FRENCH SOUTHERN TERRITORIES(프랑스 남부 지역)</option>
												<option value="GA">GABON(가봉)</option>
												<option value="GM">GAMBIA(감비아)</option>
												<option value="GE">GEORGIA(그루지야)</option>
												<option value="DE">GERMANY(독일)</option>
												<option value="GH">GHANA(가나)</option>
												<option value="GI">GIBRALTAR(지브랄타)</option>
												<option value="GR">GREECE(그리스)</option>
												<option value="GL">GREENLAND(그린랜드)</option>
												<option value="GD">GRENADA(그레나다)</option>
												<option value="GP">GUADELOUPE(과달로프)</option>
												<option value="GU">GUAM(괌)</option>
												<option value="GT">GUATEMALA(과테말라)</option>
												<option value="GN">GUINEA(기니)</option>
												<option value="GW">GUINEA-BISSAU(기네비쏘)</option>
												<option value="GY">GUYANA(가이아나)</option>
												<option value="HT">HAITI(아이티)</option>
												<option value="HM">HEARD AND MC DONALD ISLANDS(허드 섬 및 맥도날드 군도)</option>
												<option value="HN">HONDURAS(온두라스)</option>
												<option value="HK">HONG KONG(홍콩)</option>
												<option value="HU">HUNGARY(헝가리)</option>
												<option value="IS">ICELAND(아이슬랜드)</option>
												<option value="IN">INDIA(인도)</option>
												<option value="ID">INDONESIA(인도네시아)</option>
												<option value="IR">IRAN (ISLAMIC REPUBLIC OF) - 이란(이슬람 공화국)</option>
												<option value="IQ">IRAQ(이라크)</option>
												<option value="IE">IRELAND(아일랜드)</option>
												<option value="IL">ISRAEL(이스라엘)</option>
												<option value="IT">ITALY(이탈리아)</option>
												<option value="JM">JAMAICA(자메이카)</option>
												<option value="JP">JAPAN(일본)</option>
												<option value="JO">JORDAN(요르단)</option>
												<option value="KZ">KAZAKHSTAN(카자흐스탄)</option>
												<option value="KE">KENYA(케냐)</option>
												<option value="KI">KIRIBATI(키리바시)</option>
												<option value="KP">KOREA, DEMOCRATIC PEOPLE'S REPUBLIC OF - 북한</option>
												<option value="KR">KOREA, REPUBLIC OF - 대한민국</option>
												<option value="KW">KUWAIT(쿠웨이트)</option>
												<option value="KG">KYRGYZSTAN(키르기스스탄)</option>
												<option value="LA">LAO PEOPLE'S DEMOCRATIC REPUBLIC(라오스)</option>
												<option value="LV">LATVIA(라트비아)</option>
												<option value="LB">LEBANON(레바논)</option>
												<option value="LS">LESOTHO(레소토)</option>
												<option value="LR">LIBERIA(리베리아)</option>
												<option value="LY">LIBYAN ARAB JAMAHIRIYA(리비아)</option>
												<option value="LI">LIECHTENSTEIN(리히텐슈타인)</option>
												<option value="LT">LITHUANIA(리투아니아)</option>
												<option value="LU">LUXEMBOURG(룩셈부르크)</option>
												<option value="MO">MACAU(마카오)</option>
												<option value="MG">MADAGASCAR(마다가스카르)</option>
												<option value="MW">MALAWI(말라위)</option>
												<option value="MY">MALAYSIA(말레이지아)</option>
												<option value="MV">MALDIVES(몰디브)</option>
												<option value="ML">MALI(말리)</option>
												<option value="MT">MALTA(말타)</option>
												<option value="MH">MARSHALL ISLANDS(마샬 군도)</option>
												<option value="MQ">MARTINIQUE(말티니크)</option>
												<option value="MR">MAURITANIA(말티니크)</option>
												<option value="MU">MAURITIUS(모리셔스)</option>
												<option value="MX">MEXICO(멕시코)</option>
												<option value="FM">MICRONESIA(마이크로네시아)</option>
												<option value="MD">MOLDOVA, REPUBLIC OF(몰도바)</option>
												<option value="MC">MONACO(모나코)</option>
												<option value="MN">MONGOLIA(몽골)</option>
												<option value="MS">MONTSERRAT(몬트세라트)</option>
												<option value="MA">MOROCCO(모로코)</option>
												<option value="MZ">MOZAMBIQUE(모잠비크)</option>
												<option value="MM">MYANMAR(미얀마)</option>
												<option value="NA">NAMIBIA(나미비아)</option>
												<option value="NR">NAURU(나우루)</option>
												<option value="NP">NEPAL(네팔)</option>
												<option value="NL">NETHERLANDS(네덜란드)</option>
												<option value="AN">NETHERLANDS ANTILLES(네덜란드령 안틸레스)</option>
												<option value="NT">NEUTRAL ZONE(중립 지대)</option>
												<option value="NC">NEW CALEDONIA(뉴 칼레도니아)</option>
												<option value="NZ">NEW ZEALAND(뉴질랜드)</option>
												<option value="NI">NICARAGUA(니카라과)</option>
												<option value="NE">NIGER(니제르)</option>
												<option value="NG">NIGERIA(나이지리아)</option>
												<option value="NU">NIUE(니우에)</option>
												<option value="NF">NORFOLK ISLAND(노퍽)</option>
												<option value="MP">NORTHERN MARIANA ISLANDS(북마리아나 군도)</option>
												<option value="NO">NORWAY(노르웨이)</option>
												<option value="OM">OMAN(오만)</option>
												<option value="PK">PAKISTAN(파키스탄)</option>
												<option value="PW">PALAU(팔라우)</option>
												<option value="PA">PANAMA(파나마)</option>
												<option value="PG">PAPUA NEW GUINEA(파푸아뉴기니)</option>
												<option value="PY">PARAGUAY(파라과이)</option>
												<option value="PE">PERU(페루)</option>
												<option value="PH">PHILIPPINES(필리핀)</option>
												<option value="PN">PITCAIRN(핏케언 군도)</option>
												<option value="PL">POLAND(폴란드)</option>
												<option value="PT">PORTUGAL(포르투갈)</option>
												<option value="PR">PUERTO RICO(푸에르토리코)</option>
												<option value="QA">QATAR(카타르)</option>
												<option value="RE">REUNION(리유니언)</option>
												<option value="RO">ROMANIA(루마니아)</option>
												<option value="RU">RUSSIAN FEDERATION(러시아)</option>
												<option value="RW">RWANDA(르완다)</option>
												<option value="SH">ST. HELENA(세인트 헬레나)</option>
												<option value="KN">SAINT KITTS AND NEVIS(세인트 크리스토퍼 니비스)</option>
												<option value="LC">SAINT LUCIA(세인트 루시아)</option>
												<option value="PM">ST. PIERRE AND MIQUELON(세인트 피에르 미퀠론)</option>
												<option value="VC">SAINT VINCENT AND THE GRENADINES(세인트 빈센트 그레나딘스)</option>
												<option value="WS">SAMOA(사모아)</option>
												<option value="SM">SAN MARINO(산마리노)</option>
												<option value="ST">SAO TOME AND PRINCIPE(쌍투메 프린시페)</option>
												<option value="SA">SAUDI ARABIA(사우디아라비아)</option>
												<option value="SN">SENEGAL(세네갈)</option>
												<option value="SC">SEYCHELLES(세이셸)</option>
												<option value="SL">SIERRA LEONE(시에라리온)</option>
												<option value="SG">SINGAPORE(싱가포르)</option>
												<option value="SK">SLOVAKIA(슬로바키아)</option>
												<option value="SI">SLOVENIA(슬로베니아)</option>
												<option value="SB">SOLOMON ISLANDS(솔로몬 군도)</option>
												<option value="SO">SOMALIA(소말리아)</option>
												<option value="ZA">SOUTH AFRICA(남아프리카)</option>
												<option value="ES">SPAIN(스페인)</option>
												<option value="LK">SRI LANKA(스리랑카)</option>
												<option value="SD">SUDAN(수단)</option>
												<option value="SR">SURINAME(수리남)</option>
												<option value="SJ">SVALBARD AND JAN MAYEN ISLANDS(스발바르드 얀마이엔 제도)</option>
												<option value="SZ">SWAZILAND(스와질랜드)</option>
												<option value="SE">SWEDEN(스웨덴)</option>
												<option value="CH">SWITZERLAND(스위스)</option>
												<option value="SY">SYRIAN ARAB REPUBLIC(시리아)</option>
												<option value="TW">TAIWAN, PROVINCE OF CHINA(대만)</option>
												<option value="TJ">TAJIKISTAN(타지키스탄)</option>
												<option value="TZ">TANZANIA, UNITED REPUBLIC OF(탄자니아)</option>
												<option value="TH">THAILAND(태국)</option>
												<option value="TG">TOGO(토고)</option>
												<option value="TK">TOKELAU(토켈라우)</option>
												<option value="TO">TONGA(통가)</option>
												<option value="TT">TRINIDAD AND TOBAGO(트리니다드 토바고)</option>
												<option value="TN">TUNISIA(튀니지)</option>
												<option value="TR">TURKEY(터어키)</option>
												<option value="TM">TURKMENISTAN(투르크메니스탄)</option>
												<option value="TC">TURKS AND CAICOS ISLANDS(터크스 카이코스 제도)</option>
												<option value="TV">TUVALU(투발루)</option>
												<option value="UG">UGANDA(우간다)</option>
												<option value="UA">UKRAINE(우크라이나)</option>
												<option value="AE">UNITED ARAB EMIRATES(아랍에미리트)</option>
												<option value="GB">UNITED KINGDOM(영국)</option>
												<option value="US">UNITED STATES(미국)</option>
												<option value="UM">UNITED STATES MINOR OUTLYING ISLANDS(미국령 소군도)</option>
												<option value="UY">URUGUAY(우루과이)</option>
												<option value="SU">USSR</option>
												<option value="UZ">UZBEKISTAN(우즈베키스탄)</option>
												<option value="VU">VANUATU(바누아투)</option>
												<option value="VA">VATICAN CITY STATE (HOLY SEE)-바티칸</option>
												<option value="VE">VENEZUELA(베네수엘라)</option>
												<option value="VN">VIET NAM(베트남)</option>
												<option value="VG">VIRGIN ISLANDS (BRITISH)-영국령 버진아일랜드</option>
												<option value="VI">VIRGIN ISLANDS (U.S.)-미국령 버진아일랜드</option>
												<option value="WF">WALLIS AND FUTUNA ISLANDS(월리스 후트나)</option>
												<option value="EH">WESTERN SAHARA(사하라)</option>
												<option value="YE">YEMEN, REPUBLIC OF(예멘)</option>
												<option value="YU">YUGOSLAVIA(유고슬라비아)</option>
												<option value="ZR">ZAIRE(자이르)</option>
												<option value="ZM">ZAMBIA(잠비아)</option>
												<option value="ZW">ZIMBABWE(짐바브웨)</option>
										</select></td>
									</tr>
									<tr>
										<th scope="row">주소 <img
											src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif"
											alt="필수" /></th>
										<td><input id="postcode1" name="postcode1"
											fw-filter="isLengthRange[1][14]" fw-label="우편번호1" fw-msg=""
											class="inputTypeText" placeholder="" readonly="readonly"
											maxlength="14" value="" type="text" /> <a href="#none"
											onclick="" id="postBtn">Zip Code</a><br /> <input id="addr1"
											name="addr1" fw-filter="isFill" fw-label="주소" fw-msg=""
											class="inputTypeText" placeholder="" readonly="readonly"
											value="" type="text" /> 기본주소<br /> <input id="addr2"
											name="addr2" fw-filter="" fw-label="주소" fw-msg=""
											class="inputTypeText" placeholder="" value="" type="text" />
											나머지주소</td>
									</tr>
									<tr>
										<th scope="row">일반전화 <img
											src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif"
											id="icon_phone" alt="필수" /></th>
										<td><select id="phone1" name="phone[]"
											fw-filter="isNumber&isFill&isNumber" fw-label="일반전화"
											fw-alone="N" fw-msg="">
												<option value="02">02</option>
												<option value="031">031</option>
												<option value="032">032</option>
												<option value="033">033</option>
												<option value="041">041</option>
												<option value="042">042</option>
												<option value="043">043</option>
												<option value="044">044</option>
												<option value="051">051</option>
												<option value="052">052</option>
												<option value="053">053</option>
												<option value="054">054</option>
												<option value="055">055</option>
												<option value="061">061</option>
												<option value="062">062</option>
												<option value="063">063</option>
												<option value="064">064</option>
												<option value="0502">0502</option>
												<option value="0503">0503</option>
												<option value="0504">0504</option>
												<option value="0505">0505</option>
												<option value="0506">0506</option>
												<option value="0507">0507</option>
												<option value="070">070</option>
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
										</select>-<input id="phone2" name="phone[]" maxlength="4"
											fw-filter="isNumber&isFill&isNumber" fw-label="일반전화"
											fw-alone="N" fw-msg="" value="" type="text" />-<input
											id="phone3" name="phone[]" maxlength="4"
											fw-filter="isNumber&isFill&isNumber" fw-label="일반전화"
											fw-alone="N" fw-msg="" value="" type="text" /></td>
									</tr>
									<tr>
										<th scope="row">휴대전화 <img
											src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif"
											alt="필수" /></th>
										<td><select id="mobile1" name="mobile[]"
											fw-filter="isNumber&isFill" fw-label="휴대전화" fw-alone="N"
											fw-msg="">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
										</select>-<input id="mobile2" name="mobile[]" maxlength="4"
											fw-filter="isNumber&isFill" fw-label="휴대전화" fw-alone="N"
											fw-msg="" value="" type="text" />-<input id="mobile3"
											name="mobile[]" maxlength="4" fw-filter="isNumber&isFill"
											fw-label="휴대전화" fw-alone="N" fw-msg="" value="" type="text" /></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">SMS 수신여부 <img
											src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif"
											alt="필수" /></th>
										<td><label for=is_sms0><input id="is_sms0"
												name="is_sms" fw-filter="" fw-label="is_sms" fw-msg=""
												class="ec-base-chk" value="T" type="checkbox" />동의함</label>
											<p>쇼핑몰에서 제공하는 유익한 이벤트 소식을 SMS로 받으실 수 있습니다.</p></td>
									</tr>
									<tr>
										<th scope="row">이메일 <img
											src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif"
											alt="필수" /></th>
										<td><input id="email1" name="email1" fw-filter="isFill"
											fw-label="이메일" fw-alone="N" fw-msg="" value="" type="text" />@<input
											id="email2" name="email2" fw-filter="isFill" fw-label="이메일"
											fw-alone="N" fw-msg="" readonly="readonly" value=""
											type="text" /><select id="email3" fw-filter="isFill"
											fw-label="이메일" fw-alone="N" fw-msg="">
												<option value="" selected="selected">- 이메일 선택 -</option>
												<option value="naver.com">naver.com</option>
												<option value="daum.net">daum.net</option>
												<option value="nate.com">nate.com</option>
												<option value="hotmail.com">hotmail.com</option>
												<option value="yahoo.com">yahoo.com</option>
												<option value="empas.com">empas.com</option>
												<option value="korea.com">korea.com</option>
												<option value="dreamwiz.com">dreamwiz.com</option>
												<option value="gmail.com">gmail.com</option>
												<option value="etc">직접입력</option>
										</select></td>
									</tr>
									<tr class="">
										<th scope="row">이메일 수신여부 <img
											src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif"
											alt="필수" /></th>
										<td><label for=is_news_mail0><input
												id="is_news_mail0" name="is_news_mail" fw-filter="isFill"
												fw-label="is_news_mail" fw-msg="" class="ec-base-chk"
												value="T" type="checkbox" />동의함</label>
											<p>쇼핑몰에서 제공하는 유익한 이벤트 소식을 이메일로 받으실 수 있습니다.</p></td>
									</tr>
								</tbody>
							</table>
						</div>
						
						<h3>이용약관 동의</h3>
						<div class="agreeArea">
							<div class="agree">
								<p>
									제1조(목적)<br>이 약관은 모던이프)가 운영하는&nbsp;모던이프&nbsp;사이버 몰(이하 “몰”이라
									한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리,의무
									및 책임사항을 규정함을 목적으로 합니다.<br>※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그
									성질에 반하지 않는 한 이 약관을 준용합니다.」
								</p>
								<p>
									제2조(정의)<br>① “몰”이란&nbsp;모던이프가 재화 또는 용역(이하 “재화 등”이라 함)을
									이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을
									말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.<br>② “이용자”란 “몰”에 접속하여
									이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br>③ ‘회원’이라 함은
									“몰”에 (삭제) 회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다.<br>④
									‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.
								</p>
								<p>
									제3조 (약관 등의 명시와 설명 및 개정) <br>① “몰”은 이 약관의 내용과 상호 및 대표자 성명,
									영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호,모사전송번호,전자우편주소,
									사업자등록번호, 통신판매업 신고번호, 개인정보관리책임자등을 이용자가 쉽게 알 수 있도록 00 사이버몰의 초기
									서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br>②
									“몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회.배송책임.환불조건 등과 같은 중요한
									내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.<br>③
									“몰”은 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및
									전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」,
									「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수
									있습니다.<br>④ “몰”이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의
									초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는
									경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 "몰“은 개정 전 내용과 개정 후 내용을
									명확하게 비교하여 이용자가 알기 쉽도록 표시합니다. <br>⑤ “몰”이 약관을 개정할 경우에는 그
									개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의
									약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을
									제3항에 의한 개정약관의 공지기간 내에 “몰”에 송신하여 “몰”의 동의를 받은 경우에는 개정약관 조항이
									적용됩니다.<br>⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의
									소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침
									및 관계법령 또는 상관례에 따릅니다.
								</p>
								<p>
									제4조(서비스의 제공 및 변경) <br>① “몰”은 다음과 같은 업무를 수행합니다.<br>&nbsp;
									1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결<br>&nbsp; 2. 구매계약이 체결된 재화
									또는 용역의 배송<br>&nbsp; 3. 기타 “몰”이 정하는 업무<br>② “몰”은 재화 또는
									용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을
									변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의
									내용을 게시한 곳에 즉시 공지합니다.<br>③ “몰”이 제공하기로 이용자와 계약을 체결한 서비스의 내용을
									재화등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시
									통지합니다.<br>④ 전항의 경우 “몰”은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, “몰”이
									고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.
								</p>
								<p>
									제5조(서비스의 중단) <br>① “몰”은 컴퓨터 등 정보통신설비의 보수점검.교체 및 고장, 통신의 두절
									등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.<br>② “몰”은 제1항의
									사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단,
									“몰”이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.<br>③ 사업종목의 전환,
									사업의 포기, 업체 간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 “몰”은 제8조에 정한 방법으로
									이용자에게 통지하고 당초 “몰”에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, “몰”이 보상기준 등을
									고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 “몰”에서 통용되는 통화가치에 상응하는 현물 또는
									현금으로 이용자에게 지급합니다.
								</p>
								<p>
									제6조(회원가입) <br>① 이용자는 “몰”이 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에
									동의한다는 의사표시를 함으로서 회원가입을 신청합니다.<br>② “몰”은 제1항과 같이 회원으로 가입할
									것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다.<br>&nbsp; 1.
									가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한
									회원자격 상실 후 3년이 경과한 자로서 “몰”의 회원재가입 승낙을 얻은 경우에는 예외로 한다.<br>&nbsp;
									2. 등록 내용에 허위, 기재누락, 오기가 있는 경우<br>&nbsp; 3. 기타 회원으로 등록하는 것이
									“몰”의 기술상 현저히 지장이 있다고 판단되는 경우<br>③ 회원가입계약의 성립 시기는 “몰”의 승낙이
									회원에게 도달한 시점으로 합니다.<br>④ 회원은 회원가입 시 등록한 사항에 변경이 있는 경우, 상당한
									기간 이내에 “몰”에 대하여 회원정보 수정 등의 방법으로 그 변경사항을 알려야 합니다.
								</p>
								<p>
									제7조(회원 탈퇴 및 자격 상실 등) <br>① 회원은 “몰”에 언제든지 탈퇴를 요청할 수 있으며
									“몰”은 즉시 회원탈퇴를 처리합니다.<br>② 회원이 다음 각 호의 사유에 해당하는 경우, “몰”은
									회원자격을 제한 및 정지시킬 수 있습니다.<br>&nbsp; 1. 가입 신청 시에 허위 내용을 등록한
									경우<br>&nbsp; 2. “몰”을 이용하여 구입한 재화 등의 대금, 기타 “몰”이용에 관련하여 회원이
									부담하는 채무를 기일에 지급하지 않는 경우<br>&nbsp; 3. 다른 사람의 “몰” 이용을 방해하거나
									그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우<br>&nbsp; 4. “몰”을 이용하여 법령
									또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우<br>③ “몰”이 회원 자격을 제한.정지
									시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 “몰”은 회원자격을
									상실시킬 수 있습니다.<br>④ “몰”이 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우
									회원에게 이를 통지하고, 회원등록 말소 전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.
								</p>
								<p>
									제8조(회원에 대한 통지)<br>① “몰”이 회원에 대한 통지를 하는 경우, 회원이 “몰”과 미리
									약정하여 지정한 전자우편 주소로 할 수 있습니다.<br>② “몰”은 불특정다수 회원에 대한 통지의 경우
									1주일이상 “몰” 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여
									중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.
								</p>
								<p>
									제9조(구매신청) <br>① “몰”이용자는 “몰”상에서 다음 또는 이와 유사한 방법에 의하여 구매를
									신청하며, “몰”은 이용자가 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다. (삭제)<br>&nbsp;
									1. 재화 등의 검색 및 선택<br>&nbsp; 2. 받는 사람의 성명, 주소, 전화번호,
									전자우편주소(또는 이동전화번호) 등의 입력<br>&nbsp; 3. 약관내용, 청약철회권이 제한되는
									서비스, 배송료.설치비 등의 비용부담과 관련한 내용에 대한 확인<br>&nbsp; 4. 이 약관에
									동의하고 위 3.호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭)<br>&nbsp; 5. 재화등의
									구매신청 및 이에 관한 확인 또는 “몰”의 확인에 대한 동의<br>&nbsp; 6. 결제방법의 선택<br>②
									“몰”이 제3자에게 구매자 개인정보를 제공?위탁할 필요가 있는 경우 실제 구매신청 시 구매자의 동의를 받아야
									하며, 회원가입 시 미리 포괄적으로 동의를 받지 않습니다. 이 때 “몰”은 제공되는 개인정보 항목, 제공받는 자,
									제공받는 자의 개인정보 이용 목적 및 보유?이용 기간 등을 구매자에게 명시하여야 합니다. 다만 「정보통신망이용촉진
									및 정보보호 등에 관한 법률」 제25조 제1항에 의한 개인정보 취급위탁의 경우 등 관련 법령에 달리 정함이 있는
									경우에는 그에 따릅니다.
								</p>
								<p>
									제10조 (계약의 성립)<br>① “몰”은 제9조와 같은 구매신청에 대하여 다음 각 호에 해당하면
									승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자
									본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.<br>&nbsp; 1. 신청
									내용에 허위, 기재누락, 오기가 있는 경우<br>&nbsp; 2. 미성년자가 담배, 주류 등
									청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우<br>&nbsp; 3. 기타 구매신청에 승낙하는
									것이 “몰” 기술상 현저히 지장이 있다고 판단하는 경우<br>② “몰”의 승낙이 제12조제1항의
									수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.<br>③ “몰”의 승낙의
									의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소 등에 관한 정보 등을
									포함하여야 합니다.
								</p>
								<p>
									제11조(지급방법)<br>“몰”에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각 호의 방법중
									가용한 방법으로 할 수 있습니다. 단, “몰”은 이용자의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의
									수수료도 추가하여 징수할 수 없습니다.<br>1. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체 <br>2.
									선불카드, 직불카드, 신용카드 등의 각종 카드 결제<br>3. 온라인무통장입금<br>4.
									전자화폐에 의한 결제<br>5. 수령 시 대금지급<br>6. 마일리지 등 “몰”이 지급한
									포인트에 의한 결제<br>7. “몰”과 계약을 맺었거나 “몰”이 인정한 상품권에 의한 결제 <br>8.
									기타 전자적 지급 방법에 의한 대금 지급 등
								</p>
								<p>
									제12조(수신확인통지.구매신청 변경 및 취소)<br>① “몰”은 이용자의 구매신청이 있는 경우 이용자에게
									수신확인통지를 합니다.<br>② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는
									수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고 “몰”은 배송 전에 이용자의 요청이 있는
									경우에는 지체 없이 그 요청에 따라 처리하여야 합니다. 다만 이미 대금을 지불한 경우에는 제15조의 청약철회 등에
									관한 규정에 따릅니다.
								</p>
								<p>
									제13조(재화 등의 공급)<br>① “몰”은 이용자와 재화 등의 공급시기에 관하여 별도의 약정이 없는
									이상, 이용자가 청약을 한 날부터 7일 이내에 재화 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한
									조치를 취합니다. 다만, “몰”이 이미 재화 등의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를
									받은 날부터 3영업일 이내에 조치를 취합니다. 이때 “몰”은 이용자가 재화 등의 공급 절차 및 진행 사항을 확인할
									수 있도록 적절한 조치를 합니다.<br>② “몰”은 이용자가 구매한 재화에 대해 배송수단, 수단별
									배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 “몰”이 약정 배송기간을 초과한 경우에는 그로 인한
									이용자의 손해를 배상하여야 합니다. 다만 “몰”이 고의.과실이 없음을 입증한 경우에는 그러하지 아니합니다.
								</p>
								<p>
									제14조(환급)<br>“몰”은 이용자가 구매신청한 재화 등이 품절 등의 사유로 인도 또는 제공을 할 수
									없을 때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터
									3영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.
								</p>
								<p>
									제15조(청약철회 등)<br>① “몰”과 재화등의 구매에 관한 계약을 체결한 이용자는 「전자상거래
									등에서의 소비자보호에 관한 법률」 제13조 제2항에 따른 계약내용에 관한 서면을 받은 날(그 서면을 받은 때보다
									재화 등의 공급이 늦게 이루어진 경우에는 재화 등을 공급받거나 재화 등의 공급이 시작된 날을 말합니다)부터 7일
									이내에는 청약의 철회를 할 수 있습니다. 다만, 청약철회에 관하여 「전자상거래 등에서의 소비자보호에 관한 법률」에
									달리 정함이 있는 경우에는 동 법 규정에 따릅니다. <br>② 이용자는 재화 등을 배송 받은 경우 다음
									각 호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.<br>&nbsp; 1. 이용자에게 책임
									있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는
									청약철회를 할 수 있습니다)<br>&nbsp; 2. 이용자의 사용 또는 일부 소비에 의하여 재화 등의
									가치가 현저히 감소한 경우<br>&nbsp; 3. 시간의 경과에 의하여 재판매가 곤란할 정도로 재화등의
									가치가 현저히 감소한 경우<br>&nbsp; 4. 같은 성능을 지닌 재화 등으로 복제가 가능한 경우 그
									원본인 재화 등의 포장을 훼손한 경우<br>③ 제2항제2호 내지 제4호의 경우에 “몰”이 사전에 청약철회
									등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나 시용상품을 제공하는 등의 조치를 하지 않았다면
									이용자의 청약철회 등이 제한되지 않습니다.<br>④ 이용자는 제1항 및 제2항의 규정에 불구하고 재화
									등의 내용이 표시?광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 재화 등을 공급받은 날부터 3월
									이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.
								</p>
								<p>
									제16조(청약철회 등의 효과)<br>① “몰”은 이용자로부터 재화 등을 반환받은 경우 3영업일 이내에
									이미 지급받은 재화 등의 대금을 환급합니다. 이 경우 “몰”이 이용자에게 재화등의 환급을 지연한때에는 그
									지연기간에 대하여 「전자상거래 등에서의 소비자보호에 관한 법률 시행령」제21조의2에서 정하는 지연이자율(괄호 부분
									삭제)을 곱하여 산정한 지연이자를 지급합니다.<br>② “몰”은 위 대금을 환급함에 있어서 이용자가
									신용카드 또는 전자화폐 등의 결제수단으로 재화 등의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한
									사업자로 하여금 재화 등의 대금의 청구를 정지 또는 취소하도록 요청합니다.<br>③ 청약철회 등의 경우
									공급받은 재화 등의 반환에 필요한 비용은 이용자가 부담합니다. “몰”은 이용자에게 청약철회 등을 이유로 위약금
									또는 손해배상을 청구하지 않습니다. 다만 재화 등의 내용이 표시?광고 내용과 다르거나 계약내용과 다르게 이행되어
									청약철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 “몰”이 부담합니다.<br>④ 이용자가 재화
									등을 제공받을 때 발송비를 부담한 경우에 “몰”은 청약철회 시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록
									명확하게 표시합니다.
								</p>
								<p>
									제17조(개인정보보호)<br>① “몰”은 이용자의 개인정보 수집시 서비스제공을 위하여 필요한 범위에서
									최소한의 개인정보를 수집합니다. <br>② “몰”은 회원가입시 구매계약이행에 필요한 정보를 미리 수집하지
									않습니다. 다만, 관련 법령상 의무이행을 위하여 구매계약 이전에 본인확인이 필요한 경우로서 최소한의 특정
									개인정보를 수집하는 경우에는 그러하지 아니합니다.<br>③ “몰”은 이용자의 개인정보를 수집?이용하는
									때에는 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. <br>④ “몰”은 수집된 개인정보를
									목적외의 용도로 이용할 수 없으며, 새로운 이용목적이 발생한 경우 또는 제3자에게 제공하는 경우에는
									이용?제공단계에서 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. 다만, 관련 법령에 달리 정함이 있는
									경우에는 예외로 합니다.<br>⑤ “몰”이 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는
									개인정보관리 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한
									정보제공 관련사항(제공받은자, 제공목적 및 제공할 정보의 내용) 등 「정보통신망 이용촉진 및 정보보호 등에 관한
									법률」 제22조제2항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수
									있습니다.<br>⑥ 이용자는 언제든지 “몰”이 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을
									요구할 수 있으며 “몰”은 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한
									경우에는 “몰”은 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.<br>⑦ “몰”은 개인정보
									보호를 위하여 이용자의 개인정보를 취급하는 자를 최소한으로 제한하여야 하며 신용카드, 은행계좌 등을 포함한
									이용자의 개인정보의 분실, 도난, 유출, 동의 없는 제3자 제공, 변조 등으로 인한 이용자의 손해에 대하여 모든
									책임을 집니다.<br>⑧ “몰” 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는
									제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.<br>⑨ “몰”은 개인정보의
									수집?이용?제공에 관한 동의란을 미리 선택한 것으로 설정해두지 않습니다. 또한 개인정보의 수집?이용?제공에 관한
									이용자의 동의거절시 제한되는 서비스를 구체적으로 명시하고, 필수수집항목이 아닌 개인정보의 수집?이용?제공에 관한
									이용자의 동의 거절을 이유로 회원가입 등 서비스 제공을 제한하거나 거절하지 않습니다.
								</p>
								<p>
									제18조(“몰“의 의무)<br>① “몰”은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지
									않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화.용역을 제공하는데 최선을 다하여야 합니다.<br>②
									“몰”은 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안
									시스템을 갖추어야 합니다.<br>③ “몰”이 상품이나 용역에 대하여 「표시.광고의 공정화에 관한 법률」
									제3조 소정의 부당한 표시.광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.<br>④
									“몰”은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.
								</p>
								<p>
									제19조(회원의 ID 및 비밀번호에 대한 의무)<br>① 제17조의 경우를 제외한 ID와 비밀번호에 관한
									관리책임은 회원에게 있습니다.<br>② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는
									안됩니다.<br>③ 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한
									경우에는 바로 “몰”에 통보하고 “몰”의 안내가 있는 경우에는 그에 따라야 합니다.
								</p>
								<p>
									제20조(이용자의 의무)<br>이용자는 다음 행위를 하여서는 안 됩니다.<br>1. 신청 또는
									변경시 허위 내용의 등록<br>2. 타인의 정보 도용<br>3. “몰”에 게시된 정보의 변경<br>4.
									“몰”이 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시<br>5. “몰” 기타
									제3자의 저작권 등 지적재산권에 대한 침해<br>6. “몰” 기타 제3자의 명예를 손상시키거나 업무를
									방해하는 행위<br>7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 몰에
									공개 또는 게시하는 행위
								</p>
								<p>
									제21조(연결“몰”과 피연결“몰” 간의 관계)<br>① 상위 “몰”과 하위 “몰”이 하이퍼링크(예:
									하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 전자를 연결 “몰”(웹
									사이트)이라고 하고 후자를 피연결 “몰”(웹사이트)이라고 합니다.<br>② 연결“몰”은 피연결“몰”이
									독자적으로 제공하는 재화 등에 의하여 이용자와 행하는 거래에 대해서 보증 책임을 지지 않는다는 뜻을 연결“몰”의
									초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증 책임을 지지 않습니다.
								</p>
								<p>
									제22조(저작권의 귀속 및 이용제한)<br>① “몰“이 작성한 저작물에 대한 저작권 기타 지적재산권은
									”몰“에 귀속합니다.<br>② 이용자는 “몰”을 이용함으로써 얻은 정보 중 “몰”에게 지적재산권이 귀속된
									정보를 “몰”의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나
									제3자에게 이용하게 하여서는 안됩니다.<br>③ “몰”은 약정에 따라 이용자에게 귀속된 저작권을 사용하는
									경우 당해 이용자에게 통보하여야 합니다.
								</p>
								<p>
									제23조(분쟁해결)<br>① “몰”은 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를
									보상처리하기 위하여 피해보상처리기구를 설치.운영합니다.<br>② “몰”은 이용자로부터 제출되는 불만사항
									및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을
									즉시 통보해 드립니다.<br>③ “몰”과 이용자 간에 발생한 전자상거래 분쟁과 관련하여 이용자의
									피해구제신청이 있는 경우에는 공정거래위원회 또는 시?도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.
								</p>
								<p>
									제24조(재판권 및 준거법)<br>① “몰”과 이용자 간에 발생한 전자상거래 분쟁에 관한 소송은 제소
									당시의 이용자의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소
									당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.<br>②
									“몰”과 이용자 간에 제기된 전자상거래 소송에는 한국법을 적용합니다.<br>
								</p>
								<p>
									<br>
								</p>
								<div
									style="font-family: arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);">
									<font face="arial, helvetica, sans-serif">#카카오톡 알림톡 시행에
										관한 내용</font>
								</div>
								<div
									style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">
									<font face="arial, helvetica, sans-serif"><span
										style="color: rgb(51, 51, 51);">“모던이프 쇼핑몰”은</span><span
										style="color: rgb(51, 51, 51);">&nbsp;</span><font
										style="color: rgb(51, 51, 51);">회원가입, 주문안내, 배송안내 등 비광고성
											정보를 카카오톡 알림톡으로 알려드리며, 만약 알림톡 수신이 불가능하거나 수신 차단하신 경우에는 일반 문자
											메시지로 보내드립니다. 카카오톡 알림톡을 통해 안내되는 정보를 와이파이가 아닌 이동통신망으로 이용할 경우,
											알림톡 수신 중 데이터 요금이 발생할 수 있습니다. 카카오톡을 통해 발송되는 알림톡 수신을 원치 않으실 경우
											반드시 알림톡을 차단하여 주시기 바랍니다.</font></font>
								</div>
							</div>
							<p class="check">
								<span>이용약관에 동의하십니까?</span> <input id="agree_service_check0"
									name="agree_service_check[]" fw-filter="/1/" fw-label="이용약관 동의"
									fw-msg="이용약관에 동의 하세요" value="1" type="checkbox" /><label
									for="agree_service_check0">동의함</label>
							</p>
						</div>
						<h3>개인정보 수집 및 이용 동의</h3>
						<div class="agreeArea">
							<div class="agree">
								<p>&nbsp;** 본 양식은 쇼핑몰 운영에 도움을 드리고자 샘플로 제공되는 서식으로 쇼핑몰 운영형태에
									따른 수정이 필요합니다. 쇼핑몰에 적용하시기 전, 쇼핑몰 운영 사항 등을 확인하시고 적절한 내용을 반영하여
									사용하시기 바랍니다. **</p>
								<p>1. 개인정보 수집목적 및 이용목적</p>
								<p>가. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산</p>
								<p>콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송 , 금융거래 본인 인증 및 금융
									서비스</p>
								<p>나. 회원 관리</p>
								<p>회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지 ,
									가입 의사 확인 , 연령확인 , 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 불만처리 등
									민원처리 , 고지사항 전달</p>
								<p>2. 수집하는 개인정보 항목 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 자택 전화번호
									, 휴대전화번호 , 이메일 , 14세미만 가입자의 경우 법정대리인의 정보</p>
								<p>3. 개인정보의 보유기간 및 이용기간</p>
								<p>원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 다음의
									정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.</p>
								<p>가. 회사 내부 방침에 의한 정보 보유 사유</p>
								<p>o 부정거래 방지 및 쇼핑몰 운영방침에 따른 보관 : 5년</p>
								<p>나. 관련 법령에 의한 정보보유 사유</p>
								<p>o 계약 또는 청약철회 등에 관한 기록</p>
								<p>-보존이유 : 전자상거래등에서의소비자보호에관한법률</p>
								<p>-보존기간 : 5년</p>
								<p>o 대금 결제 및 재화 등의 공급에 관한 기록</p>
								<p>-보존이유: 전자상거래등에서의소비자보호에관한법률</p>
								<p>-보존기간 : 5년&nbsp;</p>
								<p>o 소비자 불만 또는 분쟁처리에 관한 기록</p>
								<p>-보존이유 : 전자상거래등에서의소비자보호에관한법률</p>
								<p>-보존기간 : 3년&nbsp;</p>
								<p>o 로그 기록&nbsp;</p>
								<p>-보존이유: 통신비밀보호법</p>
								<p>-보존기간 : 3개월</p>
								<p>※ 동의를 거부할 수 있으나 거부시 회원 가입이 불가능합니다.</p>
								<p>
									<br>
								</p>
								<div
									style="font-family: arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);">
									<font face="arial, helvetica, sans-serif">#개인정보의 위탁 처리</font>
								</div>
								<div
									style="font-family: arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);">
									<font face="arial, helvetica, sans-serif">모던이프 쇼핑몰은 서비스
										향상을 위해 관계법령에 따라 회원의 동의를 얻거나 관련 사항을 공개 또는 고지 후 회원의 개인정보를 외부에
										위탁하여 처리하고 있습니다. 모던이프 쇼핑몰 의 개인정보처리 수탁자와 그 업무의 내용은 다음과 같습니다.</font>
								</div>
								<div
									style="font-family: arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);">
									<font face="arial, helvetica, sans-serif">- 수탁자 :
										(주)루나소프트<br>
									</font>
								</div>
								<div
									style="font-family: arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);">
									<font face="arial, helvetica, sans-serif">- 위탁 업무 내용 :
										카카오톡 알림톡 발송 업무</font>
								</div>
							</div>
							<p class="check">
								<span>개인정보 수집 및 이용에 동의하십니까?</span> <input
									id="agree_privacy_check0" name="agree_privacy_check[]"
									fw-filter="/1/" fw-label="개인정보 수집 및 이용 방침"
									fw-msg="개인정보 수집 및 이용 방침에 동의하세요" value="1" type="checkbox" /><label
									for="agree_privacy_check0">동의함</label>
							</p>
						</div>
											<div class="btnArea center smp-btn-reg">
						<a href="#none" onclick="memberJoinAction()">SUBMIT</a>
					</div>
					</div>

			</div>

		</div>
		<%@ include file="commons/footer.jsp"%>
</body>

</html>
