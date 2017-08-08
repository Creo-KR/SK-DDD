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

<style>
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
</head>
<body>


	<div class="content" style="height:300px">

		<!-- 검색 창 form Start-->
		<div id="search_form" style="margin-left: 20%">
			<input id="search" type="text" placeholder="    검색어를 입력하세요">
			<button>Search</button>
		</div>
		<!-- 검색 창 form End-->

		<!-- Category Box Start -->


		<div id="categoryBox" style="margin-left: 20%">
			<h1 class="title">Slide Down Box Menu with jQuery and CSS3</h1>
			<ul id="sdt_menu" class="sdt_menu">
				<li><a href="/HELP/category1List.jsp"> <img src="${pageContext.request.contextPath}/images/2.jpg" alt="" /> <span
						class="sdt_active"></span> <span class="sdt_wrap"> <span
							class="sdt_link">카테고리 1</span> <span class="sdt_descr">Get
								to know me</span>
					</span>
				</a></li>
				<li><a href="/HELP/category2List.jsp"> <img src="${pageContext.request.contextPath}/images/1.jpg" alt="" /> <span
						class="sdt_active"></span> <span class="sdt_wrap"> <span
							class="sdt_link">카테고리 2</span> <span class="sdt_descr">My
								work</span>
					</span>
				</a></li>

				<li><a href="/HELP/category3List.jsp"> <img src="${pageContext.request.contextPath}/images/3.jpg" alt="" /> <span
						class="sdt_active"></span> <span class="sdt_wrap"> <span
							class="sdt_link">카테고리 3</span> <span class="sdt_descr">Where
								ideas get born</span>
					</span>
				</a></li>
				<li><a href="/HELP/category4List.jsp"> <img src="${pageContext.request.contextPath}/images/4.jpg" alt="" /> <span
						class="sdt_active"></span> <span class="sdt_wrap"> <span
							class="sdt_link">카테고리 4</span> <span class="sdt_descr">I
								like to photograph</span>
					</span>
				</a></li>
				<li><a href="/HELP/category5List.jsp"> <img src="${pageContext.request.contextPath}/images/5.jpg" alt="" /> <span
						class="sdt_active"></span> <span class="sdt_wrap"> <span
							class="sdt_link">카테고리 5</span> <span class="sdt_descr">I
								write about design</span>
					</span>
				</a></li>
				<li><div id="add_request" >
	
				<button onclick="request_go()">
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