<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description"
	content="Slide Down Box Menu with jQuery and CSS3" />
<meta name="keywords"
	content="jquery, css3, sliding, box, menu, cube, navigation, portfolio, thumbnails" />
<meta charset="utf-8">
<!-- jQuery ui style sheet -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- jQuery library -->
<script src="https://code.jquery.com/jquery.js"></script>
<!-- jQuery ui library -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>




<style>
span.sdt_wrap:hover span.sdt_link{
	
	color: white;
}

body {
	font-family: Arial;
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
/* #add_request { */
/* display: inline-block; */
/* 	outline: none; */
/* 	cursor: pointer; */
/* 	text-align: center; */
/* 	text-decoration: none; */
/* 	font: 14px/100% Arial, Helvetica, sans-serif; */
/* 	padding: .5em 2em .55em; */
/* 	text-shadow: 0 1px 1px rgba(0,0,0,.3); */
/* 	-webkit-border-radius: .5em;  */
/* 	-moz-border-radius: .5em; */
/* 	border-radius: .5em; */
/* 	-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2); */
/* 	-moz-box-shadow: 0 1px 2px rgba(0,0,0,.2); */
/* 	box-shadow: 0 1px 2px rgba(0,0,0,.2); */
/* } */

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
<title>Insert title here</title>
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
</head>
<body>


	<div class="content" style="height:350px">

		<!-- 검색 창 form Start-->
		<div id="search_form" style="margin-left: 20%">
			<input id="search" type="text" placeholder="    검색어를 입력하세요">
			<button style="font-weight: bold; font-family: 'Cooper Black';">SEARCH</button>
		</div>
		<!-- 검색 창 form End-->

		<!-- Category Box Start -->


		<div id="categoryBox" style="margin-left: 20%;">
			<h1 class="title">Slide Down Box Menu with jQuery and CSS3</h1>
			<ul id="sdt_menu" class="sdt_menu">
				<li style=""><a href="/HELP/category1List.jsp" style="background: darkgray;"> <img src="${pageContext.request.contextPath}/images/piano.jpg" alt="" /> <span
						class="sdt_active"></span> <span class="sdt_wrap"> <span
							class="sdt_link" style="font-weight: bold;">피아노</span> <span class="sdt_descr">Learn the piano</span>
					</span>
				</a></li>
				<li style=""><a href="/HELP/category2List.jsp" style="background: darkgray;"> <img src="${pageContext.request.contextPath}/images/move.jpg" alt="" /> <span
						class="sdt_active"></span> <span class="sdt_wrap"> <span
							class="sdt_link" style="font-weight: bold;">이사</span> <span class="sdt_descr">Move house</span>
					</span>
				</a></li>

				<li style=""><a href="/HELP/category3List.jsp" style="background: darkgray;"> <img src="${pageContext.request.contextPath}/images/webDevelop.jpg" alt="" /> <span
						class="sdt_active"></span> <span class="sdt_wrap"> <span
							class="sdt_link" style="font-weight: bold;">웹 개발</span> <span class="sdt_descr">Do web development</span>
					</span>
				</a></li>
				<li style=""><a href="/HELP/category4List.jsp" style="background: darkgray;"> <img src="${pageContext.request.contextPath}/images/potoshop.jpg" alt="" /> <span
						class="sdt_active"></span> <span class="sdt_wrap"> <span
							class="sdt_link" style="font-weight: bold;">포토샵</span> <span class="sdt_descr">Learn Photoshop</span>
					</span>
				</a></li>
				<li style=""><a href="/HELP/category5List.jsp" style="background: darkgray;"> <img src="${pageContext.request.contextPath}/images/wedding.jpg" alt="" /> <span
						class="sdt_active"></span> <span class="sdt_wrap"> <span
							class="sdt_link" style="font-weight: bold;">결혼</span> <span class="sdt_descr">Prepare for marriage</span>
					</span>
				</a></li>
				<li><div id="add_request" >
	
				<button onclick="request_go()" style="font-weight: bold; margin-left: 15px; margin-top: 10px; font-family: 'Cooper Black', '뫼비우스 Bold';">
				견적서 등록
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


	<!-- The JavaScript -->
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