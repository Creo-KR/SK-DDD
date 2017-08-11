<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link
	href="http://ts.daumcdn.net/custom/blog/0/606/skin/images/nanumgothic.css"
	rel="stylesheet" type="text/css">
	<link type="text/css" rel="stylesheet" href="https://soomgo.s3.ap-northeast-2.amazonaws.com/static/common/min/vender.min.css?ver=V8YCtBUomNLhhiq">
<style>
/* 폰트설정 */
.t3 {
	position: relative;
	font-size: 13px;
	font-family: 'Nanum Gothic'
}

.t3 h3 {
	font-size: 1.69em;
	margin-bottom: 0.75em;
	color: #323232;
	letter-spacing: -0.05em;
}

.t3 .tblWrap {
	width: 100%;
	overflow: hidden;
}

.t3 table {
	width: 90% !important;
	letter-spacing: -0.05em;
	border-top: 3px solid #37315d;
	border-bottom: 2px solid #e2e2e2;
	border-spacing: 0;
	border-collapse: collapse;
	line-height: 18px;
}

.t3 thead tr:first-child th {
	border-top: 0;
}

.t3 th, .t3 td {
	padding: 10px 0;
	font-weight: 400;
	text-align: center;
	border-top: 1px solid #e2e2e2;
	border-left: 1px solid #e2e2e2;
}

.t3 thead tr:first-child th:first-child, .t3 td.ty3 {
	border-left: 0;
}

.t3 th {
	background: #f4f4f4;
}

.t3 th.ty1 {
	background: #f4efe4;
}

.t3 td.ty1 {
	background: #fcf5e9;
}

.t3 td.ty2 {
	color: #005c9a;
}

.t3 td.ty3 {
	color: #e72744;
	font-weight: bold
}

.t3 td.ty4 {
	color: #e72744;
}
</style>

<style>  
        /* Story */
        #story {
            background-color: #f4f5f6;
            padding: 50px 0;
        }

        #story .thumbnail {
            padding: 0;
            border-color: #e1e3e2;
        }

        #story .thumbnail-wrap {
            padding: 0 10px;
        }

        #story .thumbnail-wrap:last-child .thumbnail {
            margin-bottom: 0;
        }

        #story .thumbnail img.img-responsive {
            min-height: 275px;
        }

        #story .quote {
            text-align: center;
            margin-bottom: 20px
        }

        #story .caption {
            padding: 20px;
            font-size: 14px;
            color: #000;
            min-height: 230px;
            line-height: 1.6;
            max-height: 265px;
        }

        #story .request-btn {
            margin: 10px 0 5px 0;
            text-align: center;
        }

        #story h3 {
            font-size: 18px;
            color: #fff;
            font-weight: 100;
            margin: 0;
            padding-left: 18px;
            padding-right: 18px;
            position: relative;
            top: 210px;
        }

        #story small {
            font-size: 14px;
            color: #fff;
            display: block;
            margin-top: 8px;
        }


        #story .media {
            border-top: 1px solid #eee;
            margin: 0 20px 20px;
            padding-top: 20px;
        }

        #story .thumb {
            display: inline-block;
            width: 64px;
            height: 64px;
        }

        #story .thumb img {
            width: 64px;
            height: 64px;
        }
        #story .img-reviewer {
            width: 64px;
        }
        #story .media-body .star img {
            vertical-align: baseline;
            display: inline;

        }

        #story .star {
            font-size: 12px;
            color: #000;
            vertical-align:bottom;
            line-height: 25px;
            margin-right: 3px;
            padding-top: 5px;

        }

        #story .reviewer {
            font-size: 16px;
            color: #000;
            margin-top: 5px;
        }

        .slick-prev:before {
            content: none !important;
        }

        .slick-next:before {
            content: none !important;
        }

        /* RESPONSIVE CSS DESKTOP
        -------------------------------------------------- */

        @media (min-width: 768px) {

            /* Story */
            #story {
                background-color: #f4f5f6;
                padding: 100px 0;
            }

            #story .thumbnail {
                padding: 0;
                border-color: #e1e3e2;
            }

            #story .thumbnail-wrap {
                padding: 0 5px;
            }

            #story .thumbnail img.img-responsive {
                min-height: 275px;
            }

            #story .quote {
                text-align: center;
                margin-bottom: 20px
            }

            #story .caption {
                padding: 20px;
                font-size: 14.5px;
                color: #909090;
                min-height: 215px;
                line-height: 1.6;
            }

            #story h3 {
                font-size: 18px;
                margin: 0;
                padding-left: 20px;
                padding-right: 20px;
                position: relative;
                top: 200px;
            }

            #story small {
                font-size: 14px;
                color: #fff;
                display: block;
            }

            #story .media {
                border-top: 1px solid #eee;
                margin: 0 20px 20px;
                padding-top: 20px;
            }

            #story .thumb {
                display: inline-block;
                width: 64px;
                height: 64px;
            }

            #story .thumb img {
                width: 64px;
                height: 64px;
            }

            #story .star {
                font-size: 12px;
                color: #000;
                line-height: 12px;
                vertical-align: bottom;
            }

            #story .reviewer {
                font-size: 16px;
                color: #000
                margin-top: 12px;
                margin-bottom: 5px;
            }

        }
</style>

<script>
	//신청하기 (고수 - 고수가 일반인의 요청서를 신청한다)
	var apply_go = function() {
		joinChatroom(${requestDetailKey.r_writer});
	}



	//완료하기 (일반인)
	var complete_go = function() {
		window.location = "completeRequest.help?r_no=${requestDetailKey.r_no}";
	}
</script>
</head>


<%@ include file="commons/header.jsp"%>
<body>
	<div id="container">
		<div class="main_contents">
			<!-- 본문영역 -->
			<div class="t3">
				<h1>
					&lt;요청서 상세 페이지&gt;
				</h1>

				<div class="tblWrap">
					<table>
						<tr>
							<th style="width: 200px">요청서 번호 :</th>
							<td class="ty2">${requestDetailKey.r_no}</td>
						</tr>
						<tr>
							<th>카테고리 :</th>
							<c:if test="${requestDetailKey.c_no == 1}">
								<td class="ty2" data-title="Name">피아노</td>
							</c:if>
							<c:if test="${requestDetailKey.c_no == 2}">
								<td class="ty2" data-title="Name">이사</td>
							</c:if>
							<c:if test="${requestDetailKey.c_no == 3}">
								<td class="ty2" data-title="Name">웹 개발</td>
							</c:if>
							<c:if test="${requestDetailKey.c_no == 4}">
								<td class="ty2" data-title="Name">포토 샵</td>
							</c:if>
							<c:if test="${requestDetailKey.c_no == 5}">
								<td class="ty2" data-title="Name">결혼</td>
							</c:if>

						</tr>
						<tr>
							<th>제목 :</th>
							<td class="ty2">${requestDetailKey.r_title}</td>
						</tr>
						<tr>
							<th>내용 :</th>
							<td class="ty2"><c:forEach var="content"
									items="${contentSplit}">
									<table style="border-style: hidden;">
										<tr>
											<td>${content}</td>
										</tr>
									</table>
								</c:forEach></td>
						</tr>
						<tr>
							<th>날짜 :</th>
							<td class="ty2">${requestDetailKey.r_date}</td>
						</tr>
					</table>
				</div>

				<div style="width: 100%; text-align: center">
					<!-- UTYPE(0=일반인, 1=사용자), flag(0=신청하기버튼) -->
					<c:if test="${UTYPE==1}">
						<c:if test="${flag==0}">
							<button onclick="apply_go()"
								style="font-weight: bold; margin-left: 15px; margin-top: 10px">
								신청하기</button>
						</c:if>
					</c:if>

					<!-- UTYPE(0=일반인, 1=사용자), flag(0=고용버튼,1=완료하기버튼) -->
					<c:if test="${UTYPE==0}">
						<c:if test="${flag==1}">
							<button onclick="complete_go()"
								style="font-weight: bold; margin-left: 15px; margin-top: 10px">
								완료하기</button>
						</c:if>
					</c:if>
				</div>
			</div>
			
			 <div>
         <%-- <c:if test="${UTYPE==0}">
            <c:if test="${flag==0}">
            <c:forEach var="apply" items="${apply}">
               <div style="width: 100%; height: 200px; background-color: red">

                  
                  <div
                     style="width: 33%; background-color: blue; display: inline-block">
                     <table>
                        <tr>
                           <td style="width: 33%">이름</td>
                           <td>${apply.m_name}</td>
                        </tr>
                        <tr>
                           <td>전화번호</td>
                           <td>${apply.m_tel}</td>
                        </tr>
                        <tr>
                           <td>이메일 주소</td>
                           <td>${apply.m_email}</td>
                        </tr>
                        <tr>
                           <td>내용</td>
                           <td>${apply.m_intro}</td>
                        </tr>
                        <tr>
                           <td>
                           
                                 <button onclick="hire_go()"
                                    style="font-weight: bold; margin-left: 15px; margin-top: 10px">
                                    <script>
                                	//고용하기 (일반인 - 일반인이 고수를 고용한다)
                                	var hire_go = function() {
                                		window.location = "hireGosu.help?r_no=${requestDetailKey.r_no}&g_no=${apply.m_no}";
                                	}
                                    </script>
                                    
                                    고용하기</button>
     
                              </td>
                        </tr>


                     </table>
                  </div>



               </div>
            </c:forEach>


            </c:if>
         </c:if> --%>

   </div>
   
   <script src="https://d3tvtfb6518e3e.cloudfront.net/3/opbeat.min.js"
        data-org-id="cf8393cbcbb04fb693dc9dcc3b0ff7dd"
        data-app-id="7c9ae085d3"
        async>
        </script>
        
<script src="https://soomgo.s3.ap-northeast-2.amazonaws.com/static/common/min/vendor.min.js?ver=V8YCtBUomNLhhiq"></script>
<!-- 별표생성기 -->
<script src="https://soomgo.s3.ap-northeast-2.amazonaws.com/static/common/min/sg.min.js?ver=V8YCtBUomNLhhiq"></script>
<!-- 별표생성기 -->
   
   <div id="story" class="container-fluid">
        <div class="container">

            <div class="row story-items">
            <c:if test="${UTYPE==0}">
            <c:if test="${flag==0}">
            <c:forEach var="apply" items="${apply}">

                <div class="col-sm-4 col-md-4 thumbnail-wrap">
                    <div class="thumbnail">
                        <div class="figure figure05">
                            <!-- <h3>믿을만한 분을 소개해줬어요
                                <small>박환준 국내이사 고수</small>
                            </h3> -->
                        </div>
                        <div class="caption">
                            <div class="quote">
                                <img src="https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/index_review_quotation.png">
                            </div>
                            <p>${apply.m_intro}</p>
                        </div>
                        <div class="media">
                            <!-- <div class="media-left media-middle">
                                <img class="media-object img-circle img-reviewer" src="https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/thumbnail_reviewer_5.png"
                                     alt="황지연">
                            </div> -->
                            <div class="media-body">
                                <div class="reviewer">${apply.m_name}</div>
                                <div class="reviewer">${apply.m_tel}</div>
                                <div class="reviewer">${apply.m_email}</div>
                                <div class="star-wrap">
                                    <span class="star" data-score="5"></span>
                                    (5.0)
                                </div>
                            </div>
                            <div class="request-btn"><a href="hireGosu.help?r_no=${requestDetailKey.r_no}&g_no=${apply.m_no}" class="btn btn-md btn-default request-btn">고용하기</a></div>
                        </div>
                    </div>
                </div>
                </c:forEach>
                </c:if>
                </c:if>
            </div>
        </div>
    </div>
    
    <script>
    var settings = {
        'urls': {
            'service_search_suggest': '/search-suggest',
            'service_search': '/search',

            'starOff': 'https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/index_review_star_off.png',
            'starOn': 'https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/index_review_star_on.png',
            'starHalf': 'https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/index_review_star_half.png'
        }
    }
</script>

<script>
    $(document).ready(function () {
        var defaultSlickOptions = {
            dots: false,
            infinite: true,
            slidesToShow: 3,
            slidesToScroll: 1,
            centerMode: false,
            prevArrow: '<button class="slick-prev" style="background-image: url(https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/arrow_left_btn.png); width: 20px; height: 38px;"></button>',
            nextArrow: '<button class="slick-next" style="background-image: url(https://soomgo.s3.ap-northeast-2.amazonaws.com/static/img/home/arrow_right_btn.png); width: 20px; height: 38px;"></button>',
            responsive: [{
                breakpoint: 1024,
                settings: {
                    centerPadding: '30px',
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            }, {
                breakpoint: 768,
                settings: {
                    dots: true,
                    arrows: false,
                    centerMode: true,
                    centerPadding: '120px',
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }, {
                breakpoint: 480,
                settings: {
                    dots: true,
                    arrows: false,
                    centerMode: true,
                    centerPadding: '50px',
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }]
        },
        $pressItems = $('.press-items'),
        $storyItems = $('.story-items'),
        $popularList = $('.popular-list');
        $pressItems.slick(defaultSlickOptions);

        $storyItems.slick(defaultSlickOptions);


        $popularList.on('init', function(slick) {
            $('#suggestions').show();
            $('.suggestion-item').show();
        });

        $popularList.slick(function() {
            var opt = $.extend({}, defaultSlickOptions);
            opt.centerMode = true;
            opt.responsive.forEach(function(v) {
                v.centerMode = true;
                v.settings.dots = false;
            });

            return opt;
        }());

    });

    trackHomepage("");
</script>
			

		</div>
	</div>
	<%@ include file="commons/footer.jsp"%>
</body>
</html>