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
	
	.btn-success {
		margin: 5px;
		width: 119px;
		text-align: center;
		font-weight: bold;
		opacity: 0.8;
	}
	
	
	body {
 		background-image: url("/resources/book/background/book_Background.jpg");
    	background-position: center center;
	    background-repeat: no-repeat;
	    background-attachment: fixed;
	    background-size: cover;
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
	
	.updatePicture:hover{
		opacity : 0.7;	
	}
	
	.registDogam:hover{
		opacity : 0.7;	
	}

	
	#card-3:hover {
		-moz-transform: scale(1.1) rotate(0deg);
   	 	-webkit-transform: scale(1.1) rotate(0deg);
   	 	-moz-transition: all 0.5s ease-in-out;
		-webkit-transition: all 0.5s ease-in-out; 
	}
	
	#btnSelect:hover{
		-moz-transform: scale(1.1) rotate(0deg);
   	 	-webkit-transform: scale(1.1) rotate(0deg);
   	 	-moz-transition: all 0.5s ease-in-out;
		-webkit-transition: all 0.5s ease-in-out; 
		
	}
	
	.thumbnail {
		margin-left:8%;
		padding:15px;
		border-radius: 5px;
		border : 5px;
		-webkit-border-image:url("/resources/book/images/note.png") 1 round;
/* 		-webkit-border-image:url("/resources/book/images/card_bg.jpg") 15 round; */
  		/* -webkit-column-gap: 1.5em;
  		-webkit-column-rule: 1px solid #ccc;
  		border:10px solid #ccc;
  		shadow :rgba(1,1,0,1) 0 -15px 10px; */
	}
	
	#imgset {
		margin-left:10%;
		margin-top:10%;
		padding: 30px;
		max-width : 200px;
		height: 200px;
		padding: 0px;
		border: 2px solid;
		border-radius: 10px;
		border-color: gray;
	}
	
	.caption{
		text-align:center;
		margin-left:5%;
		font-color: black;
	}
	
	#btnArea{
		margin:30px;
		font-size:25px;
	}
	
	p, strong, ul, li, label {
        	font-family: 'Nanum Gothic', serif;
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
                        <li><a href="/index"><p>메인화면</p></a></li>
                        <li><a href="/search/main"><p>검색</p></a></li>
                        <li class="active"><a href="/book/main"><p>나만의도감</p></a></li>
                        <li><a href="/favor/main"><p>즐겨찾기</p></a></li>
                        <li><a href="/diary/main"><p>관찰일기</p></a></li> 
                        <li><a href="/mypages/main">My Pages</a></li>
                        <li class="login"><a href='/user/logout'>LogOut</a></li>
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
                    <h1><p>나만의도감</p></h1>
                </div>
            </div>
		</div>
    </section>
	<!-- Dogam UI Set -->
	<div id="back" style="height: 600px;">    
	    <!-- btn Set -->
	    <div class="sample" id="btnArea" style="padding:15px;" >
	    	<div class="btnSelect"><a onclick='resetModal();' href="#updateForm" role="button" class="btn-social pull-right" data-toggle="modal">
				<p><i class="icon-edit icon-white"></i> <strong>수 정 &nbsp</strong></p>  
			</a></div>
			
			<div class="btnSelect"><a href="#testForm" role="button" class="btn-social pull-right" data-toggle="modal">
				<p><i class="icon-trash icon-white"></i> <strong>삭 제 &nbsp &nbsp &nbsp</strong></p>
			</a></div>
			
			<div class="btnSelect"><a href="/book/regphoto" role="button" class="btn-social pull-right">
				<p><i class="icon-camera icon-white"></i><strong> 사진 등록 &nbsp &nbsp &nbsp </strong></p>
			</a></div>
			
			<div class="btnSelect"><a href="/book/regist" role="button" class="btn-social pull-right">
				<p><i class="icon-book icon-white"></i><strong> 도감 등록 &nbsp &nbsp &nbsp </strong></p>
			</a></div>
	    </div>

		<div class="sample span12" style="height: 30px; padding: 5px;">
			

			 
			<!-- 모달 -->
			<div class="modal fade" id="testForm" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
			  <div class="modal-header">
			    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			    <h3 id="myModalLabel">도감 삭제</h3>
			  </div>
			  <div class="modal-body">
			    <label> 도감을 선택해주세요. </label>
						<select id="delBook" class="form-control" name="bno"
								style="width: 250px; opacity: 0.9"></select>
			  </div>
			  <div class="modal-footer" id="delmodal">
			    <button class="btn" data-dismiss="modal" aria-hidden="true" style='font-family: Nanum Gothic, serif;'>닫기</button>
			    <!-- <button class="btn btn-primary" onclick="deleteBook();">삭제</button> -->
			  </div>
			</div>
			<!-- End Delete Modal -->
			
			
			<!-- 모달 -->
			<div class="modal fade" id="updateForm" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
						<h3 id="mTitle" style="text-align: center; font-family: Nanum Gothic, serif;">
						<!-- 제목 들어가는 부분 -->
						</h3>
				</div>
				
				<div class="modal-body text-center">
					<label> 도감을 선택해주세요. </label>
						<select id="UpdateBook" class="form-control" name="bno"
								style="width: 250px; opacity: 0.9" onchange="showlist(this.value)"></select>
					<div id="mContfile" style="width:100%;">
					</div>
				</div>		
				<div class="modal-footer" id="updatemodal"></div>			
			</div>
			  <!-- end update setting -->
			  
			<!-- End Update Modal -->
		</div>
		<!-- End btn -->
			
		<!-- Album list Screen page -->    
		<div class="container">
			<div class="row">
				<ul class="thumbnails">
					
				</ul>
			</div>
		</div>
	</div>
    <!-- End Dogam -->
    
<!-- <footer id="footer" style="opacity: 0.7; position: absolute; bottom: 0; width: 100%; background-color: black;">
    <div class="container">
        <div class="row-fluid">
            <div class="span12" style="margin-top:-15px">
                &copy; Bit58th 한잔해!!                
                <a id="gototop" class="gototop pull-right" href="#"><i class="icon-angle-up"></i></a>
            </div>
            /Goto Top
        </div>
    </div>
</footer> -->

<!--  Login form -->
<div class="modal hide fade in" id="loginForm" aria-hidden="false">
    <div class="modal-header">
        <i class="icon-remove" data-dismiss="modal" aria-hidden="true"></i>
        <h4>Login Form</h4>
    </div>
    <!--Modal Body-->
    <div class="modal-body">
        <form class="form-inline" action="index.html" method="post" id="form-login">
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
<script>

	var tableData = [];
	
	(function makeTable(){
		console.log("data Start");
		var i = 0;
		var target = $(".thumbnails");
		var content = "";
		$.ajax({
			url: "/book/main/list",
			dataType:"json",
			async:false,
			success:function(data){
				for(var i= 0, len = data.length; i < len ; i++){
					content+= "<li class='span4' id='card-3'><div class='thumbnail' align='center' >"
					+ "<a href='/book/sample?bno=" + data[i].bno + "'><img src = '/han/file/regphoto/" + data[i].contfile + "' id='imgset'></a>"
					+ "<div class='caption'>"
					+ "<h3 style = 'text-align:center; font-family: Nanum Gothic, serif;'>" + data[i].title + "</h3>" 
					+"</div></div></li>";
										
				}
				tabledata = data;
				target.html(content);
			}});
	})();
	
	$(document).ready(getlist());
		function getlist(){
			console.log("-----------list------------------")
			var url = "main/list"					// url을 호출한 뒤 선택한 bno 값을 더해줌.
			var target = $(".form-control");
			var target1 = $("#delmodal");
			var target2 = $("#updatemodal");
			var content = "<option value=" + "'default' style='font-family: Nanum Gothic, serif;'>도감선택란</option>";
			var content1 ="<button class='btn btn-primary' style='font-family: Nanum Gothic, serif;' onclick='deleteBook();'>삭제</button>";	
			//var content2 ="<button class='btn btn-primary' onclick='updateBook();'>수정</button>";
			$.getJSON(url, function (data) {			// 해당 url에 담겨져있는 Jsondata를 parameter값으로 받음.
				$.each(data, function (key, val) {	// for each문을 돌려서 key값을 잡고 val값을 item 배열에 넣어줌.
					content += "<option name=bno value=" + val.bno +">" + "<p>" + val.title + "</p></option>";
					
				});
					target.html(content);
					target1.html(content1);
					//target2.html(content2);
				});
			};
			
			function deleteBook(){
				var num = document.getElementById('delBook').value;
				$.post(url='main/delete',
						{bno:num},
						function(data){
							$("#testForm").modal('hide');
							reTable();	
						})
			}
	
			function reTable(){
				var i = 0;
				var target = $(".thumbnails");
				var content = "";
				$.ajax({
					url: "/book/main/list",
					dataType:"json",
					async:false,
					success:function(data){
						for(var i= 0, len = data.length; i < len ; i++){
							content+= "<li class='span4' id='card-3'><div class='thumbnail' align='center' >"
							+ "<a href='/book/sample?bno=" + data[i].bno + "'>"
							+ "<img src = '/han/file/regphoto/" + data[i].contfile + "' id='imgset' border='3'></a>"
							+ "<div class='caption'>"
							+ "<h3 style = 'text-align:center; font-family: Nanum Gothic, serif;'>" + data[i].title + "</h3>" 
							+"</div></div></li>";
												
						}
						tabledata = data;
						target.html(content);
					}});
			}
					
			function showlist(value){
				var bno = value;
				var mtitle = $("#mTitle");
				var mcontfile = $("#mContfile");
				//var mbtn = $("#updatemodal");
				var contitle = "";
				var concontfile = "";
				//var conbtn ="";
				$.ajax({
					url: "/book/main/show?bno=" + bno ,
					dataType:"json",
					async:false,
					success:function(data){
						console.log("ajax data start");
						//contitle += "<label>제목:<input type='text' name='title' placeholder ='" + data.title + "' autofocus></label>";
						/* +"<label>사진:<img src = /han/file/regphoto/" + data.contfile + " style = 'width : 50%; height : 50%;'></label>"; */
						concontfile += "<div id='modalInsertPicture'>" 
						+"<label>사진:<img src = /han/file/regphoto/" + data.contfile + " style = 'width : 50%; height : 50%;'></label></div>"
						+ "<form target='zero' id ='zerodata' action='/han/file/upload'  method='post' enctype='multipart/form-data'>"
						+ "<label>제목:<input type='text' id='retitle' style='font-family: Nanum Gothic, serif;' placeholder ='" + data.title + "' autofocus></label>"
						+ "<input type='file' name='file'><input type='hidden' name='title' value=" + data.title + ">"
						+ "<input type='hidden' name=bno value=" + data.bno + ">"
						+ "<input type='hidden' name=contfile value=" + data.contfile + ">"
						+ "<input type='submit' style ='font-family: Nanum Gothic, serif;' value='사진수정'>"
						+ "</form>"
						+ "<iframe name='zero' width='0px' height='0px'></iframe>";
						console.log(concontfile);
						/* conbtn += "<button type='button' class='btn btn-primary'" + "onclick='insertModal(\""
						+ data.title + "\",\"" + data.contfile + "\",\"" + data.bno + "\")'>" + "수 정 </button>"; */
						//mtitle.html(contitle);
						mcontfile.html(concontfile);
						//mbtn.html(conbtn);
					}});
				
			}
			
			/* function showimg(value){
				var bno = value;
				console.log("img" + bno);
				var target = $(".showimgplz");
				var content = "";
				$.ajax({
					url: "/book/main/show?bno=" + bno ,
					dataType:"json",
					async:false,
					success:function(data){
						console.log(data.contfile);
						var path = data.contfile;
						console.log("path:" +path);
						content += "<label>사진:<img src = /han/file/regphoto/" +path + " style = 'width : 50%; height : 50%;'></label>";
						
						target.html(content);
					}});
				
			} */
			
			function updateResult(data){
				var zero = document.getElementById('zerodata');
				var rename = document.getElementById('retitle').value;
				console.log(rename);
				console.log(rename.length);
				console.log(zero.title);
				
				if(rename.length != 0){
					zero.title.value = rename;
					console.log(zero.title.value);
				}
				
				//class이름이 filename인 부분에 히든값으로 fileName을 추가 시켜준다.
				//$(".filename").append("<input type='hidden' name='contfile' value= '"+data.fileName+"'>");
				if(data.suffix == '.jpg'){
					var target = $("#modalInsertPicture");
					var mbtn = $("#updatemodal");
					var content = "";
					var conbtn ="";
					content += "<input id='getFileName' type='hidden' value='" + data.fileName + "'>"
								+ "<image id='thumb' src='/han/file/regphoto/" + data.fileName + "'/></p>";
					
					conbtn += "<button type='button' style='font-family: Nanum Gothic, serif;' class='btn btn-primary'" + "onclick='insertModal(\""
					+ zero.title.value + "\",\"" + data.fileName + "\",\"" + zero.bno.value + "\")'>" + "수 정</button>";			
					console.log(content);
					console.log(conbtn);
					target.html(content);
					mbtn.html(conbtn);
					//$(".uploadUL").append("<li><image class='thumb' data-src='"+data.fileName+"' src='/han/file/regphoto/"+ data.fileName+"'/></li>");
				}else{
					$("#modalInsertPicture").html("<image id='thumb' data-src='"+data.fileName+"'src='/resources/images/logo.png'/></a></p>");
				}
			}
			
			function insertModal(title,fileName,bno){
				console.log("filename....:" + fileName);
				console.log("bno....:" + bno);
				console.log("title....:" + title);
				$.post(url='main/update',
						{title:title,
						contfile:fileName,
						bno:bno
						},
						function(data){
							$("#updateForm").modal('hide');
							reTable();	
						})
				
			}
			
			function resetModal(){
				$("#mContfile").html("");
				loaction.reload();
			}
			
</script>

</body>
</html>