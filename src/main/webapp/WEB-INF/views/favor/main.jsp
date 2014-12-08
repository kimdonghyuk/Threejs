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
        @media screen and (max-width: 979px){
            body{
                padding-top: 0px;
            }
        }
        body{
            background-color: lightblue;
        }
        .center-button{
            height: 50px;
            width: 200px;
            margin:auto;
        }
        .center-button-in{
            margin: 3px;0
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
                        <li><a href="/book/main">나만의도감</a></li>
                        <li class="active"><a href="/favor/main">즐겨찾기</a></li>
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
                <h1>즐겨찾기</h1>
            </div>

        </div>
    </div>
</section>
<!-- / .title -->

<!-- 즐겨찾기 리스트 뿌려줄곳 -->

    <div id="menu" style="height: 600px; padding-top: 20px">
        <div class="sidebar-nav">
            <div class="well span3" style="border: 3px solid green;">
                <ul class="nav nav-list">
                
                    <li class="nav-header" style="border: 1px;" id="favorlist">즐겨찾기 항목</li>
                <!-- favor 리스트 불러오기 -->
                <%-- <c:forEach items="${list}" var="item">
                    <li><a href="javascript:contList(${item.cno})"><i class="icon-star"></i>${item.cate}${item.title}</li>
				
				</c:forEach> --%>
				
                </ul>
            </div>
        </div>
        <!-- 즐겨찾기 항목 상세설명 -->
        <div class="row">
            <div class="span9" style="border: 3px solid green" >
             <div class="row">
                    <div class="span9" >
						<div class = "favortitle">
                        <h4><strong id="title" class="pull-left" style="padding-top: 10px; margin-left: 15px;">놀이 제목</strong></h4>
                        </div>
                        <h5 class="pull-right" style="padding-bottom: 5px; margin-right: 10px;">즐겨찾기 해제 <a href="즐겨찾기 삭제"><i class="icon-star"></i> </a></h5>

                    </div>
                </div>
                <div class="row">
                    <div class="span4" id = "contimg">
                        <a href="#">
                            <img src="/resources/images/sample/img2.jpg">
                       </a>
                    </div>
                    <div class="span5" id="contDetail">
                        <p>
                            Lorem ipsum dolor sit amet, id nec conceptam conclusionemque. Et eam tation option. Utinam salutatus ex eum. Ne mea dicit tibique facilisi, ea mei omittam explicari conclusionemque, ad nobis propriae quaerendum sea.
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <!-- 설명 끝 -->
    </div>

<!-- 리스트 끝 -->

<script src="/resources/js/vendor/jquery-1.9.1.min.js"></script>
<script src="/resources/js/vendor/bootstrap.min.js"></script>
<script src="/resources/js/main.js"></script>


<!-- cont불러오기 여기 스크립트 다시 해주세요 윤횽오빠-->
<script type="text/javascript">

/* $(document).ready(); */

$(document).ready(function(){
		 favorlist();
	});
	
function favorlist(){
    $.post("list", function(data){
    	console.log(data);
    	var list =""
        var targer = $('#favorlist');
        
        $.each (data , function (key , val) {
            console.log(key,val);
            list +=
			
            console.log(list);
        });
        target.html(list);
    });
};



function contList(cno){
	
 	var result = {cno:cno}
	$.post("detail",result,function(data){
		
		console.log(data);		
		console.log(data.cno);
		
		/*  var title = document.getElementById("title");*/
		
		var title = $('#title');
		var contdetail = $('#contDetail');
		var contimg=$('#contimg');
		
		title.html('<p>'+data.title+'</p>');
		contdetail.html('<p>'+data.cont+'</p>');
		contimg.html("<img src="+'/resources/images/sample/img2.jpg'+">");
	}
)};
	

</script>


</body>
</html>