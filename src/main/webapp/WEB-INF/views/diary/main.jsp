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
	    	background-size : cover;}
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
                    <h1>관찰일기</h1>
                </div>
            </div>
        </div>
    </section>
    <!-- / .title -->

    <div class="center-button">
        <a href="/index" class="btn btn-primary pull-left center-button-in">전체보기</a>
        <a href="/diary/write" class="btn btn-primary pull-right center-button-in">일기쓰기</a>
    </div>

    <section id="about-us" class="container main">
        <div class="row-fluid">
            <div class="span8 offset2">
                <div class="blog">
                
                   <c:forEach items="${list}" var="table">
	                    <div class="blog-item well" id="diaryTitle">
	                        <a id="diaryTitle_${table.dno}"><h2> ${table.title} </h2></a>
	                        <div class="blog-meta clearfix" id ="diaryTag_${table.dno}">
	                            <p class="pull-left">
	                                <!-- 기본정보 들어가는 부분 -->
	                              <i class="icon-user"></i> 글쓴이 <a href="#"> ${table.userid } </a> | 
	                              <i class="icon-folder-close"></i> 관찰대상 <a href="#"> ${table.tag } </a> | 
	                              <i class="icon-calendar"></i> 2014.12.04
	                          	</p>
	                          		<p class="pull-right" id="btnArea">
	                          			<i class="icon-pencil"></i> 
	                          			<a href="javascript:insertDiary(${table.dno}, '${table.title}','${table.cont}','${table.contfile }','${table.tag}')"> 수 정</a>

	                          			<i class="icon-eraser"></i> 
	                          			<a href="/diary/deleteDiary?dno=${table.dno}"> 삭 제</a>
	                          		</p>
	                        </div>
	                        <div id="diaryCont_${table.dno}">
	                          <p><img src="/han/file/regphoto/${table.contfile}" width="100%" alt="등록된 이미지가 없습니다." /></p>
	                            <!-- 본문 들어갈 부분 -->
	                          <p style='font-family: sans-serif;'> ${table.cont} </p>
	                        </div>
	                        <div id="diaryReply">
	                        	 <c:choose>
									<c:when test="${table.rcount==0}">
								  		<a class="btn btn-link" id="replyView" onclick="replylist(${table.dno})">덧글보기(0) <i class="icon-angle-right"></i></a>
								  		<div id="replyFrame_${table.dno}"></div> </c:when>
								  	<c:when test="${table.rcount>0}">
								  		<a class="btn btn-link" id="replyView" onclick="replylist(${table.dno})">덧글보기(${table.rcount}) <i class="icon-angle-right"></i></a>
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
							<li><a href="javascript:goPage(${pageMaker.first}-5)">
							<i class="icon-angle-left"></i></a></li>
						</c:if>
                  
                    	<!-- 페이지 번호 만들기 -->
                       	<c:forEach begin="${pageMaker.first}" end="${pageMaker.last}" var="idx">
                       		<c:if test="${idx-1 < pageMaker.cnt }">
                       			<li><a href="javascript:goPage(${idx})">${idx}</a></li>
                       		</c:if>
                      	</c:forEach>
                       	
                       	<!-- 다음 버튼 만들기 -->
                       	<c:if test="${pageMaker.last < pageMaker.cnt}">
                       		<li><a href="javascript:goPage(${pageMaker.last}+1)">
                       		<i class="icon-angle-right"></i></a></li>
                       	</c:if>
                    </ul>
                  </div>
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
	
	<div class="modal fade" id="insertForm" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
		<div class = "modal-dialog modal-sm">
			<div class="modal-content">
					<div class="modal-header" style="text-align:center;">
						<button type="button" class="close" data-dismiss="modal">✕</button>
						<h3 id="mTitle" style="text-align: center;">
						<!-- 제목 들어가는 부분 -->
						</h3>
					</div>
				</div>
			</div>
		</div>
	
	
	<form method='get' accept-charset="utf-8" name='diaryForm'>
		<input type='hidden' name='dno'>
		<input type='hidden' name='page' value='${pageMaker.page}'>
	</form>

<script src="/resources/js/vendor/jquery-1.9.1.min.js"></script>
<script src="/resources/js/vendor/bootstrap.min.js"></script>
<script src="/resources/js/main.js"></script>

<script>

	function goPage(num) {
		console.log(num);
		document.diaryForm.page.value = num;
		document.diaryForm.submit();
	}

	// 삭제 키 누르면 확인한번 해주고 삭제해주기 위해 스크립트문 제작.
	function deleteDiary(dno){
		console.log(dno);
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
								+ "<div><input type='text' style='heigth:20px;' id='createReply_" + num + "' placeholder='댓글을 입력해주세요.' >"
								+ "<input type='button' class='pull-right' id='registReply' onclick='createReply("+ num +")' value='등 록'></div>";
			
			$.post(url='/diary/reply/read',
					{dno:num},
					function(data){
						$.each(data, function(key, val){
							replyContent += "<div id='reply_" + num + "'>"
											+ "<ul class='replySub_" + val.dno + "'<li>[글쓴이 : " + val.userid + "][내용 : " + val.reply + "]</ul></div>"
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
	
	function createReply(num){
		updateReply(num);
		upRcount(num);
	}

	function updateReply(num){
		var createCont = document.getElementById('createReply_'+num).value;
		
		$.post(url="/diary/reply/create",
				{dno:num,
				reply:createCont},
				function(data){
					location.reload();
				});
	}
	
	function upRcount(num){
		var result= {dno:num};
		$.post(url='/diary/reply/upcount',
				result,
				function(data){
					console.log("ok update Rcount");
				});
	}
	
	function isNull(obj){
		return (typeof obj != "undefined" && obj !=null && obj != "")? false:true;
	}


	
	
</script>
</body>
</html>