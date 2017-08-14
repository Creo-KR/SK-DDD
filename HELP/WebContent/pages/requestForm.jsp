<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>H.E.L.P</title>
<%@ include file="../commons/header.jsp"%>
<link
	href='https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css'
	rel='stylesheet' type='text/css'>
<link
	href='//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.2.0/css/datepicker.min.css'
	rel='stylesheet' type='text/css'>
<link
	href='//cdnjs.cloudflare.com/ajax/libs/bootstrap-switch/1.8/css/bootstrap-switch.css'
	rel='stylesheet' type='text/css'>
<link
	href='https://davidstutz.github.io/bootstrap-multiselect/css/bootstrap-multiselect.css'
	rel='stylesheet' type='text/css'>
<script
	src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js'
	type='text/javascript'></script>
<script
	src='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.0/js/bootstrap.min.js'
	type='text/javascript'></script>
<script
	src='//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.2.0/js/bootstrap-datepicker.min.js'
	type='text/javascript'></script>
<script
	src='//cdnjs.cloudflare.com/ajax/libs/bootstrap-switch/1.8/js/bootstrap-switch.min.js'
	type='text/javascript'></script>
<script
	src='https://davidstutz.github.io/bootstrap-multiselect/js/bootstrap-multiselect.js'
	type='text/javascript'></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/join.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/join.js"></script>



<style>
.indent-small {
	margin-left: 5px;
}

.form-group.internal {
	margin-bottom: 0;
}

.dialog-panel {
	margin: 10px;
}

.datepicker-dropdown {
	z-index: 200 !important;
}

.panel-body {
	background: #e5e5e5;
	/* Old browsers */
	background: -moz-radial-gradient(center, ellipse cover, #e5e5e5 0%, #ffffff 100%);
	/* FF3.6+ */
	background: -webkit-gradient(radial, center center, 0px, center center, 100%,
		color-stop(0%, #e5e5e5), color-stop(100%, #ffffff));
	/* Chrome,Safari4+ */
	background: -webkit-radial-gradient(center, ellipse cover, #e5e5e5 0%, #ffffff 100%);
	/* Chrome10+,Safari5.1+ */
	background: -o-radial-gradient(center, ellipse cover, #e5e5e5 0%, #ffffff 100%);
	/* Opera 12+ */
	background: -ms-radial-gradient(center, ellipse cover, #e5e5e5 0%, #ffffff 100%);
	/* IE10+ */
	background: radial-gradient(ellipse at center, #e5e5e5 0%, #ffffff 100%);
	/* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#e5e5e5',
		endColorstr='#ffffff', GradientType=1);
	/* IE6-9 fallback on horizontal gradient */
	font: 600 15px "Open Sans", Arial, sans-serif;
}

label.control-label {
	font-weight: 600;
	color: #777;
}
</style>




</head>
<body>
	<div id="container">
		<div class="main_contents">
			<!-- 본문영역 -->


			<div class='container'>
				<div class='panel panel-primary dialog-panel'>
					<div class='panel-heading' style="background-color: #7F7F7F;">
						<h5 style="text-align: center; background-color: #7F7F7F;" >HELP - 견적서 등록</h5>
					</div>
					<div class='panel-body'>

						<form action="addRequest.help" method="post"
							class='form-horizontal' role='form'>
							<div class='form-group'>
								<label class='control-label col-md-2 col-md-offset-2'
									for='kinds'>종류</label>
								<div class='col-md-2'>
									<select name="categoryType" id="categoryType"
										class='form-control' id='kinds'>
										<option value="">카테고리 선택</option>
										<option value="1">피아노</option>
										<option value="2">이사</option>
										<option value="3">웹개발</option>
										<option value="4">포토샵</option>
										<option value="5">결혼</option>
									</select>
								</div>
							</div>



							<div class='form-group'>
								<label class='control-label col-md-2 col-md-offset-2'
									for='title'>제목</label>
								<div class='col-md-6'>
									<div class='form-group'>
										<div class='col-md-11'>
											<input type='text' name=title class='form-control' id='title'
												placeholder='제목' required>
										</div>
									</div>
								</div>
							</div>



							<div id="content"></div>



							<!-- Include the JQuery library -->
							<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
							<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
							<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
							<script>
								//When the page has loaded.
								$(document).ready(function() {
									//Perform Ajax request.
							
									$("#categoryType").change(function() {
										//   1.   선택한 항목의 번호를 알아낸다.
										//      형식>      $("#lcate option:selected").val()
										var type = $("#categoryType option:selected").val();
							
							
							
										if (type == 1) {
											$.ajax({
												url : 'pages/requestFormCategory1.html',
												type : 'get',
												success : function(data) {
													//If the success function is execute,
													//then the Ajax request was successful.
													//Add the data we received in our Ajax
													//request to the "content" div.
													$('#content').html(data);
												},
												error : function(xhr, ajaxOptions, thrownError) {
													var errorMsg = 'Ajax request failed: ' + xhr.responseText;
													$('#content').html(errorMsg);
												}
											});
										} else if (type == 2) {
											$.ajax({
												url : 'pages/requestFormCategory2.html',
												type : 'get',
												success : function(data) {
													//If the success function is execute,
													//then the Ajax request was successful.
													//Add the data we received in our Ajax
													//request to the "content" div.
													$('#content').html(data);
												},
												error : function(xhr, ajaxOptions, thrownError) {
													var errorMsg = 'Ajax request failed: ' + xhr.responseText;
													$('#content').html(errorMsg);
												}
											});
										} else if (type == 3) {
											$.ajax({
												url : 'pages/requestFormCategory3.html',
												type : 'get',
												success : function(data) {
													//If the success function is execute,
													//then the Ajax request was successful.
													//Add the data we received in our Ajax
													//request to the "content" div.
													$('#content').html(data);
												},
												error : function(xhr, ajaxOptions, thrownError) {
													var errorMsg = 'Ajax request failed: ' + xhr.responseText;
													$('#content').html(errorMsg);
												}
											});
										} else if (type == 4) {
											$.ajax({
												url : 'pages/requestFormCategory4.html',
												type : 'get',
												success : function(data) {
													//If the success function is execute,
													//then the Ajax request was successful.
													//Add the data we received in our Ajax
													//request to the "content" div.
													$('#content').html(data);
												},
												error : function(xhr, ajaxOptions, thrownError) {
													var errorMsg = 'Ajax request failed: ' + xhr.responseText;
													$('#content').html(errorMsg);
												}
											});
										} else if (type == 5) {
											$.ajax({
												url : 'pages/requestFormCategory5.html',
												type : 'get',
												success : function(data) {
													//If the success function is execute,
													//then the Ajax request was successful.
													//Add the data we received in our Ajax
													//request to the "content" div.
													$('#content').html(data);
												},
												error : function(xhr, ajaxOptions, thrownError) {
													var errorMsg = 'Ajax request failed: ' + xhr.responseText;
													$('#content').html(errorMsg);
												}
											});
										}
							
							
									});
								});
							</script>




							<div>
								<div style="margin-left: 40%">
									<button class='btn-lg btn-primary' style="float: left; background-color: #759489"
										type='submit'>등록</button>
								</div>
								<div>
									<button class='btn-lg btn-danger'
										style="float: left; margin-left: 2px; background-color: #A566FF"" type="reset">다시입력</button>
								</div>

							</div>
						</form>
						<div>
							<button onclick="cansel()" class='btn-lg btn-danger'
								style="margin-left: 2px; background-color: #759489" >취소</button>
						</div>
						<script>
							var cansel = function() {
								window.location.href="${pageContext.request.contextPath}";
							}
						</script>


					</div>
				</div>
			</div>








		</div>


	</div>
	</div>
	<%@ include file="../commons/footer.jsp"%>
</body>

</html>