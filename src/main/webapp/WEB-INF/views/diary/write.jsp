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
    @import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
    	
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
			background-image: url("/resources/images/diary/book_Background.jpg");
	    	background-repeat : no repeat;
	    	background-size : cover;
	    	font-family: 'Nanum Gothic', serif;
    	}
    	
	    		
		p, strong, button {
			font-family: 'Nanum Gothic', serif;
		}
		
		.aqua {
			background: #A1CBF2;
			font-size: 12px;
			color: #000000;
			text-align: center;
			border: solid 1px #A2C5D5;
			background: -moz-linear-gradient(0%, 100%, 90deg, #BCBDBF, #ffffff);
			background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#ffffff),
				to(#BCBDBF));
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
					<li><a href="/book/main">나만의 도감</a></li>
					<li><a href="/favor/main">즐겨찾기</a></li>
					<li class="active"><a href="/diary/main">관찰일기</a></li>
					<li><a href="/mypages/main">My Page</a></li>
					<li class="login"><a href='/user/logout'>LogOut</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
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
                		
                		<form target="zero" action="/han/file/upload" method="post" enctype="multipart/form-data" >
							<input type='file' name='file'><input type='submit' value="UPLOAD">
						</form>
						<iframe name="zero" width="0" height="0" ></iframe>
						
						<ul class="fileUL"></ul>
                
                        <form method="post" action="createDiary" accept-charset="utf-8">
                            <label>여기에 제목을 적어주세요</label>
                            <input name="title" class="input-block-level" required="required">
                            <label>태그를 등록해주세요</label>
                            <input name="tag" class="input-block-level" required="required">
                            <ul class="uploadUL">
                            </ul>
                            <!-- 본문 들어갈 부분 -->
                            <label>일기 내용을 적어주세요</label>
                            <textarea name="cont" id="message" required="required" class="input-block-level" rows="8"></textarea>
                            <input type="submit" class="aqua btn-large pull-right button-radius" value="등 록">
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

<script src="/resources/js/vendor/jquery-1.9.1.min.js"></script>
<script src="/resources/js/vendor/bootstrap.min.js"></script>
<script src="/resources/js/main.js"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.js"></script>
<script>

/*file Upload...........................................................................................*/
 	function updateResult(data){
		console.log(data.fileName);
		$(".uploadUL").append("<input type='hidden' name='contfile' value='"+data.fileName+"'></p>");
		
		if(data.suffix == '.jpg'){
			$(".fileUL").append("<p><a href='/han/file/down?src="+data.fileName+"'><image class='thumb' src='/han/file/regphoto/"+data.fileName+"'/></p>");
			/* $(".uploadUL").append("<li><image class='thumb' data-src='"+data.fileName+"' src='/web/file/view/"+ data.fileName+"'/></a></li>"); */
		}else{
			$(".fileUL").append("<p><a href='/han/file/down?src="+data.fileName+"'><image class='thumb' data-src='"+data.fileName+"' src='/resources/book/images/icon.jpg'/></a></p>");
		}
}

</script>

</body>
</html>