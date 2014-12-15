<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<link rel="stylesheet"
	href="/resources/css/bootstrap-responsive.min.css">
<link rel="stylesheet" href="/resources/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/css/main.css">
<link rel="stylesheet" href="/resources/css/sl-slide.css">

<script src="/resources/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>

<!-- Le fav and touch icons -->
<link rel="shortcut icon" href="/resources/images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="/resources/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="/resources/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="/resources/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="/resources/images/ico/apple-touch-icon-57-precomposed.png">

<style>
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

@media screen and (max-width: 979px) {
body {
		padding-top: 0px;
	}
}

	body {
	
			background:url("../resources/images/mypage/mypage.jpg") no-repeat;
		    background-position: center center;
		    background-repeat: no-repeat;
		    background-attachment: fixed;
		    background-size: cover;
		
		}

	p{	        
	        font-family: 'Nanum Gothic', serif;	               ﻿
        }
        
    .othertext{
     font-size:xx-large;
     color:white;
    }   

	.center-button {
		height: 50px;
		width: 200px;
		margin: auto;
	}
	
	.center-button-in {
		margin: 3px; 0
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
			<a class="btn btn-navbar" data-toggle="collapse"
				data-target=".nav-collapse"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a> <a id="logo" class="pull-left" href="/index"></a>
			<div class="nav-collapse collapse pull-right">
				<ul class="nav">
					<li><a href="/index"><p>메인화면</p></a></li>
					<li><a href="/search/main"><p>검색</p></a></li>
					<li><a href="/book/main"><p>나만의도감</p></a></li>
					<li><a href="/favor/main"><p>즐겨찾기</p></a></li>
					<li><a href="/diary/main"><p>관찰일기</p></a></li>
					<li class="active"><a href="/mypages/main">My Pages</a></li>
					<li class="login"><a href='/user/logout'>LogOut</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	</header>
	<!-- /header -->

	<section class="title">
	<div class="container">
		<div class="row-fluid">
			<div class="span6">
				<h1><p>My Page</p></h1>
			</div>

		</div>
	</div>
	</section>
	<!-- / .title -->


	<!-- 회원정보 리스트  -->

	<div id="menu" style="height: 80%; padding: 20px 20px 20px 20px">
		<div id="container" style="max-width: 700px; margin: auto">
			<p class="othertext">회원 정보</p>
			<br>
			<br>
<h4>${error}<h4>
			<form action="modify">
					<br>
					<p class="othertext">경험치: ${user.exp}</p>
					<br>
					<br>
					<p class="othertext">ID : ${user.userid}</p>
					<br>
					<br>
					<p class="othertext">E-mail: <input type="text" name="email"	value="${user.email}"></p>
					<br>
					<br>
					<p class="othertext">변경 할 비밀번호: <input type="password" name="pw" value="${user.pw}"></p>
					<br>

				<input class=pull-right type="hidden" name="userid" value="${user.userid}"> 
				<input class=pull-left type="hidden" name="exp" value="${user.exp}">

				<!-- <button type="submit"
					class="btn btn-primary btn-large pull-right button-radius">정보수정</button> -->
				
				<button type = "submit" align="left" class="btn btn-large btn-transparent">정보수정</button>
			</form>

			<br>
			<form action="delete">
				<input type="hidden" name="userid" value="${user.userid}"> 
				<input type="hidden" name="pw" value="${user.pw}">

				<button type="submit" align="right" class="btn btn-large btn-transparent">계정삭제</button>
			</form>

		</div>
	</div>

	<script src="/resources/js/vendor/jquery-1.9.1.min.js"></script>
	<script src="/resources/js/vendor/bootstrap.min.js"></script>
	<script src="/resources/js/main.js"></script>


</body>
</html>