<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>한잔해 Project</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">

    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/bootstrap-responsive.min.css">
    <link rel="stylesheet" href="/resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/css/main.css">
    <link rel="stylesheet" href="/resources/css/sl-slide.css">

    <script src="/resources/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/resources/images/ico/apple-touch-icon-57-precomposed.png">
    
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
    <style>
    	@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
        @media screen and (max-width: 979px){
            body{
                padding-top: 0px;
                padding-left:0px;
				padding-right:0px;
            }
            
            .container,.navbar,.footer {
            	padding-left: 20px;
				padding-right: 20px;
            }
            
            .title {
            	padding-top:0px;
				padding-bottom:0px;
            }
            
            h2 {
            	font-size: 25px;
            }
        }
        
        #ts1 {
			/* max-width:800px;
			height:500px;
			margin: auto; */
	    }
        
	    #ts1 li a{
	        text-decoration:none;
	        /* color:white; */
	        color:black;
	    }
	    
	    #ts1 ul {
	    	list-style-type:none;
	    }
        
        body {
	        background-image: url(/resources/images/search/search_back.jpg);
	        background-position: center center;
	        background-repeat: no-repeat;
	        background-attachment: fixed;
	        background-size: cover;
	        background-color: #464646;
	        font-family: 'Nanum Gothic', serif;
        }
        
        p,strong {
        	font-family: 'Nanum Gothic', serif;
        }
        
        #back {
        	/* background-image: url(/resources/images/search/search_back.jpg);
	        background-position: center center;
	        background-repeat: no-repeat;
	        background-attachment: fixed;
	        background-size: cover;
	        background-color: #464646; */
        }
        
        .question {
        	color: ;
        }
        
        /* modal 크기 */
        .modal-body {
		    position: relative;
		    overflow-y: auto; /* 내용이 바디의 크기를 넘어가면 y축 스크롤바가 생긴다 */
		    max-height: 500px; /* modal창의 최대 높이를 조정 */
		    padding: 15px;
		}
		
		/* blur */
		/* .bgBlur:before {
		  content: '';
		  position: absolute;
		  top: 0; left:0; right:0; bottom:0;
		  background: inherit;
		  z-index:-1;
		  filter: blur(6px); 
		  -webkit-filter: blur(6px); 
		  -moz-filter: blur(6px);
		  -o-filter: blur(6px);
		  filter:url(#blur);
		} */
		
		.resultCont{
			font-size: 12px;
			line-height: 1.6em;
		}
		
		.btn {
			font-family: 'Nanum Gothic', serif;
			border-radius: 5px;
		}
		
		#relatedContList {
			display: none;
		}
		
		.resThumb {
			width: 300px;
			border-radius: 30px;
		}
		
		.footer {
			position: absolute;
			left:0;
			bottom:0px;
			width:100%;
			/* background-color: #343434; */
			height:40px;
			/* font-size: 12px;
			color: white;
			line-height: 4em; */
		}
		
		.center-button{
            /* height: 40px; */
            width: 180px;
            margin:auto;
        }
        
        .prevBtn {
        	display: none;
        }
        
        .nextBtn {
        	display: none;
        }
        
        .modal-title {
        	font-size: 30px;
        }
		
    </style>
    
</head>
<body>

   <!--Header-->
    <header class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <a id="logo" class="pull-left" href="/index"></a>
                <div class="nav-collapse collapse pull-right">
                    <ul class="nav">
                        <li><a href="/index"><p>메인화면</p></a></li>
                        <li class="active"><a href="/search/main"><p>검색</p></a></li>
                        <li><a href="/book/main"><p>나만의도감</p></a></li>
                        <li><a href="/favor/main"><p>즐겨찾기</p></a></li>
                        <li><a href="/diary/main"><p>관찰일기</p></a></li> 
                        <li><a href="/mypages/main">My Pages</a></li>
                        <li class="login" id="login"> <a href="/user/login">Login</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </header>
    <!-- /header -->


<section class="title">
    <div class="container">
        <div class="row-fluid">
            <div class="span6">
                <h1>Search</h1>
            </div>
            <!-- <div class="span6">
            	<div class="question text-center">질문이 들어갈 부분</div>
            </div> -->
        </div>
    </div>
</section>
<!-- / .title -->

<!-- <div id="back"> -->
    <div class="question text-center">질문이 들어갈 부분</div>
    <!--tagClout-->
    <div id="ts1" class="span8 offset4">질문 배열이 들어갈 부분. tagCloud</div>
    <!-- <div id="ts1">질문 배열이 들어갈 부분. tagCloud</div> -->
<!-- </div> -->

<!--Footer-->
<div class="footer">
	<div class="center-button">
        <a href="javascript:prevPage()" class="btn btn-primary pull-left prevBtn">이전</a>
        <a href="javascript:nextPage()" class="btn btn-primary pull-right nextBtn">다음</a>
    </div>
</div>
<!--/Footer-->

<!-- Result Modal -->
	<div class="modal hide fade" id="resultModal" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only"></span></button>
	                <p class="modal-title text-center" id="myModalLabel">제목이 들어갈 부분</p>
	            </div>
	            <br>
	            <div class="modal-body">
	                <div class="resultPic text-center">사진이 들어갈 부분</div>
	                <br>
	                <div class="resultCont">내용이 들어갈 부분</div>
		            <br>
		            <button type='button' class='listButton btn btn-primary btn-lg'>관련 컨텐츠</button>
		            <br><br>
		            <div id="relatedContList">관련컨텐츠 배열이 들어갈 부분</div>
	            </div>
	        </div>
	    </div>
	</div>

<script src="/resources/js/vendor/jquery-1.9.1.min.js"></script>
<script src="/resources/js/vendor/bootstrap.min.js"></script>
<script src="/resources/js/main.js"></script>


<!--tagCloud-->
<!-- <script type="text/javascript" src="/resources/js/jquery.min.js"></script> -->
<script type="text/javascript" src="/resources/js/jquery.mousewheel.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.tagsphere.js"></script>


<!-- 검색로직 -->
<script src="/resources/js/search/arr.js"></script>
<script src="/resources/js/search/jquery.ui.touch.js"></script>

<script type="text/javascript">
	
	window.onload = function getCookie( cookieName ){
		var search = cookieName + "=";
		var cookie = document.cookie;
		// 현재 쿠키가 존재할 경우
		if( cookie.length > 0 ){
			$("#login").html("<a href='/user/logout'>LogOut</a>");
		}
	}

	// tagcloud 위치값 연산
    /* var maxwidth = document.getElementById('ts1').clientWidth;
    var width = parseInt(maxwidth) / 2 + 25;
    var maxheight = document.getElementById('ts1').clientHeight;
    var height = parseInt(maxheight)/ 2 - 100; */
    
    // 동적화면 계산
    var bodyWidth = window.innerWidth;
    var bodyHeight = window.innerHeight-255;
    var maxwidth = document.getElementById('ts1').clientWidth;
    var width = parseInt(maxwidth) / 2;
    var height = parseInt(bodyHeight) / 4;
    console.log(width,height);
    $('#back').css('height',bodyHeight);
    $('#ts1').css('height',bodyHeight-60);
    // $('#back').css('width',bodyWidth);
    window.onresize = function(event) {
    	bodyWidth = window.innerWidth;
    	bodyHeight = window.innerHeight-255;
    	maxwidth = document.getElementById('ts1').clientWidth;
    	$('#back').css('height',bodyHeight);
    	$('#ts1').css('height',bodyHeight-60);
    	var width = parseInt(maxwidth) / 2;
        var height = parseInt(bodyHeight) / 4;
    };
    
    

    // 검색로직
    var rootArr = new Array(); // 전체 질문들을 모아두는 배열
	var roots = new Array(); // 선택경로를 담아두는 배열
	var resultSno = 0; // 관련컨텐츠 호출시 사용될 변수
	var page = 0;
	var cnt = 0;
	
	// 검색결과 관련컨텐츠 토글
	$(".listButton").click(function(){
		var target = document.getElementById("relatedContList");
		var str = "<ul>";
		var keySet = "자연,";
		switch(roots[1]){
		case "p2":
			keySet += "꽃분류,";
			break;
		case "p1":
			keySet += "나무분류,";
			switch(roots[3]){
			case "1":
				keySet += "꽃분류,";
				break;
			case "2":
				keySet += "나뭇잎,";
			}
			break;
		}
		
		$.ajax({
			type:"post",
			url:"/search/setCont/",
			data:{keySet:keySet},
			dataType:"json",
			async:false,
			success:function(data){
				var cnoSet = "";
				if(data == ""){
					str += "관련 컨텐츠가 없습니다.";
				}else{
					var contArr = new Array();
					for(var i=0; i<5; i++){
						var arrLen = data.length;
						var num = Math.floor((Math.random() * arrLen));
						contArr.push(data[num]);
						data.splice(num,1);
					}
					$.each(contArr, function(key,val){
						cnoSet += val.cno + ",";
					});
					$.each(contArr, function(key,val){
						console.log(cnoSet);
						str += "<li><a href='/search/contList?cnoSet="+cnoSet+"&cno="+val.cno+"'>["+val.cate+"] " + val.title + "</a></li>";
					});
				}
			}
		});
		$("#relatedContList").html(str);
		
		if(target.style.display == "none"){
			target.style.display = "block";
		}else{
			target.style.display = "none";
		}
	});
	
	// 검색결과 화면
	function resultBody(num){
		var str = "";
		$.ajax({
			type:"post",
			url:"/search/result",
			data:{sno:num},
			dataType:"json",
			async:false,
			success:function(data){
				console.log(data);

				resultSno = data.sno;
				$(".modal-title").html("<strong>" + data.title + "<strong>");
				$(".resultPic").html("<img src='/resources/images/search/img/"+data.contfile+"'>");
				$(".resultCont").html(data.cont);
				document.getElementById("relatedContList").style.display = "none";
			}
		});
	}
	
	// 경로에 따른 질문을 걸러냄
	function rootQuestion(rootSet,rootStr){
		console.log("rootStr : " + rootStr);
		roots.push(rootStr);
		console.log("roots : " + roots);
	    var questionArr = new Array(); // 질문을 모아두는 배열
	    var arrLen = rootArr.length;
	    for(var i = 0,len = arrLen; i < len; i++ ){
	        if(rootArr[i].root == rootSet) {
	            questionArr.push(rootArr[i]);
	        }
	    }
	    setQuestion(questionArr);
	}
	
	// 질문 생성
	function setQuestion(arr){
	    var str = "<ul>"; // innerHTML에 들어갈 문장
	    var questionStr =""; // 질문내용
	    $.each(arr, function(key,val){
	    	questionStr = val.question;
	    	if(val.res == "y"){
	    		switch(val.img){
	    		case "잎넓적잎.png":
	    			str += "<li class='span3'>" +
					"<a href='javascript:setResult(\""+val.rootSet+"\")'>" +
					"<img src='/resources/images/search/tag/"+val.img+"'>" + 
					"</a></li>" +
					"<li class='span3'>" +
					"<a href='javascript:setResult(\""+val.rootSet+"\")'>" +
					"<img src='/resources/images/search/tag/잎넓적잎1.png'>" + 
					"</a></li>"
	    			break;
	    		case "잎불규칙.png":
	    			str += "<li class='span3'>" +
					"<a href='javascript:setResult(\""+val.rootSet+"\")'>" +
					"<img src='/resources/images/search/tag/"+val.img+"'>" + 
					"</a></li>" +
					"<li class='span3'>" +
					"<a href='javascript:setResult(\""+val.rootSet+"\")'>" +
					"<img src='/resources/images/search/tag/잎불규칙1.png'>" + 
					"</a></li>"
	    			break;
				default:
					str += "<li class='span3'>" +
					"<a href='javascript:setResult(\""+val.rootSet+"\")'>" +
					"<img src='/resources/images/search/tag/"+val.img+"'>" + 
					"</a></li>"
	    		}
	    	}else{
	    		switch(val.img){
	    		case "포도.png":
	    			str += "<li class='span3'>" +
					"<a href='javascript:rootQuestion(\""+val.rootSet+"\",\""+val.rootStr+"\")'>" +
					"<img src='/resources/images/search/tag/"+val.img+"'>" + 
					"</a></li>" +
					"<li class='span3'>" +
					"<a href='javascript:rootQuestion(\""+val.rootSet+"\",\""+val.rootStr+"\")'>" +
					"<img src='/resources/images/search/tag/체리.png'>" + 
					"</a></li>"
	    			break;
				default:
					str += "<li class='span3'>" +
					//"<a href='javascript:rootQuestion(\""+val.rootSet+"\",\""+val.rootStr+"\")'>" +
					"<a href='javascript:rootQuestion(\""+val.rootSet+"\",\""+val.rootStr+"\")' touchstart='rootQuestion(\""+val.rootSet+"\",\""+val.rootStr+"\")'>" +
					"<img src='/resources/images/search/tag/"+val.img+"'>" + 
					"</a></li>"
	    		}
			}
	    });
	    str += "</ul>";
	    $("#ts1").html(str);
		$(".question").html("<h2><strong>"+questionStr+"</strong></h2>");
	    
	    // 생성된 리스트를 tagcloud로 적용시켜준다
		$('#ts1').tagcloud({centrex:width, centrey:height, init_motion_x:10, init_motion_y:10 });
	}
	
	// 검색결과 페이징
	function nextPage() {
		setResult(roots.join(""),page++);
		setPage();
	}
	
	function prevPage(){
		setResult(roots.join(""),page--);
		setPage();
	}
	
	function setPage(){
		if(page*8 < cnt){
			$(".nextBtn").css("display","block");
		}else{
			$(".nextBtn").css("display","none");
		}
		if(page > 1){
			$(".prevBtn").css("display","block");
		}else{
			$(".prevBtn").css("display","none");
		}
	}
	
	// 검색결과 생성
	function setResult(rootSet, num){
		var str = "<ul>"; // innerHTML에 들어갈 문장
		var resultNum = 0;
		$.ajax({
			type:"post",
			url:"/search/setResult/",
			data:{rootSet:rootSet,page:num},
			dataType:"json",
			async:false,
			success:function(data){
				resultNum = data.length;
				$.each(data, function(key,val){
					cnt = val.cnt;
					str += "<li class='span3'>" +
					"<a class='resThumb' onclick='resultBody("+val.sno+")' data-toggle='modal' data-target='#resultModal'>" +
					"<img src='/resources/images/search/img/"+val.contfile+"' style='border: solid 3px white; border-radius: 30px;'>" + 
					"</a></li>"
				});
			}
		});
		str += "</ul>";
	    $("#ts1").html(str);
	    $(".question").html("<h2><strong>"+resultNum+"개의 결과가 검색되었습니다.</strong></h2>.");
	    
	    // 생성된 리스트를 tagcloud로 적용시켜준다
		$('#ts1').tagcloud({centrex:width, centrey:height, init_motion_x:10, init_motion_y:10 });
		
		if(page == 0 && cnt > 8){
			page=1;
			$(".nextBtn").css("display","block");
		}
	}
	
	$(document).ready(function(){
	    setArr();
	    rootQuestion("s","");
	});

</script>

<style type="text/css">
    
</style>
<!--end tagCloud-->

</body>
</html>