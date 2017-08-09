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

</style>
</head>
<body class="">
	<div id="mainCarousel" class="hero-container hero01">
		<div class="container">
			<div class="text-wrap">
				<h1 class="with-headline-btn">숨고가 딱! 맞는 고수를 소개해 드려요</h1>
				<form class="service-search form-group-lg">
					<div id="id_input_group_wrap" class="input-group">
						<input type="text" class="form-control search-keyword"
							placeholder="어떤 전문가를 찾으세요?" name="q" autocomplete="off">
						<span class="input-group-btn">
							<button class="btn btn-primary btn-md" type="submit">
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
						<strong>228,045</strong> 개
					</div>
				</div>
				<div class="category">
					<div class="cname">등록된 고수</div>
					<div>
						<strong>55,633</strong> 명
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
</body>
</html>