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
    
    <style>
        @media screen and (max-width: 979px){
            body{
                padding-top: 0px;
            }
        }
        
        body {
	        background-image: url(/resources/images/search/search_back.jpg);
	        background-position: center center;
	        background-repeat: no-repeat;
	        background-attachment: fixed;
	        background-size: cover;
	        background-color: #464646;
        }
        
        .modal-body {
		    position: relative;
		    overflow-y: auto; /* 내용이 바디의 크기를 넘어가면 y축 스크롤바가 생긴다 */
		    max-height: 600px; /* modal창의 최대 높이를 조정 */
		    padding: 15px;
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
                        <li><a href="/index">메인화면</a></li>
                        <li class="active"><a href="/search/main">검색</a></li>
                        <li><a href="/book/main">나만의도감</a></li>
                        <li><a href="/favor/main">즐겨찾기</a></li>
                        <li><a href="/diary/main">관찰일지</a></li> 
                        <li><a href="/mypages/main">My Pages</a></li>
                        <li class="login">
                            <a data-toggle="modal" href="#loginModal"><i class="icon-lock"></i></a>
                        </li>
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

    <h4 class="center">유사한 이미지를 선택해주세요</h4>
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




<!--  Login form -->
    <div class="modal hide fade" id="loginModal">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">✕</button>
            <h3 style="text-align: center">로그인</h3>
        </div>
        <div class="modal-body" style="text-align:center;">
            <div class="row-fluid">
                <div class="span10 offset1">
                    <div id="modalTab">
                        <div class="tab-content">
                            <div class="tab-pane active" id="login">
                                <form method="post" action='' name="login_form">
                                    <p><input type="text" class="span12" name="eid" id="email" placeholder="Email"></p>
                                    <p><input type="password" class="span12" name="passwd" placeholder="Password"></p>
                                    <p><button type="submit" class="btn btn-primary">Sign in</button>
                                        <a href="#forgotpassword" data-toggle="tab">Forgot Password?</a>
                                    </p>
                                </form>
                            </div>
                            <div class="tab-pane fade" id="forgotpassword">
                                <form method="post" action='' name="forgot_password">
                                    <p>Hey this stuff happens, send us your email and we'll reset it for you!</p>
                                    <input type="text" class="span12" name="eid" id="email" placeholder="Email">
                                    <p><button type="submit" class="btn btn-primary">Submit</button>
                                        <a href="#login" data-toggle="tab">Wait, I remember it now!</a>
                                    </p>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!--  /Login form -->

<!-- Result Modal -->
	<div class="modal fade" id="resultModal" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
	    <div class="modal-dialog modal-sm">
	        <div class="modal-content">
	            <!-- <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	                <h4 class="modal-title" id="myModalLabel">명진아 봐라</h4>
	            </div> -->
	            <div id="modal-body" class="modal-body">
	                <a>뭘봐 병시나</a>
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
				//$.each(data, function(key,val){
					console.log(data);
					str += "<h3 class='resultTitle'>제목이 들어갈 부분 : "+data.title+"</h3>" + 
					"<img src='/resources/images/tag/"+data.contfile+"'><br>" + 
					"<p>"+data.cont+"</p>" + 
					"<button type='button' class='btn btn-primary btn-lg'>관련 컨텐츠</button>";
					
					resultSno = data.sno;
				//});
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
	    $.each(arr, function(key,val){
	    	if(val.res == "y"){
				str += "<li class='span3'>" +
				"<a href='javascript:setResult(\""+val.rootSet+"\")'>" +
				val.question +
				"</a></li>"
	    	}else{
				str += "<li class='span3'>" +
				"<a href='javascript:rootQuestion(\""+val.rootSet+"\",\""+val.rootStr+"\")'>" +
				val.question +
				"</a></li>"
			}
	    });
	    str += "</ul>";
	    $("#ts1").html(str);
	    
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
	    
	    // 생성된 리스트를 tagcloud로 적용시켜준다
		$('#ts1').tagcloud({centrex:width, centrey:height, init_motion_x:10, init_motion_y:10 });
		
	}
	
	$(document).ready(function(){
	    setArr();
	    rootQuestion("s","");
	});

</script>

<style type="text/css">
    body {font-family:arial, sans-serif;}
    #ts1 li a{
        text-decoration:none;
        /* color:white; */
        color:black;
    }
    ul {list-style-type:none;}
</style>
<!--end tagCloud-->

</body>
</html>