<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script>
function divClose(id) {
	var div = document.getElementById(id);
	div.style.display = 'none';
}
</script>

<script>
$(document).ready(function({
	$("#sendData").on("click", function(){	
		$.ajax({
			url: 'sendChat.help',
			data: $(".chfrm").serialize(),
			type: "post",
			success: function sendHandler(data){
				console.log(data);
				alert(data);
				location.reload();
				}
		});
	});

</script>
<div id="chat">
	<div id="chat_list"
		style="background-color: #e9ebee; border: 1px solid rgba(0, 0, 0, .4); position: fixed; right: 10px; bottom: 50px; line-height: 16px; font-size: 12px;">

		<div id="chat_list_titleBar"
			style="position: relative; height: 36px; background-color: rgba(10, 10, 24, .2); margin: 2px 2px 2px 2px">
			<div id="chat_list_titleBar_name">채팅</div>
			<div id="chat_list_titleBar_btn"
				style="position: relative; top: -15px; left: 149px;">
				<img style="width: 32px; height: 32px; padding: 0px;"><img style="width: 32px; height: 32px; padding: 0px;"><img src="../images/close.png" style="width: 32px; height: 32px; padding: 0px; " onclick="javascript:divClose('chat_list');">
			</div>
		</div>

		<iframe src="../chatroomList.help"
			style="border: 0px; width: 250px; height: 460px;"></iframe>
	</div>

	<div id="chat_room"
		style="background-clip: padding-box; background-color: #e9ebee; border: 1px solid rgba(0, 0, 0, .4); box-shadow: inset 2px 0 2px -2px #b2b9c9; font-size: 12px; position: fixed; line-height: 16px; right: 264px; bottom: 50px; width: 250px; height: 500px;">
		<div id="chat_room_titleBar"
			style="position: relative; height: 36px; background-color: rgba(10, 10, 24, .2); margin: 2px 2px 2px 2px">
			<div id="chat_room_titleBar_name">허진우</div>
			<div id="chat_room_titleBar_btn"
				style="position: relative; top: -15px; left: 149px;">
				<img style="width: 32px; height: 32px; padding: 0px;"><img style="width: 32px; height: 32px; padding: 0px;"><img src="../images/close.png" style="width: 32px; height: 32px; padding: 0px;" onclick="javascript:divClose('chat_room');" >
			</div>
		</div>
		
		<div id="chat_room_list"
			style="position: relative; border: solid 1px gray; width: 244px; height: 420px; top: 0px; left: 2px;">
			<iframe src="../viewChatroom.help?cr_no=21"
				style="border: 0px; width: 244px; height: 420px;"></iframe>
		</div>



		<div id="chat_room_input"
			style="position: relative; border: solid 1px gray; width: 244px; height: 32px; bottom: -3px; left: 2px;">
			<input class="chfrm" type="text" name="cr_no" value=21
				style="position: relative; width: 208px; height: 28px; padding: 0px; top: -12px;" /><button id="sendData"><img style="width: 32px; height: 32px; padding: 0px;"></button>
		</div>
	</div>
</div>