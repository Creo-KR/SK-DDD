$(function(){
	//회원 가입 버튼 눌렀을 때, 약관 동의 체크
	    $("#loginButton").click(function(){    
            if($('#m_pwd').val() == "" || $('#user_passwd_confirm').val() == ""){
            	alert("비밀번호를 확인해주세요.");
            	return false;
            }else if($('#m_pwd').val()!=$('#user_passwd_confirm').val()){
            	alert("비밀번호를 확인해주세요.");
            	return false;
            } else{
            }
        });    

	
	//비밀번호 확인
	$('#user_passwd_confirm').keyup(function(){ 
		if($('#m_pwd').val()!=$('#user_passwd_confirm').val()){ 
			$('#errorMsg').text(''); 
			$("#errorMsg").style("color", "white");
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

