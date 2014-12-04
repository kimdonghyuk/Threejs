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
            }
        }
        
        /* body {font-family:arial, sans-serif;} */
	    #ts1 li a{
	        text-decoration:none;
	        /* color:white; */
	        color:black;
	    }
	    ul {list-style-type:none;}
        
        body {
	        /* background-image: url(/resources/images/search/search_back.jpg);
	        background-position: center center;
	        background-repeat: no-repeat;
	        background-attachment: fixed;
	        background-size: cover; */
	        background-color: #464646;
	        font-family: 'Nanum Gothic', serif;
        }
        
        #back {
        	background-image: url(/resources/images/search/search_back.jpg);
	        background-position: center center;
	        background-repeat: no-repeat;
	        background-attachment: fixed;
	        background-size: cover;
	        background-color: #464646;
        }
        
        /* modal 크기 */
        .modal-body {
		    position: relative;
		    overflow-y: auto; /* 내용이 바디의 크기를 넘어가면 y축 스크롤바가 생긴다 */
		    max-height: 600px; /* modal창의 최대 높이를 조정 */
		    padding: 15px;
		}
		
		/* blur */
		.bgBlur:before {
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
		}
		
		.str1 {
			font-size: 30px;
		}
    </style>
    
</head>
<body class="bgBlur">

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
                        <li><a href="/index">메인화면</a></li>
                        <li class="active"><a href="/search/main">검색</a></li>
                        <li><a href="/book/main">나만의도감</a></li>
                        <li><a href="/favor/main">즐겨찾기</a></li>
                        <li><a href="/diary/main">관찰일지</a></li> 
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
        </div>
    </div>
</section>
<!-- / .title -->

<div id="back" style="height: 600px;"> 

    <p class="str1 question center">유사한 이미지를 선택해주세요</p>
    <!--tagClout-->
    <div id="ts1" style="max-width:800px; height:500px;   margin: auto;  ">
        <!-- <ul>
            <li class="span3"><a href="#6" rel="5"><img src="/resources/images/tag/꽃.png"></a></li>
            <li class="span3"><a href="#8" rel="15"><img src="/resources/images/tag/나무.png" ></a></li>
            <li class="span3"><a href="#9" rel="20"><img src="/resources/images/tag/나뭇잎.png" ></a></li>
            <li class="span3"><a href="#10"rel="15"><img src="/resources/images/tag/일체형꽃잎2.png" ></a></li>
        </ul>
        <nav id="nav-arrows" class="nav-arrows">
            <span class="nav-arrow-prev"><i class="icon-angle-left"></i></span>
            <span class="nav-arrow-next"><i class="icon-angle-right"></i></span>
        </nav> -->
    </div>
</div>
    
<!--Footer-->
<footer id="footer">
    <div class="container">
        <div class="row-fluid">
            <div class="span5 cp">
                &copy; Bit58th 한잔해!!
            </div>
            <div class="span1">
                <a id="gototop" class="gototop pull-right" href="#"><i class="icon-angle-up"></i></a>
            </div>
            <!--/Goto Top-->
        </div>
    </div>
</footer>
<!--/Footer-->

<!-- Result Modal -->
	<div class="modal fade" id="resultModal" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
	    <div class="modal-dialog modal-sm">
	        <div class="modal-content">
<<<<<<< HEAD
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only"></span></button>
	                <p class="str1 modal-title text-center" id="myModalLabel">명진아 봐라</p>
	            </div>
=======
	            <!-- <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	                <h4 class="modal-title" id="myModalLabel">명진형 봐라요</h4>
	            </div> -->
>>>>>>> 0c8b0e84f154d282edbf79a24f7adbb184fe0037
	            <div id="modal-body" class="modal-body">
	                <a>으아아아아 모달</a>
	            </div>
	            <!-- <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	                <button type="button" class="btn btn-primary">Save changes</button>
	            </div> -->
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

<script type="text/javascript">
	// tagcloud 위치값 연산
	
window.onload = function getCookie( cookieName )
 {
     var search = cookieName + "=";
     var cookie = document.cookie;
     // 현재 쿠키가 존재할 경우
     if( cookie.length > 0 )
     {
    	 $("#login").html("<a href='/user/logout'>LogOut</a>");
    	
     }
         
 }

	
	
	
    var maxwidth = document.getElementById('ts1').clientWidth;
    var width = parseInt(maxwidth) / 2 + 25;
    var maxheight = document.getElementById('ts1').clientHeight;
    var height = parseInt(maxheight)/ 2 - 100;

    // 검색로직
    var rootArr = new Array(); // 전체 질문들을 모아두는 배열
	var roots = new Array(); // 선택경로를 담아두는 배열
	var resultSno = 0; // 관련컨텐츠 호출시 사용될 변수
	
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
				str += "<img src='/resources/images/tag/"+data.contfile+"'><br>" + 
				"<p>"+data.cont+"</p>" + 
				"<button type='button' class='btn btn-primary btn-lg'>관련 컨텐츠</button>";
				
				resultSno = data.sno;
				$(".modal-title").html(data.title);
			}
		});
		$("#modal-body").html(str);
	}

	// 경로에 따른 질문을 걸러냄
	function rootQuestion(rootSet,rootStr){
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
	    	console.log(val);
	    	questionStr = val.question;
	    	if(val.res == "y"){
				str += "<li class='span3'>" +
				"<a href='javascript:setResult(\""+val.rootSet+"\")'>" +
				"<img src='/resources/images/search/"+val.img+"'>" + 
				"</a></li>"
	    	}else{
				str += "<li class='span3'>" +
				"<a href='javascript:rootQuestion(\""+val.rootSet+"\",\""+val.rootStr+"\")'>" +
				"<img src='/resources/images/search/"+val.img+"'>" + 
				"</a></li>"
			}
	    });
	    str += "</ul>";
	    $("#ts1").html(str);
		$(".question").html(questionStr);
	    
	    // 생성된 리스트를 tagcloud로 적용시켜준다
		$('#ts1').tagcloud({centrex:width, centrey:height, init_motion_x:10, init_motion_y:10 });
	}
	
	// 검색결과 생성
	function setResult(rootSet){
		var str = "<ul>"; // innerHTML에 들어갈 문장
		$.ajax({
			type:"post",
			url:"/search/setResult/",
			data:{root:rootSet},
			dataType:"json",
			async:false,
			success:function(data){
				$.each(data, function(key,val){
					str += "<li class='span3'>" +
					"<a onclick='resultBody("+val.sno+")' data-toggle='modal' data-target='#resultModal'>" +
					"<img src='/resources/images/tag/"+val.contfile+"'>" + 
					"</a></li>"
				});
			}
		});
		str += "</ul>";
	    $("#ts1").html(str);
	    $(".question").html("선택해주세요");
	    
	    // 생성된 리스트를 tagcloud로 적용시켜준다
		$('#ts1').tagcloud({centrex:width, centrey:height, init_motion_x:10, init_motion_y:10 });
		
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