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
					<li><a href="/diary/main">관찰일지</a></li>
					<li class="active"><a href="/mypages/main">My Pages</a></li>
					<li class="login"><a data-toggle="modal" href="#loginForm"><i
							class="icon-lock"></i></a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	</header>
	<!-- /header -->

	<section class="no-margin"> <iframe width="100%" height="200"
		frameborder="0" scrolling="no" marginheight="0" marginwidth="0"
		src="https://maps.google.com.au/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Dhaka,+Dhaka+Division,+Bangladesh&amp;aq=0&amp;oq=dhaka+ban&amp;sll=40.714353,-74.005973&amp;sspn=0.836898,1.815491&amp;ie=UTF8&amp;hq=&amp;hnear=Dhaka+Division,+Bangladesh&amp;t=m&amp;ll=24.542126,90.293884&amp;spn=0.124922,0.411301&amp;z=8&amp;output=embed"></iframe>
	</section>

	<section id="contact-page" class="container">
	<div class="row-fluid">

		<div class="span8">
			<h4>회원가입입입입</h4>
			<div class="status alert alert-success" style="display: none"></div>

			<form id="main-contact-form" class="contact-form" name="contact-form"
				method="post" action="sendemail.php">
				<div class="row-fluid">
					<div class="span5">
						<label>First Name</label> <input type="text"
							class="input-block-level" required="required"
							placeholder="Your First Name"> <label>Last Name</label> <input
							type="text" class="input-block-level" required="required"
							placeholder="Your Last Name"> <label>Email
							Address</label> <input type="text" class="input-block-level"
							required="required" placeholder="Your email address">
					</div>
					<div class="span7">
						<label>Message</label>
						<textarea name="message" id="message" required="required"
							class="input-block-level" rows="8"></textarea>
					</div>

				</div>
				<button type="submit" class="btn btn-primary btn-large pull-right">join</button>
				<p></p>

			</form>
		</div>



	</div>

	</section>
	

	<script src="/resources/js/vendor/jquery-1.9.1.min.js"></script>
	<script src="/resources/js/vendor/bootstrap.min.js"></script>
	<script src="/resources/js/main.js"></script>

</body>
</html>