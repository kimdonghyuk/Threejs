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

    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/bootstrap-responsive.min.css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/css/main.css">
    <link rel="stylesheet" href="resources/css/sl-slide.css">

    <script src="resources/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="resources/images/ico/apple-touch-icon-57-precomposed.png">
    
    <style>
    
    .btn-success{    	
    	margin : 5px;
    	width : 119px;	
    	text-align : center;
    	font-weight: bold
    }
	    
    #info {
	position: absolute;
	width: 100%;
	color: #ffffff;
	padding: 5px;
	font-family: Monospace;
	font-size: 13px;
	font-weight: bold;
	text-align: center;
	z-index: 1;
	}

	
	#menu {
		position: relative;
		bottom: -400px;
		width: 100%;
		heigth : 100%;
		text-align: center;
	}
	
	.prevPage{
		position: absolute;
		bottom: 40%;
		right : 95%;
		width: 50px;
		text-align: right;
		opacity:0.2;
		cursor: pointer;
	}
	
	.nextPage{
		position: absolute;
		bottom: 40%;
		right : 2%;
		width: 50px;
		text-align: right;
		opacity:0.3;
		cursor: pointer;
	
	}
	
	.element {
		width: 300px;
		height: 250px;
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
		top: 20px;
		right: 20px;
		font-size: 12px;
		color: rgba(127, 255, 255, 0.75);
	}
	
	.element .symbol {
		/* position: absolute; */
		left: 0px;
		right: 0px;
		font-bottom: 40px;
		font-size: 50px;
		font-weight: bold;
		color: rgba(0, 0, 0, 0.25);
		text-shadow: 0 0 10px rgba(0, 250, 85, 0.50);
	}
	
	.element .details {
	/* 	position: absolute; */
		top: 40px;
		left: 0px;
		right: 0px;
		font-size: 12px;
		color: rgba(0, 250, 85, 0.8);
	}
	
	button {
		color: rgba(255, 0, 210, 0.6);					/* button 부분의 글자색깔  */
		background: transparent;
		outline: 2px solid rgba(255, 0, 210, 0.6);		/* button 부분의 선 색깔, 굵기 */
		border: 0px;
		padding: 5px 10px;
		cursor: pointer;
	}
	
	button:hover {
		background-color: rgba(255, 0, 210, 0.2);
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
                        <li><a href="/index">Home</a></li>
                        <li><a href="/about-us">검 색</a></li>
                        <li class="active"><a href="services">나만의 도감</a></li>
                        <li><a href="/portfolio">Portfolio</a></li>
                        <li><a href="/index">Pages</a></li>
                        <li><a href="/blog">Blog</a></li> 
                        <li><a href="/contact-us">Contact</a></li>
                        <li class="login">
                            <a data-toggle="modal" href="#loginForm"><i class="icon-lock"></i></a>
                        </li>
                    </ul>        
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </header>
<!--/header end..............................................................................................................-->
    
<!-- seconde header..........................................................................................................-->
       <section class="title">
        <div class="container">
            <div class="row-fluid">
                <div class="span6">
                    <h1>나만의 도감</h1>
                </div>
                <div class="span6">
                    <ul class="breadcrumb pull-right">
                        <li><a href="index.html">Home</a> <span class="divider">/</span></li>
                        <li class="active">나만의 도감</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
<!--/second header end.......................................................................................................-->
    
<!--Three.js Satart..........................................................................................................-->

	<div id="maincontainer"></div>
<!-- 	<div id="info">
		<h2><a href="/sample">Sample Project</a></h2>
	</div> -->
	<div id="menu">
		<button id="table">TABLE</button>
		<button id="sphere">SPHERE</button>
		<button id="helix">HELIX</button>
		<button id="grid">GRID</button>
	</div>
	
	<div class="prevPage">	
	</div>
	
	<div class="nextPage">	
	</div>
<!--/Three.js Area End.......................................................................................................-->

<!--Login form...............................................................................................................-->
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
<!--/Login form..............................................................................................................-->
    
    
<!--java script문 시작........................................................................................................--> 
<script src="resources/js/vendor/jquery-1.9.1.min.js"></script>
<script src="resources/js/vendor/bootstrap.min.js"></script>
<script src="resources/js/main.js"></script>
<script src="resources/dogam/three.min.js"></script>
<script src="resources/dogam/tween.min.js"></script>
<script src="resources/dogam/TrackballControls.js"></script>
<script src="resources/dogam/CSS3DRenderer.js"></script>

<script>
 
/* make Table...............................................................................................................  */
	var tableData = [];
	var page = 1;
	
	console.log("page : " + page);
	
	(function makeTable(){
		var i = 0; 
		
		var xStart = 4;
		var yStart = 3;
		
		$.ajax({
			url: "/list?page=" + page,
			dataType:"json",
			async:false,
			success:function(data){
				for(var i= 0, len = data.length; i < len ; i++){
					
					var tempX = xStart + ((i % 4) * 3);
					var tempY = yStart + ((Math.floor(i / 4)) * 2);
					
					if(tempX > 13){
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
	var targets = { table: [], sphere: [], helix: [], grid: [] };

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
	
/* 	        var number = document.createElement( 'div' );                                                   // 'div'요소를 element에 추가
	        number.className = 'number';                                                                    // 'div'에 class이름을 number로 잡음.
	        number.textContent = i + 1;                                                                 // 한개원소에 들어간 정보의 갯수만큼 나눠준 뒤에 + 1을 하여 원소에 번호를 붙여줌.
	        element.appendChild( number ); */
	
	        var symbol = document.createElement( 'div' );
	        symbol.className = 'symbol';
	        symbol.textContent = tableData[i].title
	        element.appendChild( symbol ); 
	        // 각 원소별 축약어 띄어주기
			// "H", "<a href = http://www.naver.com><img src = resources/ko.jpg width='100' height='100'></a>", "1.00794", 1, 1,
	        
			var details = document.createElement( 'div' );
           	details.className = 'details';
           	details.innerHTML = '<img src = resources/dogam/'+ tableData[ i ].contfile +' weidth = "400" height = "300"></div>';
           	element.appendChild( details );
	        // 각 원소별 풀네임 + 방사능번호 하단 두줄 밀어넣어주기
	
	        
	        var object = new THREE.CSS3DObject( element );
	        object.position.x = Math.random() * 4000 - 2000;
	        object.position.y = Math.random() * 4000 - 2000;
	        object.position.z = Math.random() * 4000 - 2000;
	        scene.add( object );
	
	        objects.push( object );
	        
	        var object = new THREE.Object3D();
	        object.position.x = ( tableData[i].x * 140 ) - 1200;
	        object.position.y = - ( tableData[i].y* 180 ) + 1150;	
	        targets.table.push( object );
	
	    }
	
	    // sphere
	
	    var vector = new THREE.Vector3();
	    var length = 12;
	    
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
	
	    // helix	
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
	
	    }
	
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
	
	    var button = document.getElementById( 'helix' );
	    button.addEventListener( 'click', function ( event ) {
	
	        transform( targets.helix, 2000 );
	
	    }, false );
	
	    var button = document.getElementById( 'grid' );
	    button.addEventListener( 'click', function ( event ) {
	
	        transform( targets.grid, 2000 );
	
	    }, false );
	
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
	
	    new TWEEN.Tween( this )
	            .to( {}, duration * 2 )
	            .onUpdate( render )
	            .start();
	
	}
	
	function onWindowResize() {
	
	    camera.aspect = window.innerWidth / window.innerHeight;
	    camera.updateProjectionMatrix();
	
	    renderer.setSize( window.innerWidth, window.innerHeight );
	
	    render();
	
	}
	
	function animate() {
	
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
		var i = 0;
		var xStart = 4;
		var yStart = 3;	
		
		$.ajax({
			url: "/list?page=" + page,
			dataType:"json",
			async:false,
			success:function(data){
				for(var i= 0, len = data.length; i < len ; i++){
					
					var tempX = xStart + ((i % 4) * 3);
					var tempY = yStart + ((Math.floor(i / 4)) * 2);
					
					if(tempX > 13){
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
	         content1 += "<div><img src = resources/dogam/prevPage.jpg onclick='prevPage();'/>"+ "</div>";
	         content2 += "<div><img src = resources/dogam/nextPage.jpg onclick='nextPage();'/>"+ "</div>";
	         target1.html(content1);
	         target2.html(content2);
	         return;
	      }
	      
	      else if(page == 1){
	         console.log("------in First Page-------------");
	         content1 += "<div style='display:none'><img src = resources/prevPage.jpg onclick='prevPage();'/>"+ "</div>";
	         content2 += "<div><img src = resources/dogam/nextPage.jpg onclick='nextPage();'>" +  "</button>"+"</div>";
	         target1.html(content1);
	         target2.html(content2);   
	         return;
	      }
	      
	      else if( page == cnt){
	         console.log("------in Last Page-------------");
	        /*  var obj = document.getElementsByClassName("nextPage");
	         while(obj.length>0){
	               obj[0].parentNode.removeChild(obj[0]);
	            } */
	         content2 += "<div style='display:none'><button onclick='nextPage();'>" + "</button>"+"</div>";
	         target2.html(content2);   
	         content1 += "<div><img src = resources/dogam/prevPalllge.jpg onclick='prevPage();'/>"+ "</div>";
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