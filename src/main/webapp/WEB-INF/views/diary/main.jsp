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
	
	.diary {
		width: 775px;
		margin: auto;
	}
	
	.main {
		padding-top: 0px;
	}
	
	.center-button {
		height: 50px;
		width: 180px;
		margin: auto;
	}
	
	.center-button-in {
		margin: 3px;
		margin-top: 10px;
		border-radius: 5px;
	}
	
	@media screen and (max-width: 979px) {
		body {
			padding-top: 0px;
		}
	}
	
	body {
		background-image: url("/resources/images/diary/book_Background.jpg");
		background-repeat: no repeat;
		background-color: #D1D4F5;
		background-size: cover;
		background-position: center center;
		background-repeat: no-repeat;
		background-attachment: fixed;
		background-size: cover;
		font-family: 'Nanum Gothic', serif;
	}
	
	#diaryTitle {
		background-color: #F5F1D3;
	}
	
	p, strong, button {
		font-family: 'Nanum Gothic', serif;
	}
	
	#btnA{
		 cursor: pointer;
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
				<h1>관찰일기</h1>
			</div>
		</div>
	</div>
	</section>
	<!-- / .title -->


	<section id="about-us" class="container main">
	<div class="row-fluid">
		<div class="span8 offset2">
			<div class="blog">

				<c:forEach items="${list}" var="table">
					<div class="blog-item well" id="diaryTitle">
						<a id="diaryTitle_${table.dno}"><h2>
								<p>${table.title}</p>
							</h2></a>
						<div class="blog-meta clearfix" id="diaryTag_${table.dno}">
							<p class="pull-left">
								<!-- 기본정보 들어가는 부분 -->
								<i class="icon-user"></i> 글쓴이 <a href="#"> ${table.userid }
								</a> | <i class="icon-folder-close"></i> 관찰대상 <a href="#">
									${table.tag } </a> | <i class="icon-calendar"></i> ${table.regdate}
							</p>
							<p class="pull-right" id="btnArea">
								<i class="icon-book"> <a href="/diary/write">일기쓰기</a></i> <i
									class="icon-pencil"></i> <a
									href="javascript:insertDiary(${table.dno}, '${table.title}','${table.cont}','${table.contfile }','${table.tag}')">
									수 정</a> <i class="icon-eraser"></i> <a
									href="/diary/deleteDiary?dno=${table.dno}"> 삭 제</a>
							</p>
						</div>
						<div id="diaryCont_${table.dno}">
							<p>
								<img src="/han/file/regphoto/${table.contfile}" width="100%"
									alt="등록된 이미지가 없습니다." />
							</p>
							<!-- 본문 들어갈 부분 -->
							<p style='font-family: sans-serif;'>
							<p>${table.cont}</p>
							</p>
						</div>
						<div id="diaryReply">
							<c:choose>
								<c:when test="${table.rcount==0}">
									<a class="btn btn-link" id="replyView"
										onclick="replylist(${table.dno})"><p>
											덧글보기(0) <i class="icon-angle-right"></i>
										</p></a>
									<div id="replyFrame_${table.dno}"></div>
								</c:when>
								<c:when test="${table.rcount>0}">
									<a class="btn btn-link" id="replyView"
										onclick="replylist(${table.dno})"><p>
											덧글보기(${table.rcount})<i class="icon-angle-right"></i>
										</p></a>
									<div id="replyFrame_${table.dno}"></div>
								</c:when>
							</c:choose>
						</div>
					</div>
				</c:forEach>

				<div class="gap"></div>
				<!-- Paginationa -->
				<div class="pagination">
					<ul>
						<!-- 이전 버튼 만들기  -->
						<c:if test="${pageMaker.first - 1 > 0}">
							<li><a href="javascript:goPage(${pageMaker.first}-5)"> <i
									class="icon-angle-left"></i></a></li>
						</c:if>

						<!-- 페이지 번호 만들기 -->
						<c:forEach begin="${pageMaker.first}" end="${pageMaker.last}"
							var="idx">
							<c:if test="${idx-1 < pageMaker.cnt }">
								<li><a href="javascript:goPage(${idx})">${idx}</a></li>
							</c:if>
						</c:forEach>

						<!-- 다음 버튼 만들기 -->
						<c:if test="${pageMaker.last < pageMaker.cnt}">
							<li><a href="javascript:goPage(${pageMaker.last}+1)"> <i
									class="icon-angle-right"></i></a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</section>

	<div class="modal fade" id="insertForm" tabindex="-1" role="dialog"
		aria-labelledby="myModal" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal">✕</button>
					<h3 id="mTitle" style="text-align: center;">
						<!-- 제목 들어가는 부분 -->
					</h3>
				</div>
			</div>
		</div>
	</div>


	<form method='get' accept-charset="utf-8" name='diaryForm'>
		<input type='hidden' name='dno'> <input type='hidden'
			name='page' value='${pageMaker.page}'>
	</form>

	<script src="/resources/js/vendor/jquery-1.9.1.min.js"></script>
	<script src="/resources/js/vendor/bootstrap.min.js"></script>
	<script src="/resources/js/main.js"></script>

	<script type="text/javascript">

	function goPage(num) {
		console.log(num);
		document.diaryForm.page.value = num;
		document.diaryForm.submit();
	}

	
 	function updateResult(data){
		alert(data);
		$(".uploadUL").append("<input type='hidden' name='contfile' value='"+data.fileName+"'></p>");
		
		if(data.suffix == '.jpg'){
			$(".fileUL").append("<p><a href='/han/file/down?src="+data.fileName+"'><image class='thumb' src='/han/file/regphoto/"+data.fileName+"'/></p>");
			/* $(".uploadUL").append("<li><image class='thumb' data-src='"+data.fileName+"' src='/web/file/view/"+ data.fileName+"'/></a></li>"); */
		}else{
			$(".fileUL").append("<p><a href='/han/file/down?src="+data.fileName+"'><image class='thumb' data-src='"+data.fileName+"'src='/resources/book/images/icon.jpg'/></a></p>");
		}
	}
 	

	function insertDiary(dno, title, cont, contfile, tag){
		
		var insertTitle = document.getElementById('checkInsert');
		
		if(isNull(insertTitle)){
			// target 선언부분
			var titleTarget = document.getElementById('diaryTitle_' + dno);
			var tagTarget = document.getElementById('diaryTag_' + dno);
			var contTarget = document.getElementById('diaryCont_' + dno);
			var btnTarget = document.getElementById('reply_' + dno);
			
			// content 선언부분
			var fileurl = "/han/file/regphoto/";
			var titleContent = "";
			var tagContent = "";
			var conContent = "";
			var btnContent = "";
			
			// 밀어줄 content 제작 부분
			titleContent += "<p> Title : <input type='textarea' id='checkInsert' row='3' cols='100' placeholder='" + title + "'></p>";
			tagContent += "<p class='pull-left'> Tag : <input type='textarea' id='insertTag' row='2' cols='50' placeholder='" + tag + "'></p>";
			conContent += "<p><div id='insertPicture'>"
							+ "<img src = '" + fileurl + contfile + "'></p></div>"
							+ "<form target='zero' action='/han/file/upload' method='post' enctype='multipart/form-data'>"
							+ "<input type='file' name='file'><input type='submit' value='수 정'>	</form>"
							+ "<iframe name='zero' width='0' height='0'></iframe>"
							+ "<input type='textarea' placeholder='" + cont + "' id='insertCont'></textarea>";						
			btnContent += "<button type='button' class='pull-right' style='border-radius: 5px; background-color:#EEEDC0; opacity:0.8;'" 
							+ "onclick='insertComplete(" + dno + ",\"" + contfile + "\")'> 완 료 </button>";
							
			// innerHTML 밀어넣어 주는 부분
			titleTarget.innerHTML = titleContent;
			tagTarget.innerHTML = tagContent;
			contTarget.innerHTML = conContent;
			btnTarget.innerHTML = btnContent;
		}
		else{
			alert("이미 수정중인 게시물이 있습니다.");
			return;
		}
	}
	
	function updateResult(data){

		var btnTarget = $("#insertPicture");
		var btnContent = "";
		
		if(data.suffix == '.jpg'){
			btnContent += "<input id='getFileName' type='hidden' value='" + data.fileName + "'>"
						+ "<img id='thumb' src='/han/file/regphoto/" + data.fileName + "'/></p>";
			btnTarget.html(btnContent);
			/* $(".uploadUL").append("<li><image class='thumb' data-src='"+data.fileName+"' src='/web/file/view/"+ data.fileName+"'/></a></li>"); */
		}else{
			$("#insertPicture").innerHTML("<img id='thumb' data-src='"+data.fileName+"'src='/resources/book/images/icon.jpg'/></a></p>");
		}
	}
	
	function insertComplete(num, mfileName){
		
		var insertTitle = document.getElementById('checkInsert').value;
		var insertCont = document.getElementById('insertCont').value;
		var insertTag = document.getElementById('insertTag').value; 
		var fileName = document.getElementById('getFileName');

		if(isNull(fileName)){
			fileName = mfileName;}
		else{
			fileName = fileName.value; 
		}
		
 		$.post(url='/diary/update',
				{title:insertTitle,
				cont:insertCont,
				contfile:fileName,
				tag:insertTag,
				dno:num},
				function(data){
					location.reload();
				});
	}
	
	function replylist(num){		
		
		var checkReply = document.getElementById('checkReply_'+num);			
		var target = document.getElementById('registReply');
		
		if(isNull(checkReply)){
			var replyTarget = document.getElementById('replyFrame_' + num);
			var replyContent = "<input id='checkReply_" + num + "' type='hidden' value='check'>"
								+ "<div><p><input type='text' maxlength='100' style='margin-left:5%; width:70%;' id='createReply_" + num + "' placeholder='댓글입력란 (최대 100글자)' >"
								+ "<input type='button'  style='vertical-align: middle;' class='aqua btn-mini pull-right' id='registReply' onclick='createReply("+ num +")' value='등 록'></div></p>";
								
								/* + "<input type='button' class='aqua btn-mini pull-right' id='registReply' onclick='createReply("+ num +")' value='등 록'></div></p>";*/
			$.post(url='/diary/reply/read',
					{dno:num},
					function(data){
						$.each(data, function(key, val){
							console.log(val);
							replyContent += "<div id='reply_" + num + "'>"
											+ "<ul>[" + val.userid + "]<div id='replyCont_" + val.rno + "'>" + val.reply
											+ "<div class='pull-right' id='btnA'><a onclick='updateReply(" + val.rno + ",\"" + val.reply +"\"," + num + ")'><u> 수 정 </u></a> &nbsp; &nbsp;"
											+ "<div class='pull-right' id='btnA'><a onclick='deleteReply(" + val.rno + ",\"" + val.dno +"\")'><u> 삭 제 </u></a><div></div></div></ul>";
											
											/* + "<input type='button' value=' 수 정 ' class='aqua btn-mini pull-right' onclick='updateReply(" + val.rno + ",\"" + val.reply +"\"," + num + ")'>"
											+ "<input type='button' value=' 삭 제 ' class='aqua btn-mini pull-right' onclick='deleteReply(" + val.rno + ",\"" + val.dno +"\")'></div></div>"; */
						});
						replyTarget.innerHTML = replyContent;
					});
		}
		else{
			var obj = document.getElementById("replyFrame_" + num);
			while(obj.hasChildNodes()){
				obj.removeChild(obj.firstChild);
			}
		}
		
	}
	
/* 	function createReply(num){
		createDoReply(num);
		upRcount(num);
	} */
	
	function deleteReply(numRno,numDno){
		deleteDoReply(numRno);
		downRcount(numDno);
	}

	function createReply(num){
		var createCont = document.getElementById('createReply_'+ num).value;
		console.log(num);
		console.log(createCont);
 		$.post(url="/diary/reply/create",
				{dno:num,
				reply:createCont},
				function(data){					
					console.log("in create Reply getNum : " + num);
					var obj = document.getElementById("replyFrame_" + num);
					while(obj.hasChildNodes()){
						obj.removeChild(obj.firstChild);
					}
					upRcount(num);					
					replylist(num);
					location.reload();
				});
	}
	
	function deleteDoReply(num){
		console.log("in deleteFunction rno : " + num);
		
		$.post(url='/diary/reply/delete',
				{rno:num},
				function(data){
					console.log("ok delete Reply");
					location.reload();
				});
	}
	
	function upRcount(num){
		$.post(url='/diary/reply/upcount',
				{dno:num},
				function(data){
					console.log("ok update Rcount");
				});
	}
	
	function downRcount(num){
		$.post(url='/diary/reply/downcount',
				{dno:num},
				function(data){
					console.log("ok down Rcount");
				});
	}
	
	function updateReply(rno, cont, num){
		console.log("get rno : " + rno);
		console.log("get reply : " + cont);
		console.log("get dno : " + num);
		var replyTarget = document.getElementById('replyCont_' + rno);
		
		var insertCont = "";
		
		insertCont += "<input type='text' maxlength='100' style='margin-left:3%;' id='insertText_" + rno + "' placeholder='"
					+ cont + "'><input type='button' class='pull-right' onclick='insertComplete(" + rno + "," + num + ",\"" + cont + "\")' value='수 정'>"; 
					
		replyTarget.innerHTML = insertCont;
		console.log("complete insert");
	}
	
	function insertComplete(num,numDno,cont){
		var insertCont = document.getElementById('insertText_' + num).value;
		
		$.post(url='/diary/reply/update',
				{rno:num,
				reply:insertCont},
				function(data){
					console.log("insert reply content complete");
					replylist(numDno);
				});		
	}
	
	
	function isNull(obj){
		return (typeof obj != "undefined" && obj !=null && obj != "")? false:true;
	}


	
	
</script>
</body>
</html>