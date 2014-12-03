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
    <link rel="shortcut icon" href="/resources/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/resources/images/ico/apple-touch-icon-57-precomposed.png">
    
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
                        <li><a href="/search/main">검색</a></li>
                        <li><a href="/book/main">나만의 도감</a></li>
                        <li><a href="/favor/main">즐겨찾기</a></li>
                        <li class="active"><a href="/diary/main">관찰일기</a></li> 
                        <li><a href="/mypages/main">My Page</a></li>
                        <li class="login">
                        <a href='/user/logout'>LogOut</a>
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
                    <h1>일기쓰기</h1>
                </div>
            </div>
        </div>
    </section>
    <!-- / .title -->

    <section id="about-us" class="container main">
        <div class="row-fluid">
            <div class="span8 offset2">
                <div class="blog">
                        <form id="main-contact-form" class="contact-form" name="contact-form" method="post" action="">
                            <label>여기에 제목을 적어주세요</label>
                            <input type="text" class="input-block-level" required="required">
                            <label>사진을 등록해주세요</label>
                            <input type="file" multiple="" class="btn btn-primary btn-small button-radius">
                            <p class="insertImg"><p class="help-block">선택된 사진이 없어요...</p></p>
                            <!-- 본문 들어갈 부분 -->
                            <label>일기 내용을 적어주세요</label>
                            <textarea name="message" id="message" required="required" class="input-block-level" rows="8"></textarea>
                            <button type="submit" class="btn btn-primary btn-large pull-right button-radius">다썼다~ >▽<</button>
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
<script src="/resources/js/vendor/jquery-1.9.1.min.js"></script>
<script src="/resources/js/vendor/bootstrap.min.js"></script>
<script src="/resources/js/main.js"></script>

</body>
</html>