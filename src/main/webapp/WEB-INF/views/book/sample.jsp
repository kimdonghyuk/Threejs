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
    
    body{
    	background-image : url("/resources/book/background/book_allview_background.jpg");
    	background-repeat : no repeat;
    	background-size : cover;
    }
    
	@media screen and (max-width: 979px){
		body{
			padding-top: 0px;}
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
		height: 300px;
		box-shadow: 0px 0px 12px rgba(0, 250, 85, 0.5);
		border: 2px solid rgba(0, 250, 85, 0.25);
		text-align: center;
		cursor: pointer;
	}
	
	.element:hover {
		box-shadow: 0px 0px 12px rgba(0, 255, 255, 0.75);
		border: 1px solid rgba(127, 255, 255, 0.75);
	}
	
	.element .number {
		position: absolute;
		top: 5px;
		right: 100%;
	}
	
	.element .symbol {
		position: absolute;
		left: 0px;
		right: 0px;
		font-size: 40px;
		font-weight: bold;
		color: rgba(255, 255, 255, 0.8);
		text-shadow: 0 0 10px rgba(0, 250, 85, 0.50);
	}
	
	.element .details {
		position: absolute;
		top: 40px;
		left: 0px;
		right: 0px;
		font-size: 12px;
		color: rgba(0, 250, 85, 0.8);
	}
	
/* 	#table{
		color: rgba(0, 255, 0, 0.6);
		background: transparent;
		border:solid;
		cursor: pointer;
	}

	#sphere{
		color: rgba(0, 255, 0, 0.6);
		background: transparent;
		border:solid;
		cursor: pointer;
	} */
		
	#table:hover {
		background-color: rgba(0, 0, 255, 0.2);
	}
	
	#sphere:hover {
		background-color: rgba(0, 0, 255, 0.2);
	}
	
	.prevPage:hover{
		opacity : 0.7
	}
	
	.nextPage:hover{
		opacity : 0.7
	}
	
	button:active {
		color: #000000;
		background-color: rgba(0, 0, 255, 0.5);
	}    
    </style>
    
</head>

<body>

<!--Header Start ...........................................................................................................-->
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
<!--/header end..............................................................................................................-->
    
<!-- seconde header..........................................................................................................-->

       <section class="title">
        <div class="container">
            <div class="row-fluid">
                <div class="span6">
                    <h1>나만의 도감</h1>
                </div> 
                <!--<div class="span6">
                    <ul class="breadcrumb pull-right">
                        <li><a href="/index">Home</a> <span class="divider">/</span></li>
                        <li class="active">나만의 도감</li>
                    </ul>
                </div> -->
            </div>
        </div>
    </section>
<!--/second header end.......................................................................................................-->

<!--Three.js Satart..........................................................................................................-->

<div id="back" style="height: 600px;"> 
	<div class="menu">
		<button class="btn btn-primary pull-left" id="table">TABLE</button>
		<button class="btn btn-primary pull-right" id="sphere">SPHERE</button>
	</div>

	<div id="back">
	
		<div id="maincontainer"></div>		
		<div class="prevPage"></div>	
		<div class="nextPage"></div>
	
<!--/Three.js Area End.......................................................................................................-->
<!--Menu Div.................................................................................................................-->
	</div>
	</div>
	
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

<!--Login form...............................................................................................................-->
<div class="modal hide fade in" id="loginForm" aria-hidden="false">
    <div class="modal-header">
        <i class="icon-remove" data-dismiss="modal" aria-hidden="true"></i>
        <h4>Login Form</h4>
    </div>
    <!--Modal Body-->
    <div class="modal-body">
        <form class="form-inline" action="/index" method="post" id="form-login">
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
<!--/Login form..............................................................................................................-->
    
    
<!--java script문 시작........................................................................................................--> 
<script src="/resources/js/vendor/jquery-1.9.1.min.js"></script>
<script src="/resources/js/vendor/bootstrap.min.js"></script>
<script src="/resources/js/main.js"></script>
<script src="/resources/Threejs/three.min.js"></script>
<script src="/resources/Threejs/tween.min.js"></script>
<script src="/resources/Threejs/TrackballControls.js"></script>
<script src="/resources/Threejs/CSS3DRenderer.js"></script>

<script>
 
/* make Table...............................................................................................................  */
	var tableData = [];
	var page = 1;
	var bookNo = 0;
	
	(function makeTable(){
		bookNo = ${number};
		
		var i = 0;
		var xStart = 5;
		var yStart = 3;	
		console.log("page : " + page);
		console.log("bookNo : " + bookNo);
		
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
					console.log(tempX, tempY);
					data[i].x = tempX;
					data[i].y = tempY;
				}
				tableData = data;
				makeBtn(tableData[0].cnt);
			}});
	})();
	
/*end makeTable............................................................................................................. */	
	var camera, scene, renderer;
	var controls;

	var objects = [];
	var targets = { table: [], sphere: []};
/* 	var targets = { table: [], sphere: [], helix: [], grid: [] }; */

	//var tableData = makeTable();
	// console.log("Table data:" + tableData); 
	//console.log(table);	
/*Start main..................................................................................................................*/
	
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
	
	        var element = document.createElement( 'div' );                                                  // 'div'요소를 element에 추가
	        element.className = 'element';                                                                  // 'div'에 class이름을 element로 잡음.
	        element.style.backgroundColor = 'rgba(0, 250, 85,' + ( Math.random() * 0.01 + 0.1 ) + ')';
	        // class 이름을 element로 잡은 부분에 배경색 스타일에 투명도를 넣고 그 값을 랜덤으로 지정해줌 rgba(0,127,127, 투명도)
	
/*  	        var number = document.createElement( 'div' );                                                   // 'div'요소를 element에 추가
	        number.className = 'number';                                                                    // 'div'에 class이름을 number로 잡음.
	        number.innerHTML = '<img src = /resources/book/images/minus.png>';
	        number.textContent = i + 1;                                                                 // 한개원소에 들어간 정보의 갯수만큼 나눠준 뒤에 + 1을 하여 원소에 번호를 붙여줌.
	        element.appendChild( number ); */
	        
	        var symbol = document.createElement( 'div' );
	        symbol.className = 'symbol';
	        symbol.textContent = tableData[i].title
	        element.appendChild( symbol ); 
	        // 각 원소별 축약어 띄어주기
			// "H", "<a href = http://www.naver.com><img src = /resources/ko.jpg width='100' height='100'></a>", "1.00794", 1, 1,
	        
			var details = document.createElement( 'div' );
			var fileurl = "/han/file/regphoto/";
           	details.className = 'details';
           	details.innerHTML = '<img src = ' + fileurl + tableData[ i ].contfile +' width = "280px" height = "180px"></div>';
/*            	details.innerHTML = '<img src = /resources/book/images/'+ tableData[ i ].contfile +' width = "280px" height = "180px"></div>'; */
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
	        object.position.y = - ( tableData[i].y* 180 ) + 950;	
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
	
/* 	    // helix	
	    var vector = new THREE.Vector3();
	    
	    for ( var i = 0, l = objects.length; i < l; i ++ ) {
	
	        var phi = i * 0.175 + Math.PI;
	
	        var object = new THREE.Object3D();
	
	        object.position.x = 900 * Math.sin( phi );
	        object.position.y = - ( i * 8 ) + 450;
	        object.position.z = 900 * Math.cos( phi );
	
	        vector.x = object.position.x * 2;
	        vector.y = object.position.y;
	        vector.z = object.position.z * 2;
	
	        object.lookAt( vector );
	
	        targets.helix.push( object );
	
	    }
	
	    // grid
	
	    for ( var i = 0; i < objects.length; i ++ ) {
	
	        var object = new THREE.Object3D();
	
	        object.position.x = ( ( i % 3 ) * 400 ) - 400;
	        object.position.y = ( - ( Math.floor( i / 3 ) % 3 ) * 400 ) + 400;
	        object.position.z = ( Math.floor( i / 9 ) ) * 500 - 1000;
	
	        targets.grid.push( object );
	
	    } */
	
	    //
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
	
/* 	    var button = document.getElementById( 'helix' );
	    button.addEventListener( 'click', function ( kevent ) {
	
	        transform( targets.helix, 2000 );
	
	    }, false );
	
	    var button = document.getElementById( 'grid' );
	    button.addEventListener( 'click', function ( event ) {
	
	        transform( targets.grid, 2000 );
	
	    }, false ); */
	
	    transform( targets.table, 2000 );
	
	    //
	
	    window.addEventListener( 'resize', onWindowResize, false );
	
	}
	
	function transform( targets, duration ) {
	
	    TWEEN.removeAll();
	    // 현재까지 있던 애니메이션 효과를 모두 지움.
	
	    for ( var i = 0; i < objects.length; i ++ ) {
	
	        var object = objects[ i ];
	        var target = targets[ i ];
	
	        new TWEEN.Tween( object.position )
	                .to( { x: target.position.x, y: target.position.y, z: target.position.z }, Math.random() * duration + duration )
	                .easing( TWEEN.Easing.Exponential.InOut )
	                .start();
	
	        new TWEEN.Tween( object.rotation )
	                .to( { x: target.rotation.x, y: target.rotation.y, z: target.rotation.z }, Math.random() * duration + duration )
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
		var obj = document.getElementsByClassName("element");
		while(obj.length>0){
			obj[0].parentNode.removeChild(obj[0]);
		}
		
		bookNo = ${number};
		
		var i = 0;
		var xStart = 5;
		var yStart = 3;	
		console.log("page : " + page);
		console.log("bookNo : " + bookNo);
		
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
					console.log(tempX, tempY);
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
	      
	      else if(page == 1){
	         console.log("------in First Page-------------");
	         content1 += "<div style='display:none'><img src = /resources/book/prevPage.jpg onclick='prevPage();'/>"+ "</div>";
	         content2 += "<div><img src = /resources/book/nextPage.jpg onclick='nextPage();'>" +  "</button>"+"</div>";
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
	   
	function nextPage(){
		page = page + 1;
		againTable();
		init();
		animate();
	};
	
	function prevPage(){
		page = page - 1;
		againTable();
		init();
		animate();
	}

</script>
</body>
</html>