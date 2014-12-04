<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<html>
	
<head>
	<title>로그인&회원가입</title>
		<meta charset="utf-8">
		<link href="../resources/css/login/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,300,600,700' rel='stylesheet' type='text/css'>
		<!--//webfonts-->
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
		body {
		background-image:url("../resources/images/login/login_back.jpg");
    	background-repeat : no repeat;
    	background-size : cover;
    	height:635px;
    	

	}
	
	@media screen and (max-width: 979px) {
		body {
			padding-top: 0px;
			}
	}
	
	@media screen and (max-width: 476px){
		footer{
			padding-bottom: 0px;
		}
	}
	
	.login-form{
		margin:auto;
	}
	
	input[type="submit"]{
	width: 99%;
	padding: 3%;
	margin-bottom: 8%;
	background: #21A957;
	font-family: 'Open Sans', sans-serif;
	color: #ECECEC;
	box-shadow: inset 0px 0px 10px #666464;
	-webkit-text-shadow: 0px 0px 3px #000;
	-moz-text-shadow: 0px 0px 3px #000;
	-o-text-shadow: 0px 0px 3px #000;
	-ms-text-shadow: 0px 0px 3px #000;
	font-size: 20px;
	outline: none;
	border: none;
	cursor: pointer;
	font-weight:500;
	border-radius: 5px;
	transition: 0.5s;
	-webkit-appearance:none;
	-webkit-transition: 0.5s;
	-moz-transition: 0.5s;
	-o-transition: 0.5s;
	-ms-transition: 0.5s;
}
input[type="submit"]:hover{
	background:#128A42;
	color:#fff;
}

input[type="button"]{
	width: 99%;
	padding: 3%;
	margin-top:-5%;
	background: #21A957;
	font-family: 'Open Sans', sans-serif;
	color: #ECECEC;
	box-shadow: inset 0px 0px 10px #666464;
	-webkit-text-shadow: 0px 0px 3px #000;
	-moz-text-shadow: 0px 0px 3px #000;
	-o-text-shadow: 0px 0px 3px #000;
	-ms-text-shadow: 0px 0px 3px #000;
	font-size: 20px;
	outline: none;
	border: none;
	cursor: pointer;
	font-weight:500;
	border-radius: 5px;
	transition: 0.5s;
	-webkit-appearance:none;
	-webkit-transition: 0.5s;
	-moz-transition: 0.5s;
	-o-transition: 0.5s;
	-ms-transition: 0.5s;
}
input[type="button"]:hover{
	background:#128A42;
	color:#fff;
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
                        <li><a href="/search/main">검색</a></li>
                        <li class="active"><a href="/book/main">나만의도감</a></li>
                        <li><a href="/favor/main">즐겨찾기</a></li>
                        <li><a href="/diary/main">관찰일기</a></li> 
                        <li><a href="/mypages/main">My Pages</a></li>
                        <li class="login" id ="login" ><a href="/user/login">Login</a></li>
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
                    <h1>로그인</h1>
                </div>
            </div>

    </section>

	 <!-----start-main---->
	 <div class="main" >
		<div class="login-form">
			<h1>Login & Member Resist</h1>
			<h1>${msg}</h1>
					<div class="head">
						<img src="../resources/images/login/user.png" alt=""/>
					</div>
					<form action ="/user/create" method = "post">
						<input type="text" class="text" name = "userid"value="UserID" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'UserID';}" >
						<input type="password" name= "pw" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
						<input type="text" class="text" name = "email"value="E-mail" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'E-mail';}" >
						<div class="submit">
							<input type="submit" value="가입하기" >
						</div>	
						
						
							
											
					</form>

			</div>
			<!--//End-login-form-->
		</div>
			 <!-----//end-main---->
		 		
</body>
</html>