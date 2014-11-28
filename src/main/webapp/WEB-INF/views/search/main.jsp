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
          body{
        background-image: url(/resources/images/tag/search_back.jpg);
        background-position: center center;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
        background-color: #464646;
        }
       	body {
		background-image: url("/resources/images/sample/search_main_background.png");
    	background-repeat : no repeat;
    	background-size : cover;
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
                            <a data-toggle="modal" href="#loginForm"><i class="icon-lock"></i></a>
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


<section id="about-us" class="container main">



    <h4 class="center">유사한 이미지를 선택해주세요</h4>
    <!--tagClout-->
    <div id="ts1" style="max-width:800px; height:500px;   margin: auto;  ">
        <ul>
            <li class="span3"><a href="#6" rel="5"><img src="/resources/images/tag/꽃.png"></a></li>
            <li class="span3"><a href="#8" rel="15"><img src="/resources/images/tag/나무.png" ></a></li>
            <li class="span3"><a href="#9" rel="20"><img src="/resources/images/tag/나뭇잎.png" ></a></li>
            <li class="span3"><a href="#10"rel="15"><img src="/resources/images/tag/일체형꽃잎2.png" ></a></li>
        </ul>
        <nav id="nav-arrows" class="nav-arrows">
            <span class="nav-arrow-prev"><i class="icon-angle-left"></i></span>
            <span class="nav-arrow-next"><i class="icon-angle-right"></i></span>
        </nav>
    </div>

</section>
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
<div class="modal hide fade in" id="loginForm" aria-hidden="false">
    <div class="modal-header">
        <i class="icon-remove" data-dismiss="modal" aria-hidden="true"></i>
        <h4>Login Form</h4>
    </div>
    <!--Modal Body-->
    <div class="modal-body">
        <form class="form-inline" action="/index" method="post" id="form-login"><br>
            <input type="text" class="input-small" placeholder="Email"><br>
            <input type="password" class="input-small" placeholder="Password"><br>
            <label class="checkbox">
                <input type="checkbox"> Remember me
            </label><br>
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


<!--tagCloud-->
<script type="text/javascript" src="/resources/js/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.mousewheel.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.tagsphere.js"></script>
<script type="text/javascript">

    var maxwidth = document.getElementById('ts1').clientWidth;
    var width = parseInt(maxwidth) / 2 + 25;
    var maxheight = document.getElementById('ts1').clientHeight;
    var height = parseInt(maxheight)/ 2 - 100;

    $(function(){
        $('#ts1').tagcloud({centrex:width, centrey:height, init_motion_x:10, init_motion_y:10 });

    });
</script>

<style type="text/css">
    body {font-family:arial, sans-serif;}
    #ts1 li a{
        text-decoration:none;
        color:white;
    }
    ul {list-style-type:none;}
</style>
<!--end tagCloud-->

</body>
</html>