<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script>
	function divOpen(id) {
		var div = document.getElementById(id);
		div.style.display = "";
		sessionStorage.setItem(id, "open");
	}

	function divClose(id) {
		var div = document.getElementById(id);
		div.style.display = "none";
		sessionStorage.setItem(id, "close");
	}

	function sendChat() {
		var chat_text = document.getElementById('chat_text');
		if (chat_text.value == "" || chat_text.value == null) {
			return;
		}

		$.ajax({
			url : "sendChat.help",
			data : $('#chat_room_input_frm').serialize(),
			type : "post",
			success : function sendHandler(data) {
				var frame = document.getElementById('chat_room_list_frame');
				frame.contentWindow.location.reload();
				var frame2 = document.getElementById('chat_list_frame');
				frame2.contentWindow.location.reload();
				chat_text.value = "";
			}
		});
	}

	function joinChatroom() {
		
	}
	
	setInterval(function() {
		if(${UNO} != null) {
			if(sessionStorage.getItem("chat_list") == "open") {
				$.ajax({
					url : "chatRefreshCount.help",
					data : {UNO:${UNO}},
					type : "post",
					success: function(response) { 
				    	if(response >= 1) {
				    		var frame = document.getElementById('chat_list_frame');
							frame.contentWindow.location.reload();
				    	}
				    }
				});
			}
	
			if(sessionStorage.getItem("chat_room") == "open") {
				$.ajax({
					url : "chatroomRefresh.help",
					type : "post",
					success: function(response) { 
				    	if(response >= 1) {
				    		var frame = document.getElementById('chat_room_list_frame');
							frame.contentWindow.location.reload();
				    	}
				    }
				});
			}
			
		}
	}, 5000);
	
</script>
<div id="chat" style="position: absolute;; z-index: 8888;">
	<div id="chat_list"
		style="display: none; background-color: #e9ebee; border: 1px solid rgba(0, 0, 0, .4); position: fixed; right: 10px; bottom: 50px; line-height: 16px; font-size: 12px;">

		<div id="chat_list_titleBar"
			style="position: relative; height: 36px; background-color: rgba(10, 10, 24, .2); margin: 2px 2px 2px 2px">
			<div id="chat_list_titleBar_name">채팅</div>
			<div id="chat_list_titleBar_btn"
				style="position: relative; top: -15px; left: 149px;">
				<img style="width: 32px; height: 32px; padding: 0px;"><img
					style="width: 32px; height: 32px; padding: 0px;"><img
					src="images/close.png"
					style="width: 32px; height: 32px; padding: 0px;"
					onclick="javascript:divClose('chat_list');">
			</div>
		</div>

		<iframe id="chat_list_frame" src="chatroomList.help"
			style="border: 0px; width: 250px; height: 460px;"></iframe>
	</div>

	<div id="chat_room"
		style="display: none; background-clip: padding-box; background-color: #e9ebee; border: 1px solid rgba(0, 0, 0, .4); box-shadow: inset 2px 0 2px -2px #b2b9c9; font-size: 12px; position: fixed; line-height: 16px; right: 264px; bottom: 50px; width: 250px; height: 500px;">
		<div id="chat_room_titleBar"
			style="position: relative; height: 36px; background-color: rgba(10, 10, 24, .2); margin: 2px 2px 2px 2px">
			<div id="chat_room_titleBar_name"></div>
			<div id="chat_room_titleBar_btn"
				style="position: relative; top: -15px; left: 149px;">
				<img style="width: 32px; height: 32px; padding: 0px;"><img
					src="images/leave.png" style="width: 32px; height: 32px; padding: 0px;"><img
					src="images/close.png"
					style="width: 32px; height: 32px; padding: 0px;"
					onclick="javascript:divClose('chat_room');">
			</div>
		</div>

		<div id="chat_room_list"
			style="position: relative; border: solid 1px gray; width: 244px; height: 420px; top: 0px; left: 2px;">
			<iframe id="chat_room_list_frame"
				src="viewChatroom.help?cr_no=${ss_cr_no}&cr_receiver=${ss_cr_receiver.m_no}"
				style="border: 0px; width: 244px; height: 420px;"></iframe>
		</div>



		<div id="chat_room_input"
			style="position: relative; border: solid 1px gray; width: 244px; height: 32px; bottom: -3px; left: 2px;">
			<form id="chat_room_input_frm" onsubmit="sendChat(); return false;">
				<input type="hidden" name="sender" value="${ss_cr_sender}" /> <input
					type="hidden" name="receiver" value="${ss_cr_receiver.m_no}" /> <input
					type="hidden" name="no" value="${ss_cr_no}" /> <input type="text"
					name="text" id="chat_text" autocomplete=off
					style="position: relative; width: 208px; height: 28px; padding: 0px; top: -12px;" /><img
					style="width: 32px; height: 32px; padding: 0px;"
					onclick="sendChat();">
			</form>
		</div>
	</div>
</div>

<script>
	if (sessionStorage.getItem("chat_list") == "open") {
		divOpen("chat_list");
	}
	if (sessionStorage.getItem("chat_room") == "open") {
		divOpen("chat_room");
	}
</script>