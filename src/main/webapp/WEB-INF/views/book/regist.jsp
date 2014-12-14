<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

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
	<link rel="apple-touch-icon-precomposed" sizes="144x144"
		href="/resources/images/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114"
		href="/resources/images/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72"
		href="/resources/images/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed"
		href="/resources/images/ico/apple-touch-icon-57-precomposed.png">
	
	<style>
		@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
	
		@media screen and (max-width: 979px) {
			body {
				padding-top: 0px;
			}
		}
		
		.btn-success{    	
    	margin : 5px;
    	width : 119px;	
    	text-align : center;
    	font-weight: bold;
    	opacity : 0.8; 
    	}
    	
    	body {
 		background-image: url("/resources/book/background/book_Background.jpg");
    	background-position: center center;
	    background-repeat: no-repeat;
	    background-attachment: fixed;
	    background-size: cover;
	    font-family: 'Nanum Gothic', serif;
		}
		
		p, strong, ul, li, label {
        	font-family: 'Nanum Gothic', serif;
        }

		#btnArea{
		margin:30px;
		font-size:25px;
		}
		
		.aqua {
			background: #F1FA50;
			font-size: 12px;
			color: #000000;
			text-align: center;
			border: solid 1px #A2C5D5;
			background: -moz-linear-gradient(0%, 100%, 90deg, #F1F789, #ffffff);
			background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#ffffff),
				to(#F1F789));
		}
		
		li {
			list-style: none;
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
                        <li><a href="/search/main"><p>검색</p></a></li>
                        <li class="active"><a href="/book/main"><p>나만의도감</p></a></li>
                        <li><a href="/favor/main"><p>즐겨찾기</p></a></li>
                        <li><a href="/diary/main"><p>관찰일기</p></a></li> 
                        <li><a href="/mypages/main">My Pages</a></li>
                        <li class="login">
                        <a href='/user/logout'>LogOut</a>
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
                    <h1><p>나만의도감</p></h1>
                </div>
            </div>
    </section>
	
<div id="back" style="height:635px;">	
	<!-- / .title -->
    <div style="height: 40px; padding: 5px;" >
        <a class="btn-success btn-large pull-right" href="/book/regphoto" style='font-family: Nanum Gothic, serif;'>사진 올리기</a>
        <a class="btn-success btn-large pull-right" href="/book/regist" style='font-family: Nanum Gothic, serif;'>새 도감 만들기</a>
    </div>

	    <div class="sample" id="btnArea" style="padding:15px;" >
			<div class="btnSelect"><a href="/book/main" role="button" class="btn-social pull-right">
				<p><i class="icon-list icon-white"></i><strong> 도감 목록 &nbsp &nbsp &nbsp </strong></p>
			</a></div>
			
			<div class="btnSelect"><a href="/book/regphoto" role="button" class="btn-social pull-right">
				<p><i class="icon-book icon-white"></i><strong> 사진 등록 &nbsp &nbsp &nbsp </strong></p>
			</a></div>
	    </div>

	<!--도감 등록꾸민곳 -->
	<section id="about-us" class="container main">
    <div class="row-fluid">
    	<div class="span8 offset2" style="border: solid; border-color: white; opacity: 0.9;">
            <div class="blog" style="opacity: 1;">
            	<ul class="uploadUL"> </ul>
            	<form target="zero" action="/han/file/upload"  method="post" enctype="multipart/form-data">
					<input type='file' name='file'><input type='submit' value="UPLOAD">
				</form>
				<iframe name="zero" width="0px" height="0px">
				</iframe>
			</div>
			
		</div>
	</div>	
	<br>
    <div class="row-fluid">
        <div class="span8 offset2" style="border: solid; border-color: white; opacity: 0.9;">
            <div class="blog" style="opacity: 1;">
                <form method="post" action="registdata" accept-charset="utf-8">
                    <textarea name="title"  required="required" class="input-block-level" placeholder="여기에 제목을 적어주세요"></textarea>
                    <!-- <input name="contfile" type="file" class="btn btn-primary btn-small">
                    <p class="insertImg"><p class="help-block">선택된 사진이 없어요...</p> -->
                    <!-- 본문 들어갈 부분 -->
                    <ul class="filename"></ul>
                    <button type="submit" style='font-family: Nanum Gothic, serif;' class="btn btn-primary btn-large pull-right">도감 등록</button>
                </form>
                <!-- End Blog Item -->
                <div class="gap"></div>
            </div>
        </div>
    </div>
	</section>

	<!--  Login form -->
	<div class="modal hide fade in" id="loginForm" aria-hidden="false">
		<div class="modal-header">
			<i class="icon-remove" data-dismiss="modal" aria-hidden="true"></i>
			<h4>Login Form</h4>
		</div>
		<!--Modal Body-->
		<div class="modal-body">
			<form class="form-inline" action="index" method="post"
				id="form-login">
				<input type="text" class="input-small" placeholder="Email">
				<input type="password" class="input-small" placeholder="Password">
				<label class="checkbox"> <input type="checkbox">
					Remember me
				</label>
				<button type="submit" class="btn btn-primary">Sign in</button>
			</form>
			<a href="#">Forgot your password?</a>
		</div>
		<!--/Modal Body-->
	</div>
	<!--  /Login form -->

	<script src="/resources/js/vendor/jquery-1.9.1.min.js"></script>
	<script src="/resources/js/vendor/bootstrap.min.js"></script>
	<script src="/resources/js/main.js"></script>

	<!-- SL Slider -->
	<script type="text/javascript">
	$(function() {
        var Page = (function() {

            var $navArrows = $( '#nav-arrows' ),
                    slitslider = $( '#slider' ).slitslider( {
                        autoplay : true
                    } ),

                    init = function() {
                        initEvents();
                    },
                    initEvents = function() {
                        $navArrows.children( ':last' ).on( 'click', function() {
                            slitslider.next();
                            return false;
                        });

                        $navArrows.children( ':first' ).on( 'click', function() {
                            slitslider.previous();
                            return false;
                        });
                    };
            return { init : init };

        })();

        Page.init();
    });
	</script>

	<script>
	function updateResult(data){
    	
		console.log(data);
		//class이름이 filename인 부분에 히든값으로 fileName을 추가 시켜준다.
		$(".filename").append("<input type='hidden' name='contfile' value= '"+data.fileName+"'>");
		if(data.suffix == '.jpg'){
			$(".uploadUL").append("<li><image class='thumb' data-src='"+data.fileName+"' src='/han/file/regphoto/"+ data.fileName+"'/></li>");
		}else{
			$(".uploadUL").append("<li><image class='thumb' data-src='"+data.fileName+"' src='/resources/images/logo.png'/></li>");
		}
	}
	</script>	
	<!-- /SL Slider and Update -->

</body>
</html>