<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://s.codepen.io/assets/libs/modernizr.js"
	type="text/javascript"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="css/requestList.css">

</head>
<%@ include file="commons/header.jsp"%>
<body>


<div id="container" >
	<div style="margin-top: 200px">
		<div id="demo">
		<h1 style="margin-top:12%; font-weight: bold; color: #555; font-family: 'Cooper Black'; text-align: center; font-size: 50px;">Request List</h1>
		<br>
		<br>
			<div class="table-responsive-vertical shadow-z-1">

				<%--<h1>
					 <c:if test="${categoryNum == 1}">
						<td>피아노</td>
					</c:if>
					<c:if test="${categoryNum == 2}">
						<td>이사</td>
					</c:if>
					<c:if test="${categoryNum == 3}">
						<td>웹 개발</td>
					</c:if>
					<c:if test="${categoryNum == 4}">
						<td>포토 샵</td>
					</c:if>
					<c:if test="${categoryNum == 5}">
						<td>결혼</td>
					</c:if>
					요청 목록 
				</h1>--%>
				<table id="table" class="table table-hover table-mc-light-blue">
					<thead>
						<tr>
							<th>요청서 번호</th>
							<th>카테고리 번호</th>
							<th>제목</th>
							<th>날짜</th>
						</tr>
					</thead>
					<c:forEach var="reqList" items="${reqList}">
						<tbody>
							<tr>
								<td><a
									href="getRequestDetail.help?r_no=${reqList.r_no}&flag=0">${reqList.r_no}</a></td>

								<c:if test="${reqList.c_no == 1}">
									<td>피아노</td>
								</c:if>
								<c:if test="${reqList.c_no == 2}">
									<td>이사</td>
								</c:if>
								<c:if test="${reqList.c_no == 3}">
									<td>웹 개발</td>
								</c:if>
								<c:if test="${reqList.c_no == 4}">
									<td>포토 샵</td>
								</c:if>
								<c:if test="${reqList.c_no == 5}">
									<td>결혼</td>
								</c:if>
								<td>${reqList.r_title}</td>
								<td>${reqList.r_date}</td>

							</tr>
						</tbody>
					</c:forEach>
				</table>
			</div>

				<br>
			<ul class="paging1"> 
				<c:if test="${pageMaker.prev }"> 
					<li>
						<a href='getCategoryRequest.help?category=${categoryNum}&page=${pageMaker.start -1}'>이전</a>
					</li> 
				</c:if> 
				<c:forEach begin="${pageMaker.start }" end="${pageMaker.end}" var="idx"> 
					<li class='<c:out value="${idx == pageMaker.page?'current':''}"/>'> 
						<a href='getCategoryRequest.help?category=${categoryNum}&page=${idx}'>${idx}</a> 
					</li> 
				</c:forEach> 
				
				<c:if test="${pageMaker.next }"> 
					<li>
						<a href='getCategoryRequest.help?category=${categoryNum}&page=${pageMaker.end +1}'>다음</a>
					</li> 
				</c:if> 
			</ul>


			<!-- Table Constructor change table classes, you don't need it in your project -->
			<!-- <div style="width: 45%; display: inline-block; vertical-align: top">
				<h2>Table Constructor</h2>
				<p>
					<label for="table-bordered">Style: bordered</label> <select
						id="table-bordered" name="table-bordered">
						<option selected value="">No</option>
						<option value="table-bordered">Yes</option>
					</select>
				</p>
				<p>
					<label for="table-striped">Style: striped</label> <select
						id="table-striped" name="table-striped">
						<option selected value="">No</option>
						<option value="table-striped">Yes</option>
					</select>
				</p>
				<p>
					<label for="table-hover">Style: hover</label> <select
						id="table-hover" name="table-hover">
						<option value="">No</option>
						<option selected value="table-hover">Yes</option>
					</select>
				</p>
				<p>
					<label for="table-color">Style: color</label> <select
						id="table-color" name="table-color">
						<option value="">Default</option>
						<option value="table-mc-red">Red</option>
						<option value="table-mc-pink">Pink</option>
						<option value="table-mc-purple">Purple</option>
						<option value="table-mc-deep-purple">Deep Purple</option>
						<option value="table-mc-indigo">Indigo</option>
						<option value="table-mc-blue">Blue</option>
						<option selected value="table-mc-light-blue">Light Blue</option>
						<option value="table-mc-cyan">Cyan</option>
						<option value="table-mc-teal">Teal</option>
						<option value="table-mc-green">Green</option>
						<option value="table-mc-light-green">Light Green</option>
						<option value="table-mc-lime">Lime</option>
						<option value="table-mc-yellow">Yellow</option>
						<option value="table-mc-amber">Amber</option>
						<option value="table-mc-orange">Orange</option>
						<option value="table-mc-deep-orange">Deep Orange</option>
					</select>
				</p>
			</div>-->
		</div>
	</div>
	</div>
	<%@ include file="commons/footer.jsp"%>

	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

	<script src="js/requestList.js"></script>



</body>
</html>