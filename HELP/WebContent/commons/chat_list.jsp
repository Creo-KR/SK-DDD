<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/chat.css" />

<script type="text/javascript">
	document.onclick = function(e) {
		if (e.srcElement.id == "chatroom") {
			viewChatroom(e.srcElement);
		} else if (e.srcElement.parentElement.id == "chatroom") {
			viewChatroom(e.srcElement.parentElement);
		}
	};

	function viewChatroom(cr) {
		var no = cr.childNodes[1].innerText;
		var rcv = cr.childNodes[3].innerText;
		var room = window.parent.document
				.getElementById('chat_room_list_frame');
		room.src = "viewChatroom.help?cr_no=" + no + "&cr_receiver=" + rcv;
		var display = window.parent.document.getElementById('chat_room');
		display.style.display = "";
		sessionStorage.setItem("chat_room", "open");
	}
</script>

<body
	style="padding: 0px; margin: 0px; line-height: 16px; font-size: 12px; box-shadow: inset 2px 0 2px -2px #b2b9c9;">
	<c:forEach var="chatroom" items="${chatroom_list}">
		<div id="chatroom" class="chat_room_list">
			<div style="display: none;">${chatroom.cr_no}</div>
			<div style="display: none;">
				<c:if test="${chatroom.cr_user1.m_no == UNO}">${chatroom.cr_user2.m_no}</c:if>
				<c:if test="${chatroom.cr_user2.m_no == UNO}">${chatroom.cr_user1.m_no}</c:if>
			</div>
			<div class="chat_room_list_opp">
				<c:if test="${chatroom.cr_user1.m_no == UNO}">${chatroom.cr_user2.m_name}</c:if>
				<c:if test="${chatroom.cr_user2.m_no == UNO}">${chatroom.cr_user1.m_name}</c:if>
			</div>
			<div class="chat_room_list_messasge">${chatroom.lastMessage}</div>
			<div class="chat_room_list_date">${chatroom.cr_lastdate}</div>

		</div>
	</c:forEach>
</body>