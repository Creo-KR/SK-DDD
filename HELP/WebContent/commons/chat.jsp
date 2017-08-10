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

		if(${ss_receiver == 'out'}) {
			alert("상대방이 대화방을 나갔습니다.");
			chat_text.value = "";
			return;
		}
		
		if (chat_text.value == "" || chat_text.value == null) {
			return;
		}

		$.ajax({
			url : "sendChat.help",
			data : $('#chat_room_input_frm').serialize(),
			type : "post",
			success : function sendHandler(data) {
				var split = data.split(',');
				var frame = document.getElementById('chat_room_list_frame');
				frame.src="viewChatroom.help?cr_no="+split[0]+"&cr_receiver="+split[1];
				var frame2 = document.getElementById('chat_list_frame');
				frame2.contentWindow.location.reload();
				chat_text.value = "";
			}
		});
	}

	function joinChatroom(id) {
		divOpen("chat_room");
		document.getElementById('chat_room_list_frame').src='joinChatroom.help?cr_receiver='+id;
	}

	function leaveChatroom() {
		var roomname = document.getElementById("chat_room_titleBar_name");
		var conf = confirm(roomname.innerText+"님과의 대화방에서 나가시겠습니까? (대화내용이 지워집니다)");
		if(conf) {
			$.ajax({
				url : "leaveChatroom.help",
				type : "post",
				success : function sendHandler(data) {
					var frame = document.getElementById('chat_room_list_frame');
					var frame2 = document.getElementById('chat_list_frame');
					frame.src="commons/blank.jsp";
					frame2.contentWindow.location.reload();
					chat_text.value = "";
				}
			});
		}
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
<div id="chat" class="chat">
	<div id="chat_list" class="chat_window">

		<div id="chat_list_titleBar" class="chat_room_titleBar">
			<div id="chat_list_titleBar_name" class="chat_room_titleBar_name">채팅</div>
			<div id="chat_list_titleBar_btn" class="chat_window_titleBar_btn">
				<img src="images/close.png"
					style="width: 32px; height: 32px; padding: 0px;"
					onclick="divClose('chat_list');">
			</div>
		</div>

		<iframe id="chat_list_frame" src="chatroomList.help"
			style="border: 0px; width: 250px; height: 460px;"></iframe>
	</div>

	<div id="chat_room" class="chat_room">
		<div id="chat_room_titleBar" class="chat_room_titleBar">
			<div id="chat_room_titleBar_name" class="chat_room_titleBar_name">${ss_cr_receiver.m_name}</div>
			<div id="chat_room_titleBar_btn" class="chat_room_titleBar_btn">
				<img src="images/check.png" onclick="javascript:joinChatroom(1);"><img src="images/leave.png"
					onclick="javascript:leaveChatroom();"><img
					src="images/close.png" onclick="javascript:divClose('chat_room');">
			</div>
		</div>

		<div id="chat_room_list">
			<iframe id="chat_room_list_frame" class="chat_room_list_frame"
				src="viewChatroom.help?cr_no=${ss_cr_no}&cr_receiver=${ss_cr_receiver.m_no}""></iframe>
		</div>



		<div id="chat_room_input" class="chat_room_input">
			<form id="chat_room_input_frm" onsubmit="sendChat(); return false;">
				<input type="hidden" name="sender" value="${ss_cr_sender}" /> <input
					type="hidden" name="receiver" value="${ss_cr_receiver.m_no}" /> <input
					type="hidden" name="no" value="${ss_cr_no}" /> <input type="text"
					name="text" class="chat_text" id="chat_text" autocomplete=off
					placeholder="이곳에 메세지를 적어주세요." /> <input class="chat_send"
					type="button" onclick="sendChat();" value="보내기">
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