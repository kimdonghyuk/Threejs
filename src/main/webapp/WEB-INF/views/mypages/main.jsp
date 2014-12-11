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
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);
            
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
	        color:white;
	        font-size:xx-large;
	        font-family: 'Hanna', serif;
	        ﻿
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
					<li><a href="/index">메인화면</a></li>
					<li><a href="/search/main">검색</a></li>
					<li><a href="/book/main">나만의도감</a></li>
					<li><a href="/favor/main">즐겨찾기</a></li>
					<li><a href="/diary/main">관찰일기</a></li>
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
				<h1>My Page</h1>
			</div>

		</div>
	</div>
	</section>
	<!-- / .title -->


	<!-- 회원정보 리스트  -->

	<div id="menu" style="height: 600px; padding: 20px 20px 20px 20px">
		<div id="container" style="max-width: 700px; margin: auto">
			<p>회원 정보</p>
			<br>
			<br>
			<br>

			<form action="update">
					<p>경험치: ${user.exp}</p>
					<br>
					<br>
					<p>ID : ${user.userid}</p>
					<br>
					<br>
					<p>E-mail: ${user.email}</p>
					<br>
					<br>

				<input type="hidden" name="userid" value="${user.userid}">
				<button type="submit"
					class="btn btn-primary btn-large pull-right button-radius">정보수정</button>
			</form>
		</div>
	</div>




	


	<script src="/resources/js/vendor/jquery-1.9.1.min.js"></script>
	<script src="/resources/js/vendor/bootstrap.min.js"></script>
	<script src="/resources/js/main.js"></script>


</body>
</html>