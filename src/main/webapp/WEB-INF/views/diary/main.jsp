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
	                        <a><h2> ${table.title} </h2></a>
	                        <div class="blog-meta clearfix">
	                            <p class="pull-left" id="diaryMenu">
	                                <!-- 기본정보 들어가는 부분 -->
	                              <i class="icon-user"></i> 글쓴이 <a href="#"> ${table.userid } </a> | 
	                              <i class="icon-folder-close"></i> 관찰대상 <a href="#"> ${table.tag } </a> | 
	                              <i class="icon-calendar"></i> 2014.12.04
	                          	</p>
	                         	 <p class="pull-right" id="diaryReply">
	                         	 	<c:choose>
	                         	 	<c:when test="${table.rcount==0}">
	                          			<i class="icon-comment pull"></i> <a href="/blog-item#comments">덧글 0개</a></c:when>
	                          		<c:when test="${table.rcount>0}">
	                          			<i class="icon-comment pull"></i> <a href="/blog-item#comments">덧글 ${table.rcount}개</a></c:when>
	                          		</c:choose>
	                          	</p>
	                        </div>
	                        <div id="diaryCont">
	                          <p><img src="/han/file/regphoto/${table.contfile}" width="100%" alt="" /></p>
	                            <!-- 본문 들어갈 부분 -->
	                          <p> ${table.cont} </p>
	                        </div>  
	                          <a class="btn btn-link" id="diary_replyList" href="#">덧글보기 <i class="icon-angle-right"></i></a>
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

</script>

</body>
</html>