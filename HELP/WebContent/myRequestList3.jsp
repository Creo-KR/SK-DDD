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
	<div id="container">

		<c:if test="${alertType=='tradeComplete'}">
			<script>
				alert('거래가 완료되었습니다.');
				window.location.href = "getAllRequestsByWriter.help?alertType=none";
			</script>
		</c:if>
		<c:if test="${alertType=='hireComplete'}">
			<script>
				alert('고용이 완료되었습니다.');
				window.close();
				window.location.href = "getAllRequestsByWriter.help?alertType=none";
			</script>
		</c:if>


		<div id="demo" style="margin-top: 200px">
		<h1 style="margin-top:12%; font-weight: bold; color: #555; font-family: 'Cooper Black'; text-align: center; font-size: 50px;">My Request</h1>
		<br>
		<br>
			<div class="table-responsive-vertical shadow-z-1">

				<h1>
					고용 대기중 
				</h1>
				<table id="table" class="table table-hover table-mc-light-blue">
					<thead>
						<tr>
							<th>요청서 번호</th>
							<th>카테고리</th>
							<th>제목</th>
							<th>등록일</th>
							<th>상태</th>
							<th>신청자수</th>
						</tr>
					</thead>

					<c:forEach var="waitingHire" items="${waitingHireListKey}">
						<tbody>
							<tr>
								<td><a
									href="getRequestDetail.help?r_no=${waitingHire.r_no}&flag=0">${waitingHire.r_no}</a></td>
								<%-- 								<td>${waitingHire.c_no}</td> --%>
								<c:if test="${waitingHire.c_no == 1}">
									<td class="ty2">피아노</td>
								</c:if>
								<c:if test="${waitingHire.c_no == 2}">
									<td class="ty2">이사</td>
								</c:if>
								<c:if test="${waitingHire.c_no == 3}">
									<td class="ty2">웹개발</td>
								</c:if>
								<c:if test="${waitingHire.c_no == 4}">
									<td class="ty2">포토샵</td>
								</c:if>
								<c:if test="${waitingHire.c_no == 5}">
									<td class="ty2">결혼</td>
								</c:if>
								<td>${waitingHire.r_title}</td>
								<td>${waitingHire.r_date}</td>
								<td>고용 대기중</td>
								<td>${waitingHire.applyCnt}</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
				<br>
				<h1>
					대기중 
				</h1>
				<table id="table" class="table table-hover table-mc-light-blue">
					<thead>
						<tr>
							<th>요청서 번호</th>
							<th>카테고리</th>
							<th>제목</th>
							<th>완료여부</th>
							<th>등록일</th>
						</tr>
					</thead>
					<c:forEach var="waiting" items="${waitingListKey}">
						<tbody>
							<tr>
								<td><a
									href="getRequestDetail.help?r_no=${waiting.r_no}&flag=3">${waiting.r_no}</a></td>
								<c:if test="${waiting.c_no == 1}">
									<td class="ty2">피아노</td>
								</c:if>
								<c:if test="${waiting.c_no == 2}">
									<td class="ty2">이사</td>
								</c:if>
								<c:if test="${waiting.c_no == 3}">
									<td class="ty2">웹개발</td>
								</c:if>
								<c:if test="${waiting.c_no == 4}">
									<td class="ty2">포토샵</td>
								</c:if>
								<c:if test="${waiting.c_no == 5}">
									<td class="ty2">결혼</td>
								</c:if>
								<td>${waiting.r_title}</td>
								<c:if test="${waiting.r_active ==1 }">
									<td>대기중</td>
								</c:if>
								<td>${waiting.r_date}</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
				<%-- <ul class="paging1">
					<c:if test="${pageMaker.prev }">
						<li><a
							href='getAllRequestsByCategory.help?page=${pageMaker.start -1}'>이전</a>
						</li>
					</c:if>
					<c:forEach begin="${pageMaker.start }" end="${pageMaker.end}"
						var="idx">
						<li class='<c:out value="${idx == pageMaker.page?'current':''}"/>'>
							<a href='getAllRequestsByCategory.help?page=${idx}'>${idx}</a>
						</li>
					</c:forEach>

					<c:if test="${pageMaker.next }">
						<li><a
							href='getAllRequestsByCategory.help?page=${pageMaker.end +1}'>다음</a>
						</li>
					</c:if>
				</ul> --%>
				<br>



				<h1>
					진행중 
				</h1>
				<table id="table" class="table table-hover table-mc-light-blue">
					<thead>
						<tr>
							<th>요청서 번호</th>
							<th>카테고리</th>
							<th>제목</th>
							<th>고수</th>
							<th>등록일</th>
						</tr>
					</thead>

					<c:forEach var="inProgress" items="${inProgressListKey}">
						<tbody>
							<tr>
								<td><a
									href="getRequestDetail.help?r_no=${inProgress.req.r_no}&flag=1">${inProgress.req.r_no}</a></td>
								<c:if test="${inProgress.req.c_no == 1}">
									<td class="ty2">피아노</td>
								</c:if>
								<c:if test="${inProgress.req.c_no == 2}">
									<td class="ty2">이사</td>
								</c:if>
								<c:if test="${inProgress.req.c_no == 3}">
									<td class="ty2">웹개발</td>
								</c:if>
								<c:if test="${inProgress.req.c_no == 4}">
									<td class="ty2">포토샵</td>
								</c:if>
								<c:if test="${inProgress.req.c_no == 5}">
									<td class="ty2">결혼</td>
								</c:if>
								<td>${inProgress.req.r_title}</td>
								<td>${inProgress.mem.m_name}</td>
								<td>${inProgress.req.r_date}</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
				<%-- <ul class="paging1">
					<c:if test="${pageMaker2.prev }">
						<li><a
							href='getAllRequestsByCategory.help?page2=${pageMaker2.start -1}'>이전</a>
						</li>
					</c:if>
					<c:forEach begin="${pageMaker2.start }" end="${pageMaker2.end}"
						var="idx">
						<li
							class='<c:out value="${idx == pageMaker2.page?'current':''}"/>'>
							<a href='getAllRequestsByCategory.help?page2=${idx}'>${idx}</a>
						</li>
					</c:forEach>

					<c:if test="${pageMaker2.next }">
						<li><a
							href='getAllRequestsByCategory.help?page2=${pageMaker2.end +1}'>다음</a>
						</li>
					</c:if>
				</ul> --%>
				<br>
				<h1>
					완료 
				</h1>
				<table id="table" class="table table-hover table-mc-light-blue">
					<thead>
						<tr>
							<th>요청서 번호</th>
							<th>카테고리</th>
							<th>제목</th>
							<th>등록일</th>
							<th>고수</th>
							<th>완료일</th>
						</tr>
					</thead>

					<c:forEach var="completed" items="${completedListKey}">
						<tbody>
							<tr>
								<td><a
									href="getRequestDetail.help?r_no=${completed.req.r_no}&flag=2">${completed.req.r_no}</a></td>
								<c:if test="${completed.req.c_no == 1}">
									<td class="ty2">피아노</td>
								</c:if>
								<c:if test="${completed.req.c_no == 2}">
									<td class="ty2">이사</td>
								</c:if>
								<c:if test="${completed.req.c_no == 3}">
									<td class="ty2">웹개발</td>
								</c:if>
								<c:if test="${completed.req.c_no == 4}">
									<td class="ty2">포토샵</td>
								</c:if>
								<c:if test="${completed.req.c_no == 5}">
									<td class="ty2">결혼</td>
								</c:if>
								<td>${completed.req.r_title}</td>
								<td>${completed.req.r_date}</td>
								<td>${completed.mem.m_name}</td>
								<td>${completed.t_enddate}</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
				<%-- <ul class="paging1">
					<c:if test="${pageMaker3.prev }">
						<li><a
							href='getAllRequestsByCategory.help?page3=${pageMaker3.start -1}'>이전</a>
						</li>
					</c:if>
					<c:forEach begin="${pageMaker3.start }" end="${pageMaker3.end}"
						var="idx">
						<li
							class='<c:out value="${idx == pageMaker3.page?'current':''}"/>'>
							<a href='getAllRequestsByCategory.help?page3=${idx}'>${idx}</a>
						</li>
					</c:forEach>

					<c:if test="${pageMaker3.next }">
						<li><a
							href='getAllRequestsByCategory.help?page3=${pageMaker3.end +1}'>다음</a>
						</li>
					</c:if>
				</ul> --%>
			</div>





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
			</div> -->
		</div>
	</div>

<br>
<br>
		<%@ include file="commons/footer.jsp"%>

		<script
			src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

		<script src="js/requestList.js"></script>
</body>
</html>