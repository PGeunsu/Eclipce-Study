$(function(){ //메뉴바 리스트 구현
	$(".s598-gnb-pc .s598-gnb-wrap .navi .menu-1depth:nth-child(2)").mouseenter(function(){
		$(".s598-gnb-pc .s598-gnb-wrap .navi").css("box-shadow","rgb(0,0,0,0.2) 0px 13px 25px -10px").css("height","345px")
		$(".s598-gnb-pc .s598-gnb-wrap .s598-navi .menu-1depth:nth-child(2) > .menu-panel").css("display","block").css("z-index","2").css("opacity","1")
	});
	
	$(".s598-gnb-pc .s598-gnb-wrap .navi .menu-1depth:nth-child(2)").mouseleave(function(){
		$(".s598-gnb-pc .s598-gnb-wrap .navi").css("box-shadow","none").css("height","86px")
		$(".s598-gnb-pc .s598-gnb-wrap .s598-navi .menu-1depth:nth-child(2) > .menu-panel").css("display","none").css("z-index","1").css("opacity","0")
	});
	$(".s598-gnb-pc .s598-gnb-wrap .navi .menu-1depth:nth-child(3)").mouseenter(function(){
		$(".s598-gnb-pc .s598-gnb-wrap .navi").css("box-shadow","rgb(0,0,0,0.2) 0px 13px 25px -10px").css("height","464px")
		$(".s598-gnb-pc .s598-gnb-wrap .s598-navi .menu-1depth:nth-child(3) > .menu-panel").css("display","block").css("z-index","2").css("opacity","1")
	});
	
	$(".s598-gnb-pc .s598-gnb-wrap .navi .menu-1depth:nth-child(3)").mouseleave(function(){
		$(".s598-gnb-pc .s598-gnb-wrap .navi").css("box-shadow","none").css("height","86px")
		$(".s598-gnb-pc .s598-gnb-wrap .s598-navi .menu-1depth:nth-child(3) > .menu-panel").css("display","none").css("z-index","1").css("opacity","0")
	});
	$(".s598-gnb-pc .s598-gnb-wrap .navi .menu-1depth:nth-child(4)").mouseenter(function(){
		$(".s598-gnb-pc .s598-gnb-wrap .navi").css("box-shadow","rgb(0,0,0,0.2) 0px 13px 25px -10px").css("height","345px")
		$(".s598-gnb-pc .s598-gnb-wrap .s598-navi .menu-1depth:nth-child(4) > .menu-panel").css("display","block").css("z-index","2").css("opacity","1")
	});
	
	$(".s598-gnb-pc .s598-gnb-wrap .navi .menu-1depth:nth-child(4)").mouseleave(function(){
		$(".s598-gnb-pc .s598-gnb-wrap .navi").css("box-shadow","none").css("height","86px")
		$(".s598-gnb-pc .s598-gnb-wrap .s598-navi .menu-1depth:nth-child(4) > .menu-panel").css("display","none").css("z-index","1").css("opacity","0")
	});
	$(".s598-gnb-pc .s598-gnb-wrap .navi .menu-1depth:nth-child(5)").mouseenter(function(){
		$(".s598-gnb-pc .s598-gnb-wrap .navi").css("box-shadow","rgb(0,0,0,0.2) 0px 13px 25px -10px").css("height","345px")
		$(".s598-gnb-pc .s598-gnb-wrap .s598-navi .menu-1depth:nth-child(5) > .menu-panel").css("display","block").css("z-index","2").css("opacity","1")
	});
	
	$(".s598-gnb-pc .s598-gnb-wrap .navi .menu-1depth:nth-child(5)").mouseleave(function(){
		$(".s598-gnb-pc .s598-gnb-wrap .navi").css("box-shadow","none").css("height","86px")
		$(".s598-gnb-pc .s598-gnb-wrap .s598-navi .menu-1depth:nth-child(5) > .menu-panel").css("display","none").css("z-index","1").css("opacity","0")
	});
	$(".s598-gnb-pc .s598-gnb-wrap .navi .menu-1depth:nth-child(6)").mouseenter(function(){
		$(".s598-gnb-pc .s598-gnb-wrap .navi").css("box-shadow","rgb(0,0,0,0.2) 0px 13px 25px -10px").css("height","345px")
		$(".s598-gnb-pc .s598-gnb-wrap .s598-navi .menu-1depth:nth-child(6) > .menu-panel").css("display","block").css("z-index","2").css("opacity","1")
	});
	
	$(".s598-gnb-pc .s598-gnb-wrap .navi .menu-1depth:nth-child(6)").mouseleave(function(){
		$(".s598-gnb-pc .s598-gnb-wrap .navi").css("box-shadow","none").css("height","86px")
		$(".s598-gnb-pc .s598-gnb-wrap .s598-navi .menu-1depth:nth-child(6) > .menu-panel").css("display","none").css("z-index","1").css("opacity","0")
	});
	$(".s598-gnb-pc .s598-gnb-wrap .navi .menu-1depth:nth-child(7)").mouseenter(function(){
		$(".s598-gnb-pc .s598-gnb-wrap .navi").css("box-shadow","rgb(0,0,0,0.2) 0px 13px 25px -10px").css("height","345px")
		$(".s598-gnb-pc .s598-gnb-wrap .s598-navi .menu-1depth:nth-child(7) > .menu-panel").css("display","block").css("z-index","2").css("opacity","1")
	});
	
	$(".s598-gnb-pc .s598-gnb-wrap .navi .menu-1depth:nth-child(7)").mouseleave(function(){
		$(".s598-gnb-pc .s598-gnb-wrap .navi").css("box-shadow","none").css("height","86px")
		$(".s598-gnb-pc .s598-gnb-wrap .s598-navi .menu-1depth:nth-child(7) > .menu-panel").css("display","none").css("z-index","1").css("opacity","0")
	});
	
	
	//footer select option	
	$(".s593 .family-site .combobox__button").click(function(){ //닫혀있을 때
		
		$(".s593 .family-site .combobox__button").addClass("is-opened")
		$(".s593 .family-site .combobox__scroll").addClass("has-scrollbar").addClass("is-opened").css("display","block").css("touch-action","none")
	});
	
	
	});
		
