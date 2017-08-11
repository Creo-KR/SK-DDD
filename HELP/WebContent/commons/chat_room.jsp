<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/chat.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>

<script type="text/javascript">
var title = window.parent.document.getElementById('chat_room_titleBar_name');
title.innerText = "${ss_cr_receiver.m_name}"; 
</script>
<c:if test="${ss_receiver == 'out'}">
	<div class="chat_list_opp">상대방이 대화방에서 나갔습니다.</div>
</c:if>

<c:forEach var="chat" items="${chat_list}">
	<c:if test="${chat.ch_receiver.m_no == UNO}">
		<div class="chat_list_opp">
			${chat.ch_text}
			<div class="chat_list_opp_time">${chat.ch_date }</div>

		</div>
	</c:if>
	<c:if test="${chat.ch_receiver.m_no != UNO}">
		<div class="chat_list_me">
			${chat.ch_text}
			<div class="chat_list_me_time">${chat.ch_date}
				<c:if test="${chat.ch_check == 0}">안읽음</c:if>
			</div>

		</div>
	</c:if>
	<script>
	if(sessionStorage.getItem("chat_room") == "open" && ${chat.ch_check} == 0 && ${chat.ch_receiver.m_no} == ${UNO}) {
		$.ajax({
			url : "checkChat.help",
			data : {ch_no:${chat.ch_no}},
			type : "post",
			success: function(response) { 
		    	if(response >= 1) {
		    		var frame = document.getElementById('chat_room_list_frame');
					frame.contentWindow.location.reload();
		    	} else{
		    		
		    	}
		    }
		});
	}
	</script>
</c:forEach>
