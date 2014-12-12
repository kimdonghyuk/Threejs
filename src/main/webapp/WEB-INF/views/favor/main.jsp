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
            background:url("../resources/images/play/favor.jpg");
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
        #falist{
        
			background: -moz-linear-gradient(45deg,  rgba(255,255,255,1) 0%, rgba(255,255,255,0) 100%); /* FF3.6+ */
			background: -webkit-gradient(linear, left bottom, right top, color-stop(0%,rgba(255,255,255,1)), color-stop(100%,rgba(255,255,255,0))); /* Chrome,Safari4+ */
			background: -webkit-linear-gradient(45deg,  rgba(255,255,255,1) 0%,rgba(255,255,255,0) 100%); /* Chrome10+,Safari5.1+ */
			background: -o-linear-gradient(45deg,  rgba(255,255,255,1) 0%,rgba(255,255,255,0) 100%); /* Opera 11.10+ */
			background: -ms-linear-gradient(45deg,  rgba(255,255,255,1) 0%,rgba(255,255,255,0) 100%); /* IE10+ */
			background: linear-gradient(45deg,  rgba(255,255,255,1) 0%,rgba(255,255,255,0) 100%); /* W3C */
			filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#00ffffff',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */

        }
        li{
        	font-size: large;
        	color:black;
        	z-index:1;
        	line-height:1.2em;
        }
        p{
        font-size:x-large;
        line-height:1.5em;
       
        }
        img{
        border-radius: 30px;
        display:block;
        margin-left:auto;
        margin-right:auto;
        }
        iframe{
        width:100%;
        height:400px;
        border-radius: 30px;
        display:block;
        margin-left:auto;
        margin-right:auto;
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
    	<div class="container">
	    	<div class = "row-fluid">
		        <div class="sidebar-nav">
		            <div class="well span3" id=falist style="border: 3px solid antiquewhite; margin:auto; border-radius: 30px;">
		                <ul class="nav nav-list">
		                
		                    <li class="nav-header" style="border: 1px;" id="favorlist">즐겨찾기 항목</li>
		                <!-- favor 리스트 불러오기 -->
						
		                </ul>
		            </div>
		        </div>
		        <!-- 즐겨찾기 항목 상세설명 -->
		    
		            <div id=falist class="span9" style="border: 3px solid antiquewhite; border-radius: 30px;" >
		             
		                    <div class="span12" >
								<div class = "favortitle">
		                        <h4><strong id="title" class="pull-left" style="padding-top: 10px; margin-left: 15px;">놀이 제목</strong></h4>
		                        </div>
		                        <h5 class="pull-right"  id="delfavor" style="padding-bottom: 5px; margin-right: 10px;">즐겨찾기 해제 
		                        <a href="즐겨찾기 삭제"><i class="icon-star"></i> </a></h5>
		
		                    </div>
		             
		                
		                  
		                    <div class="span11" id="contDetail">
		                        <p>놀이 설명 입니다.</p>
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
    	var list ="<li>즐겨찾기 목록</li>"
        var target = $('#favorlist');       
        $.each (data , function (key , val) {         
            list +="<a href=javascript:contList("+val.cno+","+val.fno+")>"
            		+"<li>["+val.cate+"]"+val.title+"</li><br>"			
        });
        target.html(list);
    });
};



function contList(cno,fno){
	
 	var result = {cno:cno , fno:fno}
	$.post("detail",result,function(data){
		console.log(data.fno);
		console.log(data.contfile);
	
		/*  var title = document.getElementById("title");*/
		
		var title = $('#title');
		var contdetail = $('#contDetail');
		var contimg=$('#contimg');
		var delfavor = $('#delfavor');
	
	
		
		title.html('<p>'+data.title+'</p>');
		
		if(data.cate=="동요")
			{
			contdetail.html("<iframe src='"+data.cont+"'frameborder='0' allowfullscreen></iframe><p>*youtube 참고</p>"); 
			} else{
			
			
		contdetail.html("<img src='/resources/images/play/"+data.contfile+"' vspace='10' align = 'center'>"+'<p>'+data.cont+'</p>'); 
			}
		
		delfavor.html("즐겨찾기 해제<a href='delFavor?fno="+data.fno+"'><i class='icon-star'></i></a>");
	
	
	
	}
)};

	

</script>




</body>
</html>