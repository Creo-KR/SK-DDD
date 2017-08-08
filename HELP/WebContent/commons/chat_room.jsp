<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>

<c:forEach var="chat" items="${chat_list}">
	<div
		style="position: relative; border: solid 1px gray; width: 229px; height: 60px; top: 0px; left: 2px; margin-bottom: 1px;">
		${chat.ch_no} - ${chat.ch_sender.m_name} : ${chat.ch_text} / ${chat.ch_date }
	</div>
	<script>
	if(${chat.ch_check} == 0 && ${chat.ch_receiver.m_no} == ${UNO}) {
		alert("이거 안읽음 " + ${chat.ch_no});
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
