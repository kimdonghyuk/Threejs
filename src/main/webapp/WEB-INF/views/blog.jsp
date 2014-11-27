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
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="resources/images/ico/apple-touch-icon-57-precomposed.png">
    
    <style>  
    	
        .diary{
            width: 775px;
            margin: auto;
        }
        .main{
            padding-top: 0px;
        }
        .center-button{
            height: 50px;
            width: 180px;
            margin:auto;
        }
        .center-button-in{
            margin: 3px;
            margin-top: 10px;
            border-radius: 5px;
        }
    
        @media screen and (max-width: 979px){
            body{
                padding-top: 0px;
            }
        }
        
        body{
	    	background-image : url("/resources/images/diary/wall06.jpg");
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
                        <li><a href="/about-us">검색</a></li>
                        <li><a href="/services">나만의 도감</a></li>
                        <li><a href="/portfolio">즐겨찾기</a></li>
                        <!-- <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages <i class="icon-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="/career">Career</a></li>
                                <li><a href="/blog-item">Blog Single</a></li>
                                <li><a href="/faq">FAQ</a></li>
                                <li><a href="/pricing">Pricing</a></li>
                                <li><a href="/404">404</a></li>
                                <li><a href="/typography">Typography</a></li>
                                <li><a href="/registration">Registration</a></li>
                                <li class="divider"></li>
                                <li><a href="/privacy">Privacy Policy</a></li>
                                <li><a href="/terms">Terms of Use</a></li>
                            </ul>
                        </li> -->
                        <li class="active"><a href="blog">관찰일기</a></li> 
                        <li><a href="contact-us">My Page</a></li>
                        <li class="login">
                            <a data-toggle="modal" href="#loginModal"><i class="icon-lock"></i></a>
                        </li>
                    </ul>        
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </header>
    <!-- /header -->


    <!-- / .title -->
    <section class="title">
        <div class="container">
            <div class="row-fluid">
                <div class="span6">
                    <h1>관찰일기</h1>
                </div>
                <!--<div class="span6">
                    <ul class="breadcrumb pull-right">
                        <li><a href="index.html" style="font-size:20px">전체보기</a> <span class="divider">|</span></li>
                        <li><a href="blog-write.html" style="font-size:20px">일기쓰기</a>
                    </ul>
                </div>-->
            </div>
        </div>
    </section>
    <!-- / .title -->

    <div class="center-button">
        <a href="/index" class="btn btn-primary pull-left center-button-in">전체보기</a>
        <a href="/blog-write" class="btn btn-primary pull-right center-button-in">일기쓰기</a>
    </div>

    <section id="about-us" class="container main">
        <div class="row-fluid">
            <div class="span8 offset2">
                <div class="blog">
                    <div class="blog-item well">
                        <a><h2>우왕 애벌레다~</h2></a>
                        <div class="blog-meta clearfix">
                            <p class="pull-left">
                                <!-- 기본정보 들어가는 부분 -->
                              <i class="icon-user"></i> 글쓴이 <a href="#">키므네</a> | <i class="icon-folder-close"></i> 관찰대상 <a href="#">장수풍뎅이</a> | <i class="icon-calendar"></i> Sept 16th, 2012
                          </p>
                          <p class="pull-right"><i class="icon-comment pull"></i> <a href="/blog-item#comments">덧글 3개</a></p>
                        </div>
                          <p><img src="resources/images/sample/lava.PNG" width="100%" alt="" /></p>
                            <!-- 본문 들어갈 부분 -->
                          <p>흙 많이 먹고 무럭무럭 자라라~</p>
                          <a class="btn btn-link" href="#">덧글보기 <i class="icon-angle-right"></i></a>
                    </div>
                  <!-- End Blog Item -->

                  <div class="blog-item well">
                    <a href="#"><h2>어므나~</h2></a>
                    <div class="blog-meta clearfix">
                        <p class="pull-left">
                          <i class="icon-user"></i> 글쓴이 <a href="#">김은왜</a> | <i class="icon-folder-close"></i> 관찰대상 <a href="#">장수풍뎅이</a> | <i class="icon-calendar"></i> Sept 16th, 2012
                      </p>
                      <p class="pull-right"><i class="icon-comment pull"></i> <a href="/blog-item#comments">덧글 2개</a></p>
                    </div>
                      <p><img src="resources/images/sample/ultra.PNG" width="100%" alt="" /></p>
                      <p>우왕 뻔데기가 풍뎅이가 되었어요~</p>

                      <a class="btn btn-link" href="#">덧글보기 <i class="icon-angle-right"></i></a>
                  </div>
              <!-- End Blog Item -->

                <div class="gap"></div>
                    <!-- Paginationa -->
                  <div class="pagination">
                    <ul>
                        <li><a href="#"><i class="icon-angle-left"></i></a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#"><i class="icon-angle-right"></i></a></li>
                    </ul>
                  </div>
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

<script src="resources/js/vendor/jquery-1.9.1.min.js"></script>
<script src="resources/js/vendor/bootstrap.min.js"></script>
<script src="resources/js/main.js"></script>

</body>
</html>