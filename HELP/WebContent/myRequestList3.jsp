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
<body>
	<div>
<%-- 		<%@ include file="commons/header.jsp"%> --%>
	</div>
	<div>
		<div id="demo">
			<div class="table-responsive-vertical shadow-z-1">


				<h1>
					<요청서 목록> - 대기중 
				</h1>
				<table id="table" class="table table-hover table-mc-light-blue">
					<thead>
						<tr>
							<th>요청서 번호</th>
							<th>카테고리 번호</th>
							<th>제목</th>
							<th>완료여부</th>
							<th>날짜</th>
						</tr>
					</thead>
					<c:forEach var="waiting" items="${waitingListKey}">
						<tbody>
							<tr>
								<td data-title="ID"><a
									href="getRequestDetail.help?r_no=${waiting.r_no}">${waiting.r_no}</a></td>
								<td data-title="Name">${waiting.c_no}</td>
								<td data-title="Link">${waiting.r_title}</td>
								<c:if test="${waiting.r_active ==1 }">
									<td data-title="Status">대기중</td>
								</c:if>
								<td data-title="Status">${waiting.r_date}</td>

							</tr>
						</tbody>
					</c:forEach>
				</table>
				<br>

				<h1>
					<요청서 목록> - 진행중 
				</h1>
				<table id="table" class="table table-hover table-mc-light-blue">
					<thead>
						<tr>
							<th>요청서 번호</th>
							<th>카테고리 번호</th>
							<th>제목</th>
							<th>등록일</th>
							<th>고수</th>
							<th>완료날짜</th>
						</tr>
					</thead>

					<c:forEach var="inProgress" items="${inProgressListKey}">
						<tbody>
							<tr>
								<td><a href="getRequestDetail.help?r_no=${inProgress.req.r_no}">${inProgress.req.r_no}</a></td>
								<td>${inProgress.req.c_no}</td>
								<td>${inProgress.req.r_title}</td>
								<td>${inProgress.req.r_date}</td>
								<td>${inProgress.t_respondent}</td>
								<td>${inProgress.t_enddate}</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>


				<h1>
					<요청서 목록> - 완료
				</h1>
				<table id="table" class="table table-hover table-mc-light-blue">
					<thead>
						<tr>
							<th>요청서 번호</th>
							<th>카테고리 번호</th>
							<th>제목</th>
							<th>등록일</th>
							<th>고수</th>
							<th>완료날짜</th>
						</tr>
					</thead>

					<c:forEach var="completed" items="${completedListKey}">
						<tbody>
							<tr>
								<td><a href="getRequestDetail.help?r_no=${completed.req.r_no}">${completed.req.r_no}</a></td>
								<td>${completed.req.c_no}</td>
								<td>${completed.req.r_title}</td>
								<td>${completed.req.r_date}</td>
								<td>${completed.t_respondent}</td>
								<td>${completed.t_enddate}</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>


			</div>





			<!-- Table Constructor change table classes, you don't need it in your project -->
			<div style="width: 45%; display: inline-block; vertical-align: top">
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
			</div>
		</div>
	</div>
	<%@ include file="commons/footer.jsp"%>

	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

	<script src="js/requestList.js"></script>



</body>
</html>