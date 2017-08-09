<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name= viewport content= width=device-width initial-scale=1.0>
<title>Insert title here</title>
<style type="text/css">
#body{
	height:600px;
}
 /* Clip */
        #clip {
            padding: 50px 0;
        }

        #clip .signupnow {
            background-color: #f4f4f4;
            border: 1px solid #e1e3e2;
            text-align: center;
            padding: 30px;
            border-radius: 4px;
        }

        #clip .signupnow h4 {
            margin-top: 0;
            margin-bottom: 30px;
            font-size: 18px;
            color: #000;
            font-weight: 100;
            line-height: 1.4;

        }

        #clip .btn-primary {
            border-radius: 4px;
            border: 0;
            font-size: 14px;
            font-weight: 100;
            background-color: #4fa2f1;
        }

        #clip .clip-wrap h3 {
            font-size: 20px;
            color: #fff;
            font-weight: 100;
            margin-bottom: 0;
            position: absolute;
            bottom: 20px;
        }

        #clip .clip-wrap small {
            font-size: 14px;
            color: #fff;
            display: block;
            margin-top: 5px;
        }

        #clip .clip-wrap {
            position: relative;
            margin: 0 20px 15px;
            padding: 20px;
            cursor: pointer;
            background-size: cover;
        }

        #clip .clip-wrap img {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 40px;
            height: 40px;
            margin-top: -20px;
            margin-left: -20px;
        }
        #clip .col-xs-12 {
        }

        #clip .clip-bg-01 {
            background-image: url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/clip_img_01.png');
            height: 322px;
        }

        #clip .clip-bg-02 {
            background-image: url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/clip_img_02.png');
            height: 322px;
        }

        #clip .clip-bg-03 {
            background-image: url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/clip_img_03.png');
            height: 322px;
        }
        #clip .clip-bg-04 {
            background-image: url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/clip_img_04.png');
            height: 322px;
        }
        #clip .clip-bg-05 {
            background-image: url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/clip_img_05.png');
            height: 322px;
        }
        #clip .clip-bg-06 {
            background-image: url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/clip_img_06.png');
            height: 322px;
        }
        #clip .clip-bg-07 {
            background-image: url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/clip_img_07.png');
            height: 322px;
        }
        #clip .clip-bg-08 {
            background-image: url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/clip_img_08.png');
            height: 322px;
        }
        #clip .clip-bg-09 {
            background-image: url('https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/clip_img_09.png');
            height: 322px;
        }
</style>
<%@ include file="commons/header.jsp"%>
</head>
<body>

	<div id="container">

		<div class="main_contents">
			<!-- 본문영역 -->
			<div>
			<%@ include file="commons/category_menu.jsp"%>
			</div>
			    <div id="clip" class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <img alt="" src="${pageContext.request.contextPath}/images/text.png" width="100%" height="80">
                    <br>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12 col-sm-8 " data-toggle="modal" data-target="#clipModal"
                     data-ytb="https://www.youtube.com/embed/p291Tk-29Co">
                    <div class="row">
                        <div class="clip-wrap clip-bg-04">
                            <img src="https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/btn_clip_play.png">
                            <h3>포토그래퍼
                                <small>강휘원 고수</small>
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="row">
                        <div class="clip-wrap clip-bg-05" data-toggle="modal" data-target="#clipModal"
                             data-ytb="https://www.youtube.com/embed/-JL5G7JqDps">
                            <img src="https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/btn_clip_play.png">
                            <h3>이사
                                <small>박환준 고수</small>
                            </h3>
                        </div>

                    </div>
                    <div class="row">
                        <div data-toggle="modal" data-target="#clipModal"
                             data-ytb="https://www.youtube.com/embed/9_YQ9JAevo8">
                            <div class="clip-wrap clip-bg-06">
                                <img src="https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/btn_clip_play.png">
                                <h3>웨딩플래너
                                    <small>이성희 고수</small>
                                </h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col-xs-12 col-sm-4">
                    <div class="row">
                        <div class="clip-wrap clip-bg-07" data-toggle="modal" data-target="#clipModal"
                             data-ytb="https://www.youtube.com/embed/LwUFczpI_Lg">
                            <img src="https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/btn_clip_play.png">
                            <h3>청소도우미
                                <small>이은혜 고수</small>
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="row">
                        <div class="clip-wrap clip-bg-08" data-toggle="modal" data-target="#clipModal"
                             data-ytb="https://www.youtube.com/embed/y0liZPfvgpA">
                            <img src="https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/btn_clip_play.png">
                            <h3>퍼스널 트레이너
                                <small>박주형 고수</small>
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="row">
                        <div class="clip-wrap clip-bg-09" data-toggle="modal" data-target="#clipModal"
                             data-ytb="https://www.youtube.com/embed/q3G7882275g">
                            <img src="https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/btn_clip_play.png">
                            <h3>피아니스트
                                <small>윤다정 고수</small>
                            </h3>
                        </div>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="signupnow">
                        <h4>
                            고수로 가입하면 무료로 고객들의 요청서를 받아볼 수 있어요.
                        </h4>
                        <a href="/pro">
                            <button class="btn btn-primary btn-lg">고수로 가입하기</button>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

		</div>
	</div>

	<%@ include file="commons/footer.jsp"%>

</body>
</html>