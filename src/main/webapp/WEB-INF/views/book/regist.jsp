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
		background-image: url("/resources/book/background/book_main_background.png");
    	background-repeat : no repeat;
    	background-size : cover;
    	height:600px;
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
                        <li><a href="/search/main">검색</a></li>
                        <li class="active"><a href="/book/main">나만의도감</a></li>
                        <li><a href="/favor/main">즐겨찾기</a></li>
                        <li><a href="/diary/main">관찰일기</a></li> 
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
					<h1>나만의도감</h1>
				</div>
				<div class="span6">
					<ul class="breadcrumb pull-right">
						<li><a href="/index">메인화면</a> <span class="divider">/</span></li>
						<li class="active">나만의도감</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	
<div id="back" style="height:635px;">	
	<!-- / .title -->
    <div style="height: 40px; padding: 5px;" >
        <a class="btn-success btn-large pull-right" href="/book/regphoto">사진 올리기</a>
        <a class="btn-success btn-large pull-right" href="/book/regist">새 도감 만들기</a>
    </div>


	<!--도감 등록꾸민곳 -->
	<section id="about-us" class="container main">
    <div class="row-fluid">
    	<div class="span8 offset2" style="border: solid; border-color: green; opacity: 0.7;">
            <div class="blog" style="opacity: 1;">
            	<ul class="uploadUL"> </ul>
            	<form target="zero" action="upload"  method="post" enctype="multipart/form-data">
					<input type='file' name='contfile'><input type='submit' value="UPLOAD">
				</form>
				<iframe name="zero" width="0px" height="0px">
				</iframe>
			</div>
			
		</div>
	</div>	
	<br>
    <div class="row-fluid">
        <div class="span8 offset2" style="border: solid; border-color: green; opacity: 0.7;">
            <div class="blog" style="opacity: 1;">
                <form method="post" action="registdata" accept-charset="utf-8">
                    <label>여기에 제목을 적어주세요</label>
                    <textarea name="title"  required="required" class="input-block-level"></textarea>
                    <!-- <input name="contfile" type="file" class="btn btn-primary btn-small">
                    <p class="insertImg"><p class="help-block">선택된 사진이 없어요...</p> -->
                    <!-- 본문 들어갈 부분 -->
                    <ul class="filename"></ul>
                    <button type="submit" class="btn btn-primary btn-large pull-right">다썼다~ >▽<</button>
                </form>
                <!-- End Blog Item -->
                <div class="gap"></div>
            </div>
        </div>
    </div>
	</section>

<footer id="footer" style="opacity: 0.7; position: absolute; bottom: auto; width: 100%; background-color: black;">
    <div class="container">
        <div class="row-fluid">
            <div class="span12" style="margin-top:-15px">
                &copy; Bit58th 한잔해!!                
                <a id="gototop" class="gototop pull-right" href="#"><i class="icon-angle-up"></i></a>
            </div>
            <!--/Goto Top-->
        </div>
    </div>
</footer>

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
			$(".uploadUL").append("<li><image class='thumb' data-src='"+data.fileName+"' src='/book/view/"+ data.fileName+"'/></li>");
		}else{
			$(".uploadUL").append("<li><image class='thumb' data-src='"+data.fileName+"' src='/resources/images/logo.png'/></li>");
		}
	}
	</script>	
	<!-- /SL Slider and Update -->

</body>
</html>