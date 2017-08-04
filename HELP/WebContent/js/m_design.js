//$(document).ready(function(){
//	$("#one").prepend('<img src="/kr/mod/images/main/bg_1.jpg" class="bg" style="position:fixed;">' );
//});

function mainStart(){

    var num;

    $('html,body').stop().animate({scrollTop : 0},100);
    num = Number($("#one").css('height').substr(0,3));

    (new TimelineLite({onComplete:initScrollAnimations}))
        .append([
            TweenMax.to( $('#box01'),.4+Math.random(), {delay:.3, css:{top: '251px'}, ease:Back.easeOut}),
            TweenMax.to( $('#box02'),.4+Math.random(), {delay:.1, css:{top: '193px'}, ease:Back.easeOut}),
            TweenMax.to( $('#box03'),.4+Math.random(), {delay:.4, css:{top: '296px'}, ease:Back.easeOut}),
            TweenMax.to( $('#box04'),.4+Math.random(), {css:{top: '192px'}, ease:Back.easeOut})
        ])

    function initScrollAnimations() {


        var controller = $.superscrollorama();

        controller.addTween('#two',(new TimelineLite({onStart:twoStart, onComplete:twoComplete}))
            .append([
                TweenMax.from( $('#s2_back01'),.8, {css:{bottom: '-1400px'}}),
                TweenMax.from( $('#s2_back02'),.8, {delay:.1, css:{bottom: '-1400px'}}),
                TweenMax.from( $('#s2_back03'),.8, {delay:.3, css:{bottom: '-1400px'}}),
                //TweenMax.from( $('#s2_deco02'),.8, {css:{top: '-1000px'}}),
                //TweenMax.from( $('#s2_deco01'),.8, {delay:.2, css:{top: '-1000px'}}),
                TweenMax.from( $('#s2_deco03'),.8, {delay:.4, css:{top: '-1000px'}})
            ]))
			
    }//initScrollAnimations


}//mainStart


      
// 테이블 스크롤 이동
 $(function() {
			//fn_loadopen();
			$(".slide_table").on("scroll click", function() {
				$(this).find(".mobile_table_guide").hide();
			});
			$(".pop_view").click(function() {
				$(".view_popup").fadeIn(300);
				$(".shadow").fadeIn(300);
				return false;
			});
			$(".view_popup .close, .shadow").click(function() {
				$("#password").val('');
				$(".view_popup").fadeOut(300);
				$(".shadow").fadeOut(300);
				return false;
				
			});
			$(".view_popup2 .close, .shadow").click(function() {
				$("#password").val('');
				$(".view_popup2").fadeOut(300);
				$(".shadow").fadeOut(300);
				return false;
				
				
			});

			$(".site_link>span>a").click(function(){
				$(".site_link dl").fadeToggle(500);
				return false;
			});

			$(".site_link dl").mouseleave(function(){
				$(this).fadeOut(500);
				return false;
			});
});
	  

 $(document).ready(function(){
	 //fn_loadopen();

 });
 
 $(window).load(function(){
	 fn_loadclose();

 });

 
 function fn_loadopen(){
	 $(".loader").show();
	 $(".shadow2").show();	
	 
 }
 function fn_loadclose(){
	 $(".loader").hide();
	 $(".shadow2").hide();	 
 }
					

// 메인 모션

//<![CDATA[

//동영상 배경 
$(document).ready(function(){
    
	$("#jquery_jplayer_1").jPlayer({
		ready: function () {
			$(this).jPlayer("setMedia", {
				m4v: "/kor/images/movie_bg.mp4",
			}).jPlayer("play"); 
		},
		swfPath: "js",
		supplied: "webmv, ogv, m4v",
		size: {
			width:"2000px",
			height:"1200px",
		},
		smoothPlayBar: true,
		loop: true,
		keyEnabled: true
	});
	
});
//동영상 배경 

function fn_mainDis(flag){
	
	var pot_one = $('#one').position().left;
	var pot_two = $('#two').position().left;
	var pot_three = $('#three').position().left;
	
	if(flag == '1'){
		
		if(pot_one == 0){
						
		}else if(pot_two == 0){
			//alert(pot_one);
			
			document.getElementById("slide01").style.display="block";

			$("#two").animate({"left":1000},500,"easeInOutCubic");
			$("#one").css("left","-1000px");
			$("#one").animate({"left":0},500,"easeInOutCubic");
			$("#three").css("left","-1000px");
			
			$("#btn_custom").addClass("active");
			$("#btn_develop").removeClass("active");
			$("#btn_manage").removeClass("active");
			$("#btn_develop").removeClass("ot_left");
			$("#wrapper2").fadeOut();
			$("#wrapper").fadeIn();

			setTimeout(function(){document.getElementById("slide02").style.display="none";},500);
			setTimeout(function(){document.getElementById("slide03").style.display="none";},500);
			
		}else if(pot_three == 0){
			//alert(pot_one);
			document.getElementById("slide01").style.display="block";

			$("#three").animate({"left":1000},500,"easeInOutCubic");
			$("#one").css("left","-1000px");
			$("#one").animate({"left":0},500,"easeInOutCubic");
			$("#two").css("left","-1000px");
			
			$("#btn_custom").addClass("active");
			$("#btn_develop").removeClass("active");
			$("#btn_manage").removeClass("active");
			$("#btn_develop").removeClass("ot_left");
			
			$("#wrapper3").fadeOut();
			$("#wrapper").fadeIn();

			setTimeout(function(){document.getElementById("slide02").style.display="none";},500);
			setTimeout(function(){document.getElementById("slide03").style.display="none";},500);
		}	 
		
	}else if(flag == '2'){
		if(pot_one == 0){
		//alert(pot_one);
			document.getElementById("slide02").style.display="block";

			$("#one").animate({"left":-1000},500,"easeInOutCubic");
			$("#two").css("left","1000px");
			$("#two").animate({"left":0},500,"easeInOutCubic");
			$("#three").css("left","1000px");
			
			$("#btn_custom").removeClass("active");
			$("#btn_develop").removeClass("ot_left");
			$("#btn_develop").addClass("active");
			$("#btn_manage").removeClass("active");
			
			$("#wrapper").fadeOut();
			$("#wrapper2").fadeIn();

			setTimeout(function(){document.getElementById("slide01").style.display="none";},500);
			setTimeout(function(){document.getElementById("slide03").style.display="none";},500);
			
		}else if(pot_three == 0){

			document.getElementById("slide02").style.display="block";

			$("#three").animate({"left":1000},500,"easeInOutCubic");
			$("#two").css("left","-1000px");
			$("#two").animate({"left":0},500,"easeInOutCubic");
			$("#one").css("left","-1000px");
			
			$("#btn_custom").removeClass("active");
			$("#btn_develop").addClass("active");
			$("#btn_develop").removeClass("ot_left");
			$("#btn_manage").removeClass("active");
			
			$("#wrapper3").fadeOut();
			$("#wrapper2").fadeIn();

			setTimeout(function(){document.getElementById("slide01").style.display="none";},500);
			setTimeout(function(){document.getElementById("slide03").style.display="none";},500);
		}
		
	}else{
		if(pot_two == 0){

			document.getElementById("slide03").style.display="block";
		
			$("#two").animate({"left":-1000},500,"easeInOutCubic");
			$("#three").css("left","1000px");
			$("#three").animate({"left":0},500,"easeInOutCubic");
			$("#one").css("left","1000px");
			
			
			$("#btn_custom").removeClass("active");
			$("#btn_develop").removeClass("active");
			$("#btn_develop").addClass("ot_left");
			$("#btn_manage").addClass("active");
			
			$("#wrapper2").fadeOut();
			$("#wrapper3").fadeIn();
				
			setTimeout(function(){document.getElementById("slide01").style.display="none";},500);
			setTimeout(function(){document.getElementById("slide02").style.display="none";},500);
			
		}else if(pot_one == 0){
			//alert(pot_one);
			
			document.getElementById("slide03").style.display="block";

			$("#one").animate({"left":-1000},500,"easeInOutCubic");
			$("#three").css("left","1000px");
			$("#three").animate({"left":0},500,"easeInOutCubic");
			$("#two").css("left","1000px");
			
			$("#btn_custom").removeClass("active");
			$("#btn_develop").removeClass("active");
			$("#btn_develop").addClass("ot_left");
			$("#btn_manage").addClass("active");
			
			$("#wrapper").fadeOut();
			$("#wrapper3").fadeIn();

			setTimeout(function(){document.getElementById("slide01").style.display="none";},500);
			setTimeout(function(){document.getElementById("slide02").style.display="none";},500);
		}
	}
	setTimeout(re_size, 1000);
}

function move_Left(){
	var pot_one = $('#one').position().left;
	var pot_two = $('#two').position().left;
	var pot_three = $('#three').position().left;

	if(pot_one == 0){

		document.getElementById("slide03").style.display="block";

		$("#one").animate({"left":1000},500,"easeInOutCubic");
		$("#three").css("left","-1000px");
		$("#three").animate({"left":0},500,"easeInOutCubic");
		$("#two").css("left","-1000px");
		
		$("#btn_custom").removeClass("active");
		$("#btn_develop").removeClass("active");
		$("#btn_develop").addClass("ot_left");
		$("#btn_manage").addClass("active");
		$("#wrapper").fadeOut();
		$("#wrapper3").fadeIn();

		setTimeout(function(){document.getElementById("slide01").style.display="none";},500);
		setTimeout(function(){document.getElementById("slide02").style.display="none";},500);
		
	}else if(pot_two == 0){

		document.getElementById("slide01").style.display="block";

		$("#two").animate({"left":1000},500,"easeInOutCubic");
		$("#one").css("left","-1000px");
		$("#one").animate({"left":0},500,"easeInOutCubic");
		$("#three").css("left","-1000px");
		
		$("#btn_custom").addClass("active");
		$("#btn_develop").removeClass("active");
		$("#btn_develop").removeClass("ot_left");
		$("#btn_manage").removeClass("active");
		$("#wrapper2").fadeOut();
		$("#wrapper").fadeIn();

		setTimeout(function(){document.getElementById("slide02").style.display="none";},500);
		setTimeout(function(){document.getElementById("slide03").style.display="none";},500);
		
	}else if(pot_three == 0){

		document.getElementById("slide02").style.display="block";
	
		$("#three").animate({"left":1000},500,"easeInOutCubic");
		$("#two").css("left","-1000px");
		$("#two").animate({"left":0},500,"easeInOutCubic");
		$("#one").css("left","-1000px");
		
		$("#btn_custom").removeClass("active");
		$("#btn_develop").addClass("active");
		$("#btn_manage").removeClass("active");
		$("#btn_develop").removeClass("ot_left");
		$("#wrapper3").fadeOut();
		$("#wrapper2").fadeIn();

		setTimeout(function(){document.getElementById("slide01").style.display="none";},500);
		setTimeout(function(){document.getElementById("slide03").style.display="none";},500);
		
	}	 
}

function move_Right(){
	var pot_one = $('#one').position().left;
	var pot_two = $('#two').position().left;
	var pot_three = $('#three').position().left;
	
	if(pot_one == 0){

		document.getElementById("slide02").style.display="block";

		$("#one").animate({"left":-1000},500,"easeInOutCubic");
		$("#two").css("left","1000px");
		$("#two").animate({"left":0},500,"easeInOutCubic");
		$("#three").css("left","1000px");
		
		$("#btn_custom").removeClass("active");
		$("#btn_develop").removeClass("ot_left");
		$("#btn_develop").addClass("active");
		$("#btn_manage").removeClass("active");
		$("#wrapper").fadeOut();
		$("#wrapper2").fadeIn();

		setTimeout(function(){document.getElementById("slide01").style.display="none";},500);
		setTimeout(function(){document.getElementById("slide03").style.display="none";},500);
		
		
	}else if(pot_two == 0){

		document.getElementById("slide03").style.display="block";

		$("#two").animate({"left":-1000},500,"easeInOutCubic");
		$("#three").css("left","1000px");
		$("#three").animate({"left":0},500,"easeInOutCubic");
		$("#one").css("left","1000px");
		
		$("#btn_custom").removeClass("active");
		$("#btn_develop").removeClass("active");
		$("#btn_develop").addClass("ot_left");
		$("#btn_manage").addClass("active");
		$("#wrapper2").fadeOut();
		$("#wrapper3").fadeIn();

		setTimeout(function(){document.getElementById("slide01").style.display="none";},500);
		setTimeout(function(){document.getElementById("slide02").style.display="none";},500);
		
	}else if(pot_three == 0){
		//alert(pot_one);
		
		document.getElementById("slide01").style.display="block";

		$("#three").animate({"left":-1000},500,"easeInOutCubic");
		$("#one").css("left","1000px");
		$("#one").animate({"left":0},500,"easeInOutCubic");
		$("#two").css("left","1000px");
		
		$("#btn_custom").addClass("active");
		$("#btn_develop").removeClass("active");
		$("#btn_manage").removeClass("active");
		$("#btn_develop").removeClass("ot_left");
		$("#wrapper3").fadeOut();
		$("#wrapper").fadeIn();

		setTimeout(function(){document.getElementById("slide02").style.display="none";},500);
		setTimeout(function(){document.getElementById("slide03").style.display="none";},500);
	}
	
};

function re_size(){

	var pot_one = $('#one').position().left;
	var pot_two = $('#two').position().left;
	var pot_three = $('#three').position().left;
	
	var one_height = $('#one').height();
	var two_height = $('#two').height();
	var three_height = $('#three').height();
	
 	if(pot_one == 0){
     
		$('.p_conwrap').css("height", one_height);
		
	}else if(pot_three == 0){
	
		$('.p_conwrap').css("height", three_height);
		
	}else if(pot_two == 0){
    
    $('.p_conwrap').css("height", two_height);
  }
}

//]]>

		
               
      