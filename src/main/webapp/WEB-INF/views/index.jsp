<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<!-- window version에 따른 화면 -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Home | Nova</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">

    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/bootstrap-responsive.min.css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/css/main.css">
    <link rel="stylesheet" href="resources/css/sl-slide.css">

    <script src="resources/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="resources/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="resources/images/ico/apple-touch-icon-57-precomposed.png">
    
    <style>
    	@media screen and (max-width: 979px) {
		body {
			padding-top: 0px;
		}
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
                        <li class="active"><a href="/index">메인화면</a></li>
                        <li><a href="/search/main">검색</a></li>
                        <li><a href="/book/main">나만의도감</a></li>
                        <li><a href="/favor/main">즐겨찾기</a></li>
                        <li><a href="/diary/main">관찰일기</a></li> 
                        <li><a href="/mypages/main">My Pages</a></li>
                        <li class="login">
                            <a data-toggle="modal" href="#loginForm"><i class="icon-lock"></i></a>
                        </li>
                    </ul>        
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </header>
    <!-- /header -->


    <!--Slider-->
    <section id="slide-show">
        <div id="slider" class="sl-slider-wrapper">

            <!--Slider Items-->
            <div class="sl-slider">
                <!--Slider Item1-->
                <div class="sl-slide item1" data-orientation="horizontal" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">
                    <div class="sl-slide-inner">
                        <div class="container">
                            <img class="pull-right" src="/resources/images/sample/slider/img1.png" alt="" />
                            <h2>검색</h2>
                            <h3 class="gap">지금 눈앞에 보이는 그거 같이 찾아볼까요???</h3>
                            <a class="btn btn-large btn-transparent" href="/search/main">자세히보기</a>

                        </div>
                    </div>
                </div>

                <!--/Slider Item1-->

                <!--Slider Item2-->
                <div class="sl-slide item2" data-orientation="vertical" data-slice1-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5" data-slice2-scale="1.5">
                    <div class="sl-slide-inner">
                        <div class="container">
                            <img class="pull-right" src="/resources/images/sample/slider/img4.png" alt="" />
                            <h2>도감만들기</h2>
                            <h3 class="gap">내가 본것들 예쁘게 담아서 친구한테 자랑해야지~!</h3>
                            <a class="btn btn-large btn-transparent" href="/book/main">자세히보기</a>
                        </div>
                    </div>
                </div>

                <div class="sl-slide item2" data-orientation="horizontal" data-slice1-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5" data-slice2-scale="1.5">
                    <div class="sl-slide-inner">
                        <div class="container">
                            <img class="pull-right" src="/resources/images/sample/slider/img3.png" alt="" />
                            <h2>관찰일기</h2>
                            <h3 class="gap">시간이 지나면 어떻게 변하는지 기록해보자!!</h3>
                            <a class="btn btn-large btn-transparent" href="/diary/main">자세히보기</a>
                        </div>
                    </div>
                </div>



                <!--Slider Item2-->

                <!--Slider Item3-->
                <div class="sl-slide item3" data-orientation="horizontal" data-slice1-rotation="3" data-slice2-rotation="3" data-slice1-scale="2" data-slice2-scale="1">
                    <div class="sl-slide-inner">
                        <div class="container">
                            <img class="pull-right" src="/resources/images/sample/slider/img2.png" alt="" />
                            <h2>즐겨찾기</h2>
                            <h3 class="gap">우리 그때 그 놀이 하고 또 놀까??</h3>
                            <a class="btn btn-large btn-transparent" href="/favor/main">자세히보기</a>
                        </div>
                    </div>
                </div>


                <!--Slider Item3-->

            </div>
            <!--/Slider Items-->

            <!--Slider Next Prev button-->
            <nav id="nav-arrows" class="nav-arrows">
                <span class="nav-arrow-prev"><i class="icon-angle-left"></i></span>
                <span class="nav-arrow-next"><i class="icon-angle-right"></i></span>
            </nav>
            <!--/Slider Next Prev button-->

        </div>
        <!-- /slider-wrapper -->
    </section>



    <!-- /slider-wrapper -->

    <!--/Slider-->

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
        <form class="form-inline" action="/index" method="post" id="form-login">
            <input type="text" class="input-small" placeholder="Email">
            <input type="password" class="input-small" placeholder="Password">
            <label class="checkbox">
                <input type="checkbox"> Remember me
            </label>
            <button type="submit" class="btn btn-primary">Sign in</button>
        </form>
        <a href="#">Forgot your password?</a>
    </div>
    <!--/Modal Body-->
</div>
<!--  /Login form -->

<script src="resources/js/vendor/jquery-1.9.1.min.js"></script>
<script src="resources/js/vendor/bootstrap.min.js"></script>
<script src="resources/js/main.js"></script>
<!-- Required javascript files for Slider -->
<script src="resources/js/jquery.ba-cond.min.js"></script>
<script src="resources/js/jquery.slitslider.js"></script>
<!-- /Required javascript files for Slider -->

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
<!-- /SL Slider -->
</body>
</html>