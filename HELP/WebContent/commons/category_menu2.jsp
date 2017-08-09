<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link type="text/css" rel="stylesheet" href="https://soomgo.s3.ap-northeast-2.amazonaws.com/static/common/min/vender.min.css?ver=1PfeFGslHCk1iul">
<link type="text/css" rel="stylesheet" href="https://soomgo.s3.ap-northeast-2.amazonaws.com/static/common/min/sg.min.css?ver=1PfeFGslHCk1iul">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
#mainCarousel {
	background-image:
		url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/index_hero_01_m.jpg');
	transition: background-image 1s linear;
	-moz-transition: background-image 1s linear;
	-webkit-transition: background-image 1s linear;
	-ms-transition: background-image 1s linear;
	-webkit-backface-visibility: hidden;
}

#mainCarousel.hero01 {
	background-image:
		url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/index_hero_04_m.jpg');
}

#mainCarousel.hero02 {
	background-image:
		url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/index_hero_05_m.jpg');
}

#mainCarousel.hero03 {
	background-image:
		url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/index_hero_06_m.jpg');
}

#mainCarousel.hero04 {
	background-image:
		url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/index_hero_01_m.jpg');
}

#mainCarousel.hero05 {
	background-image:
		url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/index_hero_02_m.jpg');
}

#mainCarousel.hero06 {
	background-image:
		url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/index_hero_03_m.jpg');
}

@media ( min-width : 768px) {
	#mainCarousel.hero01 {
		background-image:
			url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/index_hero_04.jpg');
	}
	#mainCarousel.hero02 {
		background-image:
			url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/index_hero_05.jpg');
	}
	#mainCarousel.hero03 {
		background-image:
			url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/index_hero_06.jpg');
	}
	#mainCarousel.hero04 {
		background-image:
			url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/index_hero_01.jpg');
	}
	#mainCarousel.hero05 {
		background-image:
			url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/index_hero_02.jpg');
	}
	#mainCarousel.hero06 {
		background-image:
			url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/index_hero_03.jpg');
	}
}

#mainCarousel h1 {
	margin-bottom: 30px;
}

#mainCarousel .visible-xs input, #mainCarousel .visible-xs button,
	#mainCarousel .visible-xs .form-group-lg, #mainCarousel .visible-xs .form-control
	{
	border-radius: 4px;
}

#mainCarousel .service-search .visible-xs button {
	margin-top: 20px;
}

#mainCarousel .service-search .form-control {
	font-size: 16px;
	color: #909090;
}

.service-search .btn-primary {
	border: 1px solid #4fa2f1;
	padding: 14px 24px 14px;
	vertical-align: bottom;
}

#mainCarousel .service-search .btn-primary {
	height: 46px;
	border-top-right-radius: 4px;
	border-bottom-right-radius: 4px;
}

#id_input_group_wrap {
	background-color: rgba(0, 0, 0, 0.4);
	border-radius: 6px;
	padding: 10px;
	margin: 0 -10px;
}

span.sdt_wrap:hover span.sdt_link{
	
	color: white;
}

span.reference {
	position: fixed;
	left: 10px;
	bottom: 10px;
	font-size: 12px;
}

span.reference a {
	color: #aaa;
	text-transform: uppercase;
	text-decoration: none;
	text-shadow: 1px 1px 1px #000;
	margin-right: 30px;
}

span.reference a:hover {
	color: #ddd;
}

ul.sdt_menu {
	/* 			margin-top:50px; */
	
}

h1.title {
	text-indent: -9000px;
	background: transparent url(title.png) no-repeat top left;
	width: 633px;
	height: 69px;
}

input[type=text]:focus {
	border: 3px solid #555;
}

input[type=text] {
	border: 3px solid #555;
	border-radius: 20px;
	width: 60%;
	height: 60px;
	font-size: 25px;
	background-image: url('searchicon.png');
}

button {
	border-radius: 20px;
	background: #555;
	color: #fff;
	border: none;
	position: relative;
	height: 60px;
	font-size: 1.6em;
	padding: 0 2em;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
}

button:hover {
	background: #fff;
	color: #555;
}

button:before, button:after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: #555;
	transition: 400ms ease all;
}

button:after {
	right: inherit;
	top: inherit;
	left: 0;
	bottom: 0;
}

button:hover:before, button:hover:after {
	width: 100%;
	transition: 800ms ease all;
}

#categoryBox {
	margin-left: 10%
}

</style>
</head>
<script type="text/javascript">
	$(function(){
		var searchKeywords = [
				"이사", "이사 견적서", "이사고수", "포장 이사", "대형 이사",
				"피아노", "피아노 견적서", "피아니스트",
				"웹 개발", "웹 견적서", "웹 프로그래밍", "웹 개발자",
				"결혼", "결혼 사회자", "결혼식", "결혼 견적서",
				"포토샵", "포토샵 견적서", "포토그래퍼"
		];
		
			$("#search").autocomplete({
				source: searchKeywords,
			    matchContains: false,
			    selectFirst: false
			});
		});
</script>
<body class="">
	<div id="mainCarousel" class="hero-container hero01">
		<div class="container">
			<div class="text-wrap">
				<h1 class="with-headline-btn" style="font-size: 35px;">H.E.L.P가 딱! 맞는 고수를 소개해 드려요</h1>
				<form class="service-search form-group-lg">
					<div id="id_input_group_wrap" class="input-group">
						<input type="text" class="form-control search-keyword"
							placeholder="어떤 전문가를 찾으세요?" name="q" autocomplete="off" id="search">
						<span class="input-group-btn">
							<button class="btn btn-primary btn-md" type="submit" style="background-color: #555; border-color: #555;">
								<i class="fa fa-search visible-xs" aria-hidden="true" class=""></i>
								<span class="hidden-xs">고수찾기</span>
							</button>
						</span>
					</div>
				</form>
			</div>
		</div>
		<div class="ticker">
			<div class="ticker-wrap">
				<div class="category">
					<div class="cname">누적 요청서</div>
					<div>
						<strong>60,045</strong> 개
					</div>
				</div>
				<div class="category">
					<div class="cname">등록된 고수</div>
					<div>
						<strong>15,633</strong> 명
					</div>
				</div>
				<div class="category">
					<div class="cname">견적서 도달률</div>
					<div>
						<strong>90.09</strong> %
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="content" style="height:350px">

		<!-- 검색 창 form Start-->
		<!-- <div id="search_form" style="margin-left: 20%">
			<input id="search" type="text" placeholder="    검색어를 입력하세요">
			<button style="font-weight: bold;">Search</button>
		</div> -->
		<!-- 검색 창 form End-->

		<!-- Category Box Start -->


		<div id="categoryBox" style="margin-left: 20%;">
			<h1 class="title">Slide Down Box Menu with jQuery and CSS3</h1>
			<ul id="sdt_menu" class="sdt_menu">
				<li style=" border: 1px solid #555;"><a href="/HELP/category1List.jsp"> <img src="${pageContext.request.contextPath}/images/piano.jpg" alt="" /> <span
						class="sdt_active"></span> <span class="sdt_wrap"> <span
							class="sdt_link">피아노</span> <span class="sdt_descr">Learn the piano</span>
					</span>
				</a></li>
				<li style=" border: 1px solid #555;"><a href="/HELP/category2List.jsp"> <img src="${pageContext.request.contextPath}/images/move.jpg" alt="" /> <span
						class="sdt_active"></span> <span class="sdt_wrap"> <span
							class="sdt_link">이사</span> <span class="sdt_descr">Move house</span>
					</span>
				</a></li>

				<li style=" border: 1px solid #555;"><a href="/HELP/category3List.jsp"> <img src="${pageContext.request.contextPath}/images/webDevelop.jpg" alt="" /> <span
						class="sdt_active"></span> <span class="sdt_wrap"> <span
							class="sdt_link">웹 개발</span> <span class="sdt_descr">Do web development</span>
					</span>
				</a></li>
				<li style=" border: 1px solid #555;"><a href="/HELP/category4List.jsp"> <img src="${pageContext.request.contextPath}/images/potoshop.jpg" alt="" /> <span
						class="sdt_active"></span> <span class="sdt_wrap"> <span
							class="sdt_link">포토샵</span> <span class="sdt_descr">Learn Photoshop</span>
					</span>
				</a></li>
				<li style=" border: 1px solid #555;"><a href="/HELP/category5List.jsp"> <img src="${pageContext.request.contextPath}/images/wedding.jpg" alt="" /> <span
						class="sdt_active"></span> <span class="sdt_wrap"> <span
							class="sdt_link">결혼</span> <span class="sdt_descr">Prepare for marriage</span>
					</span>
				</a></li>
				<li><div id="add_request" >
	
				<button onclick="request_go()" style="font-weight: bold; margin-left: 15px; margin-top: 10px">
				요청서 등록
				</button>


				</div></li>

			</ul>
		</div>
	</div>
	<!-- Category Box End -->
	


	<div>
		<span class="reference"> <a
			href="http://tympanus.net/codrops/2010/07/16/slide-down-box-menu/">back
				to the Codrops Tutorial</a> <a
			href="http://www.flickr.com/photos/arcticpuppy/sets/72157622090180990/">Images
				by tibchris</a>
		</span>
	</div>
	
	<script type="text/javascript">
	
		var request_go =function(){
			window.location="request.help";
		}
	
		$(function() {
			/**
			 * for each menu element, on mouseenter,
			 * we enlarge the image, and show both sdt_active span and
			 * sdt_wrap span. If the element has a sub menu (sdt_box),
			 * then we slide it - if the element is the last one in the menu
			 * we slide it to the left, otherwise to the right
			 */
			$('#sdt_menu > li')
					.bind(
							'mouseenter',
							function() {
								var $elem = $(this);
								$elem
										.find('img')
										.stop(true)
										.animate({
											'width' : '170px',
											'height' : '170px',
											'left' : '0px'
										}, 400, 'easeOutBack')
										.andSelf()
										.find('.sdt_wrap')
										.stop(true)
										.animate({
											'top' : '140px'
										}, 500, 'easeOutBack')
										.andSelf()
										.find('.sdt_active')
										.stop(true)
										.animate(
												{
													'height' : '170px'
												},
												300,
												function() {
													var $sub_menu = $elem
															.find('.sdt_box');
													if ($sub_menu.length) {
														var left = '170px';
														if ($elem.parent()
																.children().length == $elem
																.index() + 1)
															left = '-170px';
														$sub_menu
																.show()
																.animate(
																		{
																			'left' : left
																		}, 200);
													}
												});
							}).bind(
							'mouseleave',
							function() {
								var $elem = $(this);
								var $sub_menu = $elem.find('.sdt_box');
								if ($sub_menu.length)
									$sub_menu.hide().css('left', '0px');

								$elem.find('.sdt_active').stop(true).animate({
									'height' : '0px'
								}, 300).andSelf().find('img').stop(true)
										.animate({
											'width' : '0px',
											'height' : '0px',
											'left' : '85px'
										}, 400).andSelf().find('.sdt_wrap')
										.stop(true).animate({
											'top' : '25px'
										}, 500);
							});
		});
	</script>
</body>
</html>