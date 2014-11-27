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
        @media screen and (max-width: 979px){
            body{
                padding-top: 0px;
            }
        }
        body{
            background-color: lightblue;
        }
        .center-button{
            height: 50px;
            width: 200px;
            margin:auto;
        }
        .center-button-in{
            margin: 3px;0
            margin-top: 10px;
            border-radius: 5px;
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
                        <li><a href="/about-us">검색</a></li>
                        <li><a href="/services">나만의도감</a></li>
                        <li class="active"><a href="/portfolio">즐겨찾기</a></li>
                        <li><a href="/blog">관찰일지</a></li> 
                        <li><a href="/contact-us">My Pages</a></li>
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
                <h1>즐겨찾기</h1>
            </div>

        </div>
    </div>
</section>
<!-- / .title -->

<!-- 즐겨찾기 리스트 뿌려줄곳 -->

    <div id="menu" style="height: 600px; padding-top: 20px">
        <div class="sidebar-nav">
            <div class="well span3" style="border: 3px solid green;">
                <ul class="nav nav-list">
                    <li class="nav-header" style="border: 1px;">즐겨찾기 항목</li>
                    <li><a href="#"><i class="icon-star"></i> 놀이이름가져오는곳</a></li>
                    <li><a href="#"><i class="icon-star"></i> 놀이이름가져오는곳</a></li>
                    <li><a href="#"><i class="icon-star"></i> 놀이이름가져오는곳</a></li>

                </ul>
            </div>
        </div>
        <!-- 즐겨찾기 항목 상세설명 -->
        <div class="row">
            <div class="span9" style="border: 3px solid green;">
                <div class="row">
                    <div class="span9">

                        <h4><strong class="pull-left" style="padding-top: 10px; margin-left: 15px;">놀이 제목</strong></h4>
                        <h5 class="pull-right" style="padding-bottom: 5px; margin-right: 10px;">즐겨찾기 해제 <a href="즐겨찾기 삭제"><i class="icon-star"></i> </a></h5>

                    </div>
                </div>
                <div class="row">
                    <div class="span4" style="">
                        <a href="#" class="thumbnail">
                            <img src="resources/images/sample/img2.jpg">
                        </a>
                    </div>
                    <div class="span5">
                        <p>
                            Lorem ipsum dolor sit amet, id nec conceptam conclusionemque. Et eam tation option. Utinam salutatus ex eum. Ne mea dicit tibique facilisi, ea mei omittam explicari conclusionemque, ad nobis propriae quaerendum sea.
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <!-- 설명 끝 -->
    </div>

<!-- 리스트 끝 -->



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