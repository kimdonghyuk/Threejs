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
                        <li><a href="/portfolio">즐겨찾기</a></li>
                        <li class="active"><a href="/blog">관찰일지</a></li> 
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
            <div class="span8">
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

</body>
</html>