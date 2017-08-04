<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<body
	style="padding: 0px; margin: 0px; line-height: 16px; font-size: 12px; box-shadow: inset 2px 0 2px -2px #b2b9c9;">
	<c:forEach var="chatroom" items="${chatroom_list}">
		<div
		style="position: relative; border: solid 1px gray; width: 229px; height: 60px; top: 0px; left: 2px; margin-bottom: 1px;">
		[${chatroom.cr_no}] ${chatroom.cr_user1.m_name} / ${chatroom.cr_user2.m_name} ${chatroom.cr_lastdate} </div>
	</c:forEach>
</body>