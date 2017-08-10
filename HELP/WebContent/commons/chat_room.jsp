<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<style>
.chat_list_opp {
	clear: both;
	float: left;
	padding: 6px 10px 7px;
	border-radius: 10px 10px 10px 0;
	background: rgba(255, 255, 255, 0.2);
	margin: 10px 0;
	font-size: 11px;
	line-height: 1.4;
	position: relative;
	text-shadow: 0 1px 1px rgba(0, 0, 0, 0.2);
	box-sizing: border-box;
	color: rgba(255, 255, 255, 0.8);
	min-width: 100px;
}

.chat_list_opp::before {
	content: '';
	position: absolute;
	bottom: -6px;
	border-top: 6px solid rgba(255, 255, 255, 0.2);
	left: 0;
	border-right: 7px solid transparent;
}

.chat_list_opp_time {
	position: absolute;
	bottom: -15px;
	font-size: 9px;
	color: rgba(255, 255, 255, 0.3);
}

.chat_list_me {
	clear: both;
	float: right;
	text-align: right;
	padding: 6px 10px 7px;
	border-radius: 10px 10px 0 10px;
	background: rgba(100, 255, 255, 0.2);
	margin: 10px 0;
	font-size: 11px;
	line-height: 1.4;
	position: relative;
	text-shadow: 0 1px 1px rgba(0, 0, 0, 0.2);
	box-sizing: border-box;
	color: rgba(255, 255, 255, 0.8);
	min-width: 120px;
}

.chat_list_me::before {
	left: auto;
	right: 0;
	border-right: none;
	border-left: 5px solid transparent;
	border-top: 4px solid rgba(100, 255, 255, 0.2);
	bottom: -4px;
	content: '';
	position: absolute;
}

.chat_list_me_time {
	position: absolute;
	bottom: -15px;
	font-size: 9px;
	color: rgba(255, 255, 255, 0.3);
}
</style>

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
	if(${chat.ch_check} == 0 && ${chat.ch_receiver.m_no} == ${UNO}) {
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
