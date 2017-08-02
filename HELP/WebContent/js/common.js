// 핸드폰번호 입력
function maskHp(obj) { 
	var str = obj.value; 
	
	/*
	if ( str ) { 
		//var pattern = /[^(ㄱ-?)]|[-/\s]/g; 
		var RegNotNum  = /[\D]/g; 
		var pattern = ""; 
		var format  = ""; 

		// delete not number ㅋ 
		str = str.replace(RegNotNum,''); 

		//if( str.length < 4 ) return str; 
		if( str.length < 4 ) { 
			if( str.length == 3 ) { 
				format = "$1"; 
				pattern = /(^01[\d]{0,1})/; 
			} else { 
				format = "$1"; 
				pattern = /(^0[1]?[\d]{0,1})/; 
			} 
		} else if( str.length > 3 && str.length < 7 ) { 
			format = "$1-$2"; 
			pattern = /(^01[\d]{1})([\d]+)/; 
		} else if(str.length == 7 ) { 
			format = "$1-$2"; 
			pattern = /(^01[\d]{1})([\d]{4})/; 
		} else { 
			format = "$1-$2-$3"; 
			pattern = /(^01[\d]{1})([\d]{4})([\d]+)/; 
		} 

		//while( pattern.test(str) ) { 
		if ( pattern.test(str) ) { 
			obj.value = str.replace(pattern, format); 
		} else { 
			obj.value = ""; 
		} 
	}
	*/
} 

//전화번호 입력
function maskTel(obj) { 
	var str = obj.value;
	
	if ( str ) { 
		//var pattern = /[^(ㄱ-?)]|[-/\s]/g; 
		var RegNotNum  = /[\D]/g; 
		var pattern = ""; 
		var format  = ""; 

		// delete not number ㅋ 
		str = str.replace(RegNotNum,''); 

		//if( str.length < 4 ) return str; 
		if( str.length < 4 ) { 
			if( str.length == 3 ) { 
				format = "$1"; 
				pattern = /(^0[\d]{0,1})/; 
			} else { 
				format = "$1"; 
				pattern = /(^0[1]?[\d]{0,1})/; 
			} 
		} else if( str.length > 3 && str.length < 7 ) {
			format = "$1-$2"; 
			if (str.substring(0,2) == '02') {
				pattern = /(^[\d]{1})([\d]+)/;
			} else {
				pattern = /(^[\d]{3})([\d]+)/;
			}
		} else if(str.length == 7 ) {
			format = "$1-$2";
			if (str.substring(0,2) == '02') {
				pattern = /(^[\d]{2})([\d]{4})/;
			} else {
				pattern = /(^[\d]{3})([\d]{4})/;
			}
		} else { 
			format = "$1-$2-$3";
			if (str.substring(0,2) == '02') {
				pattern = /(^[\d]{2})([\d]{4})([\d]+)/;
			} else {
				pattern = /(^[\d]{3})([\d]{4})([\d]+)/;
			}
		} 

		//while( pattern.test(str) ) { 
		if ( pattern.test(str) ) { 
			obj.value = str.replace(pattern, format); 
		} else { 
			obj.value = ""; 
		} 
	} 
} 


// 이메일 체크
function isMail(strValue)
{
/** 체크사항 
	- @가 2개이상일 경우 
	- .이 붙어서 나오는 경우 
	-  @.나  .@이 존재하는 경우 
	- 맨처음이.인 경우 
	- @이전에 하나이상의 문자가 있어야 함 
	- @가 하나있어야 함 
	- Domain명에 .이 하나 이상 있어야 함 
	- Domain명의 마지막 문자는 영문자 2~4개이어야 함 **/ 
	 
	var check1 = /(@.*@)|(\.\.)|(@\.)|(\.@)|(^\.)/; 

	var check2 = /^[a-zA-Z0-9\-\.\_]+\@[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,4})$/; 
	if( strValue.length !="") 
	{ 
		if ( !check1.test(strValue) && check2.test(strValue) ) 
		{ 
			return false; 
		} 
		else 
		{ 

			return true; 
		 } 
	}else{
		return true;
	}
}

// 비밀번호 검증
function containsChars(obj, chars){
	for(var inx=0; inx < obj.value.length; inx++){
		if(chars.indexOf(obj.value.charAt(inx)) != -1)return false;
	}
	return true;
}

function getLength(source_text) 
{
	var text_Length = 0;
	var tot_count = 0;
	var onechar;

	text_Length = source_text.length;			// 텍스트의 문자열 길이를 받습니다.

	for (i=0;i < text_Length;i++)				// 문자열 길이만큼 루프를 돌겠습니다.
	{
		onechar = source_text.charAt(i);		// 문자열 하나를 받습니다.

		if (escape(onechar).length > 4)			// escape 함수를 이용해 길이를 구해봅니다. (자바스크립트 함수표 참조)
		{
			tot_count += 2;						// 만약 한글이라면 2를 더하고
		}
		else if (onechar!='\r')					// 엔터가 아니라면
		{
		tot_count++;							// 1을 더한다.
		}
	}
	return tot_count;
	//alert(tot_count + " Byte 입니다.");
}