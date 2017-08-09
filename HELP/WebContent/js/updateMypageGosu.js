$(function(){
	//이메일 select 박스 이벤트
	$('#email3').change(function() {
		var state = $('#email3 option:selected').val();
		if(state == 'etc') {
			$("#email2").removeAttr("readonly");
			$("#email2").empty();
		} else {
			
			$("#email2").attr("readonly", "readonly");
			$("#email2").val(state);
		}
	});

	//id 체크
	//id 확인
		var regexp = "^[a-z0-9]"
		
		$("#m_idcheck").click(function(){
			$.ajax({
				url : "idCheckAction.help",
				type : "post",
				data : $("#m_id").serialize(),
				success : function(data){
					console.log(data);
					if(data>0){
						alert("Duplicated ID")
					}else if($("#m_id").val().length<5 || $("#m_id").val().length>12){
						alert('Make ID from 4 to 12 length.');
					}else if(!$("#m_id").val().match(regexp)){
						alert('Make ID with small character and number.');
					}else{
						$('#idcheck').text(''); 
						$('#idcheck').html('Available ID.'); 
					}
				}
			
			})
		});
	//회원 가입 버튼 눌렀을 때, 약관 동의 체크
	    $("#joinButton").click(function(){    
            if(!$("#agree_privacy_check0").is(":checked")){
                alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
                return false;
            }else if(!$("#agree_service_check0").is(":checked")){
                alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
                return false;
            }else if($('#m_pwd').val() == "" || $('#user_passwd_confirm').val() == ""){
            	alert("비밀번호를 확인해주세요.");
            	return false;
            }else if($('#m_pwd').val()!=$('#user_passwd_confirm').val()){
            	alert("비밀번호를 확인해주세요.");
            	return false;
            }else if($("#m_name").val() == ""){
            	alert("이름을 반드시 입력해주세요.");
            	return false;
            }else{
            	alert("수정 완료 되었습니다.");
            }
        });    

	
	//비밀번호 확인
	$('#user_passwd_confirm').keyup(function(){ 
		if($('#m_pwd').val()!=$('#user_passwd_confirm').val()){ 
			$('#errorMsg').text(''); 
			$('#errorMsg').html('Please Check password'); 
		} else if ($('#m_pwd').val()==$('#user_passwd_confirm').val()){ 
			$('#errorMsg').text(''); 
			$("#errorMsg").style("color", "green");
			$('#errorMsg').html('Passwords match'); 
			
		} else {
			$('#errorMsg').text(''); 
			$("#errorMsg").html(''); 
		}
	});
});

