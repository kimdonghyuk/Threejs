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
    <meta name="viewport" content="width=device-width", user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    
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
    
    body{
	    	background-image : url("/resources/book/background/sample_Background.jpg");
			background-position: center center;
		    background-repeat: no-repeat;
		    background-attachment: fixed;
		    background-size: cover;
	        font-family: 'Nanum Gothic', serif;
	    }
    
	@media screen and (max-width: 979px){
		body{
			padding-top: 0px;}
	}
    
    .insertBtn{
    	background-color: #faff00;
    	border-color: #0094ff;
    	opacity : 0.7;
    }
    
    .insertBtn:hover{
    	background-color: rgba(0, 0, 255, 0.2);
    }
    
    .btn-success{    	
    	margin : 5px;
    	width : 119px;	
    	text-align : center;
    	font-weight: bold
    }
	
	.maincontainer{
		position : absolute;
		padding : 0px;
		margin-top : 0px auto;
	}
	
	.menu {
		padding : 10px;
		height : 10px;
		width : 155px;
		margin : auto;
	}
	
 	.prevPage{
		position: absolute;
		padding : 15px;
		left : 5%;
		width: 50px;
		text-align: left;
		opacity:0.2;
		cursor: pointer;
	}
	
	.nextPage{
		position: absolute;
		padding : 15px;
		right : 2%;
		width: 50px;
		text-align: right;
		opacity:0.3;
		cursor: pointer;
	}
	
	.element{
		width: 270px;
		height: 330px;
		box-shadow: 0px 0px 12px rgba(0, 250, 85, 0.6);
		border: 4px solid rgba(255, 255, 255, 0.8);
		text-align: center;
		cursor: pointer;
	}
	
	.element:hover {
		box-shadow: 0px 0px 12px rgba(0, 255, 255, 0.75);
		border: 4px solid rgba(0, 85, 140, 0.9);
	}
	
	.element .number {
		position: absolute;
		top: 5px;
		right: 100%;
	}
	
	.symbol{
<<<<<<< HEAD
		font-family: Nanum Gothic, serif;
		font-size : 40px;
=======
		font-size : 35px;
>>>>>>> 1e36d2d2550ccaff078d7332db84f4009736d7ef
		font-weight: bold;
		padding : 10px;
		color: rgba(0, 0, 0, 0.6);
		text-align: center;
		text-shadow: 0 0 10px rgba(0, 250, 85, 0.50);
	}
	
/* 	.element .symbol {
		position: absolute;
		font-size: 100px;
		font-weight: bold;
		color: rgba(255, 255, 255, 0.8);
		text-shadow: 0 0 10px rgba(0, 250, 85, 0.50);
	} */
	
	.element .details {
		position: absolute;
		top: 40px;
		left: 0px;
		right: 0px;
		font-size: 12px;
		color: rgba(0, 250, 85, 0.8);
	}
	
	#table{
		width: 70px;
		height: 35px;
		text-align:center;
	}
	
	#sphere{
		width: 85px;
		height: 35px;
		text-align:center;
	}
		
	#table:hover {
		background-color: rgba(0, 0, 0, 0.3);
	}
	
	#sphere:hover {
		background-color: rgba(0, 0, 0, 0.3);
	}
	
	.prevPage:hover{
		opacity : 0.9
	}
	
	.nextPage:hover{
		opacity : 0.9
	}
	
	button:active {
		color: #000000;
		background-color: rgba(150, 150, 255, 0.8);
	}    
	
	p, strong, ul, li, label{
        	font-family: 'Nanum Gothic', serif;
        }
	
    </style>
    
</head>

<body>

<!--Header Start ..............................................................................................-->
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
                        <li class="login">
                        <a href='/user/logout'>LogOut</a>
                        </li>
                    </ul>        
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </header>
    <!-- /header -->
<!--/header end................................................................................................-->
    
<!-- seconde header ...........................................................................................-->

	<section class="title">
	<div class="container">
		<div class="row-fluid">
			<div class="span6">
				<h1 style='font-family: Nanum Gothic, serif;'>나만의 도감</h1>
			</div>
		</div>
	</div>
	</section>

<!-- modal code start ........................................................................................-->
	<div class="modal fade" id="testForm" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
		<div class = "modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header" style="text-align:center;">
					<button type="button" class="close" data-dismiss="modal">✕</button>
					<h3 id="mTitle" style="text-align: center; font-family: Nanum Gothic, serif;">
					<!-- 제목 들어가는 부분 -->
					</h3>
				</div>
				
				<div class="modal-body text-center">
					<div id="mContfile" style="width:100%;">
					</div>
					
					<div id="mCont" style="width:100%; text-align:center; font-family: Nanum Gothic, serif;">
					</div>
					</div>					
				</div>
				
				<div class="modal-footer">
				</div>
			</div>
		</div>

<!--Three.js Satart...........................................................................................-->

	<div class="menu">
		<button class="pull-left btn btn-transparent" id="table" style='font-family: Nanum Gothic, serif;'>TABLE</button>
		<button class="pull-right btn btn-transparent" id="sphere" style='font-family: Nanum Gothic, serif;'>SPHERE</button>
	</div>

	<div id="back">
	
		<div id="maincontainer"></div>		
		<div class="prevPage"></div>	
		<div class="nextPage"></div>
	</div>


 
<!--java script문 시작.........................................................................................--> 
<script src="/resources/js/vendor/jquery-1.9.1.min.js"></script>
<script src="/resources/js/vendor/bootstrap.min.js"></script>
<script src="/resources/js/main.js"></script>
<script src="/resources/Threejs/three.min.js"></script>
<script src="/resources/Threejs/tween.min.js"></script>
<script src="/resources/Threejs/TrackballControls.js"></script>
<script src="/resources/Threejs/CSS3DRenderer.js"></script>

<script>
 
/* make Table.................................................................................................*/
	var tableData = [];
	var page = 1;
	var bookNo = 0;
	
	var camera, scene, renderer;
	var controls;

	var objects = [];
	var targets = { table: [], sphere: []};
	
	(function makeTable(){
		bookNo = ${number};
		
		var i = 0;
		var xStart = 5;
		var yStart = 3;	
		
		$.ajax({
			url: "/book/sample/list?page=" + page + "&bno="+bookNo,
			dataType:"json",
			async:false,
			success:function(data){
				for(var i= 0, len = data.length; i < len ; i++){
					
					var tempX = xStart + ((i % 3) * 3);
					var tempY = yStart + ((Math.floor(i / 3)) * 2);
					
					if(tempX > 12){
						tempX -= 9;
					}
					data[i].x = tempX;
					data[i].y = tempY;
				}
				tableData = data;
				console.log("Data : " + tableData);
				makeBtn(tableData[0].cnt);
			}});
	})();
	
/*end makeTable................................................................................................*/	
/*Start main...................................................................................................*/

 	init();
	// 초기화 함수 실행
	animate();
	// 애니메이션 함수 실행 

/**/	
	function init() {
	    camera = new THREE.PerspectiveCamera( 40, window.innerWidth / window.innerHeight, 1, 10000 );
	    camera.position.z = 3000;
	
	    scene = new THREE.Scene();
	
	    // table
	    for ( var i = 0; i < tableData.length; i++ ) {
	
	        var element = document.createElement( 'div' );
	        element.className = 'element';
	        element.style.backgroundColor = 'rgba(0, 250, 85,' + ( Math.random() * 0.01 + 0.1 ) + ')';
	        // class 이름을 element로 잡은 부분에 배경색 스타일에 투명도를 넣고 그 값을 랜덤으로 지정해줌 rgba(0,127,127, 투명도)
        	
	        var number = document.createElement( 'div' );
	        number.className = 'number';
 	        number.id = tableData[i].pno;
	        element.appendChild(number);
	        
	        var symbol = document.createElement( 'div' );
	        symbol.className = 'symbol';
	        symbol.textContent = tableData[i].title
	        element.appendChild( symbol );
	        // 각 원소별 축약어 띄어주기
	        
			var details = document.createElement( 'div' );
			var fileurl = "/han/file/regphoto/";
           	details.className = 'details';
           	details.innerHTML =  '<a data-toggle="modal" href="#testForm"' + "onclick='clickModal(\""+
           			tableData[i].title + "\",\"" + tableData[i].contfile + "\",\"" + tableData[i].cont + 
           			"\",\"" + tableData[i].pno + "\")'>"
           		+ '<img src = ' + fileurl + tableData[ i ].contfile
           		+ ' width = "280px" height = "180px"></a></div>';
          	element.appendChild( details );
	        // 각 원소별 풀네임 + 방사능번호 하단 두줄 밀어넣어주기
		        
	        var object = new THREE.CSS3DObject( element );
	        object.position.x = Math.random() * 4000 - 2000;
	        object.position.y = Math.random() * 4000 - 2000;
	        object.position.z = Math.random() * 4000 - 2000;
	        scene.add( object );
	
	        objects.push( object ); 
	        
	        var object = new THREE.Object3D();
	        object.position.x = ( tableData[i].x * 140 ) - 1150;
	        object.position.y = - ( tableData[i].y* 180 ) + 1050;	
	        targets.table.push( object );	
	    } 
	
	    // sphere	
	    var vector = new THREE.Vector3();
	    var length = 9;
	    
		if(tableData[0].cnt == page){
			length = tableData.length;
		}
		
	    for ( var i = 0, l = length; i < l; i++ ) {
	
	        var phi = Math.acos( -1 + ( 2 * i ) / l );
	        var theta = Math.sqrt( l * Math.PI ) * phi;		        
	        var object = new THREE.Object3D();
	
	        object.position.x = 620 * Math.cos( theta ) * Math.sin( phi );
	        object.position.y = 620 * Math.sin( theta ) * Math.sin( phi ) + 50;
	        object.position.z = 620 * Math.cos( phi );
	        
	        vector.copy( object.position ).multiplyScalar( 2 );	
	        object.lookAt( vector );	
	        targets.sphere.push( object );
	    }
	    
	    renderer = new THREE.CSS3DRenderer();
	    renderer.setSize( window.innerWidth, window.innerHeight );
	    renderer.domElement.style.position = 'absolute';
	    document.getElementById( 'maincontainer' ).appendChild( renderer.domElement );
		
		// Zoom Control Parts
	    controls = new THREE.TrackballControls( camera, renderer.domElement );
	    controls.rotateSpeed = 0.5;			// 뭔진 모르겠지만 이 값이 크면 상당히 격동적으로 움직임.
	    controls.minDistance = 3000;		// zoom 거리 최소값
	    controls.maxDistance = 5000;		// zoom 거리 최대값
	    controls.addEventListener( 'change', render );
	
	    // transform( target되는 이벤트 , 이동속도)
	    var button = document.getElementById( 'table' );
	    button.addEventListener( 'click', function ( event ) {	
	        transform( targets.table, 2000 );	
	    }, false );
	
	    var button = document.getElementById( 'sphere' );
	    button.addEventListener( 'click', function ( event ) {	
	        transform( targets.sphere, 2000 );	
	    }, false );
	
	    transform( targets.table, 2000 );
	
	    window.addEventListener( 'resize', onWindowResize, false );
	
	}
	
	function transform( targets, duration ) {
	
	    TWEEN.removeAll();
	    // 현재까지 있던 애니메이션 효과를 모두 지움.
	
	    for ( var i = 0; i < objects.length; i ++ ) {
	
	        var object = objects[ i ];
	        var target = targets[ i ];
	
	        new TWEEN.Tween( object.position )
	                .to( { x: target.position.x, y: target.position.y, z: target.position.z }, 
	                		Math.random() * duration + duration )
	                .easing( TWEEN.Easing.Exponential.InOut )
	                .start();
	
	        new TWEEN.Tween( object.rotation )
	                .to( { x: target.rotation.x, y: target.rotation.y, z: target.rotation.z }, 
	                		Math.random() * duration + duration )
	                .easing( TWEEN.Easing.Exponential.InOut )
	                .start();
	    }	
	    new TWEEN.Tween(this)
	            .to({}, duration * 2 )
	            .onUpdate(render)
	            .start();	    
	}
	
	function onWindowResize(){	
	    camera.aspect = window.innerWidth / window.innerHeight;
	    camera.updateProjectionMatrix();
	
	    renderer.setSize( window.innerWidth, window.innerHeight );
	
	    render();	
	}
	
	function animate(){	
	    requestAnimationFrame( animate );	
	    TWEEN.update();	
	    controls.update();
	}
	
	function render() {	
	    renderer.render( scene, camera );	
	}	
	
	function againTable(){
		console.log("in againTable !")
		var obj = document.getElementsByClassName("element");
		while(obj.length>0){
			obj[0].parentNode.removeChild(obj[0]);
		}
		
		bookNo = ${number};
		
		var i = 0;
		var xStart = 5;
		var yStart = 3;
		
		$.ajax({
			url: "/book/sample/list?page=" + page + "&bno="+bookNo,
			dataType:"json",
			async:false,
			success:function(data){
				for(var i= 0, len = data.length; i < len ; i++){
					
					var tempX = xStart + ((i % 3) * 3);
					var tempY = yStart + ((Math.floor(i / 3)) * 2);
					
					if(tempX > 12){
						tempX -= 9;						
					}
					data[i].x = tempX;
					data[i].y = tempY;					
				}
				tableData = data;
				makeBtn(tableData[0].cnt);
			}});
	}
	
	
  function makeBtn(num){	  
      var target1 = $(".prevPage")
      var target2 = $(".nextPage")
      var content1 = "";
      var content2 = "";
      var cnt = num;
      
      if(page > 1 && page < num){
         console.log("------in Page-------------");
         content1 += "<div><img src = /resources/book/prevPage.jpg onclick='prevPage();'/>"+ "</div>";
         content2 += "<div><img src = /resources/book/nextPage.jpg onclick='nextPage();'/>"+ "</div>";
         target1.html(content1);
         target2.html(content2);
         return;
      }
      
      else if(cnt == 1 ){
    	  console.log("------small data-------------");
    	  return;
      }
      
      else if(page == 1){
         console.log("------in First Page-------------");
         content1 += "<div style='display:none'><img src = /resources/book/prevPage.jpg onclick='prevPage();'/>"+ 
         				"</div>";
         content2 += "<div><img src = /resources/book/nextPage.jpg onclick='nextPage();'>" +  
         				"</button>"+"</div>";
         target1.html(content1);
         target2.html(content2);   
         return;
      }
      
      else if( page == cnt){
         console.log("------in Last Page-------------");
         content2 += "<div style='display:none'><button onclick='nextPage();'>" + "</button>"+"</div>";
         target2.html(content2);
         content1 += "<div><img src = /resources/book/prevPage.jpg onclick='prevPage();'/>"+ "</div>";
         target1.html(content1);
         return;
      }
   }
  
  
  	function clickModal(title, contfile, cont, pno){
  		
  		var checkModal = document.getElementById('modalInsertPicture');
  		
  		if(isNull(checkModal)){
  			console.log("checkModal is null");
  		
  	  	var fileurl = "/han/file/regphoto/";
  		
  		var tarTitle = $("#mTitle");
  		var tarContfile = $("#mContfile");
  		var tarCont = $("#mCont");
  		var targetbtn = $(".modal-footer");
  		
  		var conContfile = "";
  		var makeBtn = "";
  		
  		conContfile += '<img src = ' + fileurl + contfile + '>';
  		makeBtn += "<button type='button' style='font-family: Nanum Gothic, serif;' class='btn btn-primary'" + "onclick='deleteModal(" + pno +")'> 삭 제 </button>"
					+ "<button type='button' style='font-family: Nanum Gothic, serif;' class='btn btn-primary'" + "onclick='insertModal(\""
					+ title + "\",\"" + contfile + "\",\"" + cont + "\",\"" + pno + "\")'>" + "수 정 </button>";
				
		targetbtn.html(makeBtn);
  		tarTitle.html(title);
  		tarCont.html(cont);
  		tarContfile.html(conContfile);
  		}
  		else{
  			console.log("insert init !");
  			initModal(title, contfile, cont, pno);
  		}
  	}  	
  	
  	
  	function initModal(title, contfile, cont, pno){
  		
 	  	var fileurl = "/han/file/regphoto/";
  		
		var tarTitle = $(".modal-header");
		var tarCont = $(".modal-body");
		var tarBtn = $(".modal-footer");
		
		var titleCont = "";
		var bodyCont = "";
		var footerCont = "";
		
		titleCont += "<button type='button' class='close' data-dismiss='modal'>✕</button>"
					+ "<h3 id='mTitle' style='text-align: center; font-family: Nanum Gothic, serif;'>" + title + "</h3>";
		bodyCont += "<div id='mContfile' style='width:100%;'><img src = '" + fileurl + contfile + "'></div>"
					+ "<div id='mCont' style='width:100%; text-align:center; font-family: Nanum Gothic, serif;'>" + cont + "</div>";
		footerCont += "<button type='button' style='font-family: Nanum Gothic, serif;' class='btn btn-primary'" + "onclick='deleteModal(" + pno +")'> 삭 제 </button>"
					+ "<button type='button' style='font-family: Nanum Gothic, serif;' class='btn btn-primary'" + "onclick='insertModal(\""
					+ title + "\",\"" + contfile + "\",\"" + cont + "\",\"" + pno + "\")'>" + "수 정 </button>";
					
		tarTitle.html(titleCont);
		tarCont.html(bodyCont);
		tarBtn.html(footerCont);
  	}  	
  	
  	
	function nextPage(){
		page = page + 1;
		againTable();
		init();
		animate();
	}
	
	
	function prevPage(){
		page = page - 1;
		againTable();
		init();
		animate();
	}		

	
	function deleteModal(num){
		$.post(url='/book/sample/delete',
				{pno:num},
				function(data){
					againTable();
					init();
					animate();
					$("#testForm").modal('hide');
				});
	}
	
	
	function insertModal(title, contfile, cont, pno){
		
		var fileurl = "/han/file/regphoto/";
		
		var tarTitle = $(".modal-header");
		var tarCont = $(".modal-body");
		var tarBtn = $(".modal-footer");
		
		var titleCont = "";
		var bodyCont = "";
		var footerCont = "";
		
		titleCont += "<input id='modal-title' type='text' style='text-align: center; font-family: Nanum Gothic, serif;' value= " + title + ">"
		bodyCont += "<div id='modalInsertPicture'>"
					+ "<img src = '" + fileurl + contfile + "'></div>"
					+ "<form target='zero' action='/han/file/upload' method='post' enctype='multipart/form-data'>"
					+ "<input type='file' name='file'><input type='submit' style='font-family: Nanum Gothic, serif;' value='수 정'>	</form>"
 					+ "<iframe name='zero' width='0' height='0'></iframe>"
					+ "<textarea id='modal-cont' style='font-family: Nanum Gothic, serif;'>" + cont + "</textarea>";
 		footerCont += "<button type='button' style='font-family: Nanum Gothic, serif;' class='btn btn-primary'" + "onclick='insertLogic(\""
						+ contfile + "\",\"" + pno + "\")'> 완 료 </button>";
			
		tarTitle.html(titleCont);
		tarCont.html(bodyCont);
		tarBtn.html(footerCont);		
	}
	
	
	function updateResult(data){		
		
		var tarBtn = $(".modal-footer");
		var footerCont = "";
		
		console.log("get suffix : " + data.suffix );
		console.log("get fileName : " + data.fileName );
		
		
		if(data.suffix == '.jpg'){
			var target = $("#modalInsertPicture");
			var content = "";
			
			content += "<input id='getFileName' type='hidden' value='" + data.fileName + "'>"
						+ "<image id='thumb' src='/han/file/regphoto/" + data.fileName + "'/></p>"
			target.html(content);
		}else{
			$("#modalInsertPicture").html("<image id='thumb' data-src='"+data.fileName+"'src='/resources/book/images/icon.jpg'/></a></p>");
		}
	}
	
	
	function insertLogic(mfileName,num){
		var mTitle = document.getElementById('modal-title').value;
		var mCont = document.getElementById('modal-cont').value;
		var fileName = document.getElementById('getFileName');
	
		if(isNull(fileName)){
			fileName = mfileName;}
		else{
			fileName = fileName.value; 
		}
		
		$.post(url='sample/update',
				{title:mTitle,
				cont:mCont,
				contfile:fileName,
				pno:num},
				function(data){
					againTable();
					init();
					animate();
					$("#testForm").modal('hide');
					initModal(mTitle, mCont, mfileName, num);
				});	
	}
	


	function isNull(obj){
		return (typeof obj != "undefined" && obj !=null && obj != "")? false:true;
	}
	
	
</script>
</body>
</html>