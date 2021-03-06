<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

@media screen and (max-width: 979px) {
	body {
		padding-top: 0px;
	}
}

.btn-success {
	margin: 5px;
	width: 119px;
	text-align: center;
	font-weight: bold;
	opacity: 0.8;
}

html {
	background-image: url("/resources/book/background/book_Background.jpg");
	background-position: center center;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
	/* -webkit-background-size: cover;
			-moz-background-size: cover;
			-o-background-size: cover;
			background-size: cover; */
}

body {
	background-image: url("/resources/book/background/book_Background.jpg");
	background-position: center center;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
	font-family: 'Nanum Gothic', serif;
}

#btnArea {
	font-size: 25px;
	padding:30px;
}

.aqua {
	background: #F1FA50;
	font-size: 12px;
	color: #000000;
	text-align: center;
	border: solid 1px #A2C5D5;
	background: -moz-linear-gradient(0%, 100%, 90deg, #F1F789, #ffffff);
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#ffffff),
		to(#F1F789));
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
                        <li class="active"><a href="/book/main">나만의도감</a></li>
                        <li><a href="/favor/main">즐겨찾기</a></li>
                        <li><a href="/diary/main">관찰일기</a></li> 
                        <li><a href="/mypages/main">My Pages</a></li>
                       <li class="login">
                        <a href='/user/logout'>LogOut</a>
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
                <h1>사진 올리기</h1>
	        </div>
	            
	        </div>
	    </div>
	</section>	
	
	<!-- / .title -->
		    <div class="sample" id="btnArea" style="padding:15px;" >
	       <div class="btnSelect"><a href="/book/main" role="button" class="btn-social pull-right">
				<p><i class="icon-list icon-white"></i><strong> 도감 목록 &nbsp &nbsp &nbsp </strong></p>
			</a></div>
			
			<div class="btnSelect"><a href="/book/regist" role="button" class="btn-social pull-right">
				<p><i class="icon-book icon-white"></i><strong> 도감 등록 &nbsp &nbsp &nbsp </strong></p>
			</a></div>
	    </div>
<!-- 	    <div class="sample" id="btnArea" style="padding:15px;" >
	       <div class="btnSelect"><a href="/book/main" role="button" class="btn-social pull-center">
				<i class="icon-list icon-white"></i><strong> 도감 목록 &nbsp &nbsp &nbsp </strong>	</a>
			
				<a href="/book/regist" role="button" class="btn-social pull-center">
				<i class="icon-book icon-white"></i><strong> 도감 등록 &nbsp &nbsp &nbsp </strong>	</a>
				
			</div>
	    </div> -->
    
	<!--사진 등록꾸민곳 -->
	<section id="about-us" class="container main">
	    <div class="row-fluid">
	        <div class="span8 offset2" style="border: solid; border-color: white;">
	            <div class="blog" style="opacity: 1;">
	            	<label><strong>  &nbsp &nbsp 도감을 선택해주세요. </strong></label>
          			<select id="selectBook" style="width: 250px; opacity: 0.9"></select>
          			
	            	<form target="zero" action="/han/file/upload" method="post" enctype="multipart/form-data" >
					<input type='file' name='file' value='파일 추가'>
					<input type='submit' value="UPLOAD">
					</form>
					
					<iframe name="zero" width="0" height="0" >
					</iframe>
					
	                <ul class="fileUL"></ul>
					

<!-- 					<form method="post" action="createPicture" accept-charset="utf-8">
					
						
						
	                    <label>여기에 제목을 적어주세요</label>
	                    <textarea name="title"  required="required" class="input-block-level"></textarea>
	                    	
	                    <ul class="uploadUL"></ul>	
	                    
	                    <label>일기 내용을 적어주세요</label>
	                    <textarea name="cont" required="required" class="input-block-level" rows="8"></textarea>
	                    <button type="submit" class="btn btn-primary btn-large pull-right">다썼다~ >▽<</button>
	                </form> -->
	                
	                <!-- End Blog Item -->
	                
	                <div class="btnArea"><button class='aqua btn-large pull-right button-radius' style="position:absolute; right:10%; bottom:auto;" onclick='regImage()'><strong> 등 록 </strong></button></div>
	            </div>
	        </div>
	    </div>
	</section>
<!--.......... Login form ................................................................................................-->
	<div class="modal hide fade in" id="loginForm" aria-hidden="false">
	    <div class="modal-header">
	        <i class="icon-remove" data-dismiss="modal" aria-hidden="true"></i>
	        <h4>Login Form</h4>
	    </div>
	    <!--Modal Body-->
	    <div class="modal-body">
	        <form class="form-inline" action="index" method="post" id="form-login">
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

<script src="/resources/js/vendor/jquery-1.9.1.min.js"></script>
<script src="/resources/js/vendor/bootstrap.min.js"></script>
<script src="/resources/js/main.js"></script>

<!--script문...............................................................................................................-->
<script type="text/javascript">
    
	$(document).ready(getlist());
	var updateCount = 1;
    
	function getlist(){
		var url = "regphoto/select";					// url을 호출한 뒤 선택한 bno 값을 더해줌.
		var target = $("#selectBook");
		var content = "<option value=" + "'default'>도감선택란</option>";
		$.getJSON(url, function (data) {			// 해당 url에 담겨져있는 Jsondata를 parameter값으로 받음.
			$.each(data, function (key, val) {	// for each문을 돌려서 key값을 잡고 val값을 item 배열에 넣어줌.
				content += "<option name=bno value=" + val.bno +">" + val.title + "</option>";
			});
				target.html(content);
			});
		};
    
 	function updateResult(data){
 		console.log(data);
 		console.log("updateCount  : " + updateCount);
 		
 		if(updateCount == 7){
 			alert("그림 파일은 최대 5개까지 등록 가능합니다.");
 			return;
 		}
 		
		$(".uploadUL").append("<input type='hidden' name='contfile' value='"+data.fileName+"'></p>");
		
		if(data.suffix == '.jpg' || data.suffix == '.gif' || data.suffix == '.png'){
			var target = $(".fileUL");
			var content = "";
			
			content += "<div class='span4' style='height:230px;'>"
						+ "<div><input type='textarea' style='width:155px; heigth:15px; 'id='createTitle_" + updateCount + "' placeholder='제목'>"
						+ "<input id='getFileName_" + updateCount + "' type='hidden' value='" + data.fileName + "'>"
						+ "<image class='thumb' style='width:150px;'  id='createImg_" + updateCount + "' src='/han/file/regphoto/"+data.fileName+"'/></p>"
						+ "<div style='margin:auto;'><input type='textarea' style='width:155px; heigth:15px;'  id='createCont_" + updateCount + "' placeholder='내용'><div></div>";
			
			target.append(content);
			updateCount++;
		}else{
			alert("이미지 파일을 올려주세요.(jpg,gif,png 지원)");
			return;
		}
}
 		
	function regImage(){
		console.log("get updateCount : " + updateCount);
		var selbox = document.getElementById("selectBook");
		var getBno = selbox.options[selbox.selectedIndex].value;
		console.log("Select Value : " + getBno);
		
		for(var i=1; i<updateCount; i++){
			var getTitle = document.getElementById('createTitle_' + i).value;
			var getFileName = document.getElementById('getFileName_' + i).value;
			var getCont = document.getElementById('createCont_' + i).value;

			
			$.post(url='/book//createPicture',
					{bno:getBno,
					title:getTitle,
					cont:getCont,
					contfile:getFileName},
					function(data){
						history.back();
					});
		}
	}
	
	function isNull(obj){
		return (typeof obj != "undefined" && obj !=null && obj != "")? false:true;
	}
	
    
/*.........................................................................................................................*/    
</script>
<!-- /SL Slider -->

</body>
</html>