<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../commons/header.jsp"%>
<link href='https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css' rel='stylesheet' type='text/css'>
  <link href='//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.2.0/css/datepicker.min.css' rel='stylesheet' type='text/css'>
  <link href='//cdnjs.cloudflare.com/ajax/libs/bootstrap-switch/1.8/css/bootstrap-switch.css' rel='stylesheet' type='text/css'>
  <link href='https://davidstutz.github.io/bootstrap-multiselect/css/bootstrap-multiselect.css' rel='stylesheet' type='text/css'>
  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js' type='text/javascript'></script>
  <script src='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.0/js/bootstrap.min.js' type='text/javascript'></script>
  <script src='//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.2.0/js/bootstrap-datepicker.min.js' type='text/javascript'></script>
  <script src='//cdnjs.cloudflare.com/ajax/libs/bootstrap-switch/1.8/js/bootstrap-switch.min.js' type='text/javascript'></script>
  <script src='https://davidstutz.github.io/bootstrap-multiselect/js/bootstrap-multiselect.js' type='text/javascript'></script>
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
  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #e5e5e5), color-stop(100%, #ffffff));
  /* Chrome,Safari4+ */
  background: -webkit-radial-gradient(center, ellipse cover, #e5e5e5 0%, #ffffff 100%);
  /* Chrome10+,Safari5.1+ */
  background: -o-radial-gradient(center, ellipse cover, #e5e5e5 0%, #ffffff 100%);
  /* Opera 12+ */
  background: -ms-radial-gradient(center, ellipse cover, #e5e5e5 0%, #ffffff 100%);
  /* IE10+ */
  background: radial-gradient(ellipse at center, #e5e5e5 0%, #ffffff 100%);
  /* W3C */
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#e5e5e5', endColorstr='#ffffff', GradientType=1);
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
      <div class='panel-heading'>
        <h5 style="text-align: center">HELP - 견적서 등록</h5>
      </div>
      <div class='panel-body'>
        <form class='form-horizontal' role='form'>
          <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='kinds'>종류</label>
            <div class='col-md-2'>
              <select class='form-control' id='kinds'>
                <option>카테고리1</option>
                <option>카테고리2</option>
                <option>카테고리3</option>
                <option>카테고리4</option>
                <option>카테고리5</option>
              </select>
            </div>
          </div>
          
        
         
          <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='title'>제목</label>
            <div class='col-md-6'>
              <div class='form-group'>
                <div class='col-md-11'>
                  <input class='form-control' id='title' placeholder='제목' type='text' required>
                </div>
              </div>
            </div>
          </div>
          
          <div class='form-group'>
            <label class='control-label col-md-9 col-md-offset-0'>질문1. 전부다 주관식으로 해주세요 ~~~~~!@@!@!@@@@@@@@@@@~~~~~~ </label>
          </div>
          <div class='form-group'>
             <div class='col-md-11'>
                  <input class='form-control' placeholder='답변1' type='text' required>
             </div>
          </div>
          
           <div class='form-group'>
            <label class='control-label col-md-9 col-md-offset-0'>질문2. 전부다 주관식으로 해주세요 ~~~~~!@@!@!@@@@@@@@@@@~~~~~~ </label>
          </div>
          <div class='form-group'>
             <div class='col-md-11'>
                  <input class='form-control' placeholder='답변2' type='text' required>
             </div>
          </div>
          
           <div class='form-group'>
            <label class='control-label col-md-9 col-md-offset-0'>질문3. 전부다 주관식으로 해주세요 ~~~~~!@@!@!@@@@@@@@@@@~~~~~~ </label>
          </div>
          <div class='form-group'>
             <div class='col-md-11'>
                  <input class='form-control' placeholder='답변3' type='text' required>
             </div>
          </div>
          
           <div class='form-group'>
            <label class='control-label col-md-9 col-md-offset-0'>질문4. 전부다 주관식으로 해주세요 ~~~~~!@@!@!@@@@@@@@@@@~~~~~~ </label>
          </div>
          <div class='form-group'>
             <div class='col-md-11'>
                  <input class='form-control' placeholder='답변4' type='text' required>
             </div>
          </div>
          
           <div class='form-group'>
            <label class='control-label col-md-9 col-md-offset-0'>질문5. 전부다 주관식으로 해주세요 ~~~~~!@@!@!@@@@@@@@@@@~~~~~~ </label>
          </div>
          <div class='form-group'>
             <div class='col-md-11'>
                  <input class='form-control' placeholder='답변5' type='text' required>
             </div>
          </div>
          
           <div class='form-group'>
            <label class='control-label col-md-9 col-md-offset-0'>질문6. 전부다 주관식으로 해주세요 ~~~~~!@@!@!@@@@@@@@@@@~~~~~~ </label>
          </div>
          <div class='form-group'>
             <div class='col-md-11'>
                  <input class='form-control' placeholder='답변6' type='text' required>
             </div>
          </div>
          
           <div class='form-group'>
            <label class='control-label col-md-9 col-md-offset-0'>질문7. 전부다 주관식으로 해주세요 ~~~~~!@@!@!@@@@@@@@@@@~~~~~~ </label>
          </div>
          <div class='form-group'>
             <div class='col-md-11'>
                  <input class='form-control' placeholder='답변7' type='text' required>
             </div>
          </div>
          
           <div class='form-group'>
            <label class='control-label col-md-9 col-md-offset-0'>질문8. 전부다 주관식으로 해주세요 ~~~~~!@@!@!@@@@@@@@@@@~~~~~~ </label>
          </div>
          <div class='form-group'>
             <div class='col-md-11'>
                  <input class='form-control' placeholder='답변8' type='text' required>
             </div>
          </div>
          
            <div class='form-group'>
            <label class='control-label col-md-9 col-md-offset-0'>질문9. 전부다 주관식으로 해주세요 ~~~~~!@@!@!@@@@@@@@@@@~~~~~~ </label>
          </div>
          <div class='form-group'>
             <div class='col-md-11'>
                  <input class='form-control' placeholder='답변9' type='text' required>
             </div>
          </div>
          
            <div class='form-group'>
            <label class='control-label col-md-9 col-md-offset-0'>질문10. 전부다 주관식으로 해주세요 ~~~~~!@@!@!@@@@@@@@@@@~~~~~~ </label>
          </div>
          <div class='form-group'>
             <div class='col-md-11'>
                  <input class='form-control' placeholder='답변10' type='text' required>
             </div>
          </div>
          
          
       
         
         
          <div >
            <div style="margin-left: 40%">
              <button class='btn-lg btn-primary' style="float:left;" type='submit'>등록</button>
            </div>
            <div >
              <button class='btn-lg btn-danger' style="float:left; margin-left: 2px" type="reset">다시입력</button>
            </div>
            <div >
              <button class='btn-lg btn-danger' style="margin-left: 2px" type='submit'>취소</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div> 		
 		
 		
 		
 		
 		
 		
 		
 		
 		
 		
 		
 		
 		
 		
 		
 		
			</div>
			

		</div>
	</div>
	<%@ include file="../commons/footer.jsp"%>
</body>

</html>