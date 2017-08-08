<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script type="text/javascript">
	document.onclick = function (e) {
			if(e.srcElement.id == "chatroom") {
				var cr = e.srcElement;
				var no = cr.childNodes[1].innerText;
				var rcv = cr.childNodes[3].innerText;
				var room = window.parent.document.getElementById('chat_room_list_frame');
				room.src="viewChatroom.help?cr_no="+no+"&cr_receiver="+rcv;
				var title = window.parent.document.getElementById('chat_room_titleBar_name');
				title.innerText = cr.childNodes[4].textContent;
				var display = window.parent.document.getElementById('chat_room');
				display.style.display = "";
				sessionStorage.setItem(id,"open");
			}
		};
</script>

<body
	style="padding: 0px; margin: 0px; line-height: 16px; font-size: 12px; box-shadow: inset 2px 0 2px -2px #b2b9c9;">
	<c:forEach var="chatroom" items="${chatroom_list}">
		<div id="chatroom"
		style="position: relative; border: solid 1px gray; width: 229px; height: 60px; top: 0px; left: 2px; margin-bottom: 1px;">
		<div style="display: none;">${chatroom.cr_no}</div>
		<div style="display: none;"><c:if test="${chatroom.cr_user1.m_no == UNO}" >${chatroom.cr_user2.m_no}</c:if><c:if test="${chatroom.cr_user2.m_no == UNO}" >${chatroom.cr_user1.m_no}</c:if></div>
		[] ${chatroom.cr_user1.m_name} / ${chatroom.cr_user2.m_name} ${chatroom.cr_lastdate} <br> ${chatroom.lastMessage }</div>
	</c:forEach>
</body>