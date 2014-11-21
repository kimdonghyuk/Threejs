<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
<title> Team HanZanHae!</title>
<style>
html, body {
	height: 100%;
}

body {
	background-image: url(resources/background.jpg);
	background-size: cover;
	margin: 0;
	font-family: Helvetica, sans-serif;;
	overflow: hidden;
}

a {
	color: #ffffff;
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
	position: absolute;
	bottom: 20px;
	width: 100%;
	text-align: center;
}

.movePage{
	position: absolute;
	bottom: 50%;
	right : 18%;
	width: 50px;
	text-align: right;
	opacity:0.2;

}

.element {
	width: 200px;
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
	bottom: 15px;
	font-size: 40px;
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

button:active {
	color: #000000;
	background-color: rgba(0, 0, 255, 0.5);
}
</style>
</head>
<body>
	<script src="resources/three.min.js"></script>
	<script src="resources/tween.min.js"></script>
	<script src="resources/TrackballControls.js"></script>
	<script src="resources/CSS3DRenderer.js"></script>

	<div id="container"></div>
	<div id="info">
		<h2><a href="http://www.naver.com" target="_blank">Team Project 한잔해</a></h2>
	</div>
	<div id="menu">
		<button id="table">TABLE</button>
		<button id="sphere">SPHERE</button>
		<button id="helix">HELIX</button>
		<button id="grid">GRID</button>
	</div>
	
	<div class="movePage">
	
	</div>
	


<!-- 스크립트문 시작........................................................................................................... -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
 
/* make Table...............................................................................................................  */
	var tableData = [];
	var page = 1;

	
	console.log("page : " + page);
	
	(function makeTable(){
		var locationList = makeLocation();
		var i = 0; 
		
		var xStart = 5;
		var yStart = 3;
		var len = 5;
		
		makeBtn();
		
		
		$.ajax({
			url: "/web/list?page=" + page,
			dataType:"json",
			async:false,
			success:function(data){
				for(var i= 0, len = data.length; i < len ; i++){
					
					var tempX = xStart + ((i % 5) * 2);
					var tempY = yStart + ((Math.floor(i / 5)) * 2);
					
					if(tempX > 13){
						tempX -= 10;						
					}
					data[i].x = tempX;
					data[i].y = tempY;					
				}
				tableData = data;					
			}});
	})();
	
	
	function makeLocation(){
		var x = 5;
		var y = 3;
		var list = [];
		for(y = 3 ; y < 13; y = y+2){
			for(x = 5; x < 15; x = x+2){
				list.push(x,y);
			}			
		}
		return list;			
	}
	
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
	        
			var details = document.createElement( 'a' );
           details.className = 'details';
           details.innerHTML = '<img src = resources/'+ tableData[ i ].contfile +' weidth = "180" height = "170"></a>';
           element.appendChild( details );
	        // 각 원소별 풀네임 + 방사능번호 하단 두줄 밀어넣어주기
	
	        
	        var object = new THREE.CSS3DObject( element );
	        object.position.x = Math.random() * 4000 - 2000;
	        object.position.y = Math.random() * 4000 - 2000;
	        object.position.z = Math.random() * 4000 - 2000;
	        scene.add( object );
	
	        objects.push( object );
	
	        //
	
	        var object = new THREE.Object3D();
	        object.position.x = ( tableData[i].x * 140 ) - 1330;
	        object.position.y = - ( tableData[i].y* 180 ) + 1250;
	
	        targets.table.push( object );
	
	    }
	
	    // sphere
	
	    var vector = new THREE.Vector3();
	
	    for ( var i = 0, l = objects.length; i < l; i ++ ) {
	
	        var phi = Math.acos( -1 + ( 2 * i ) / l );
	        var theta = Math.sqrt( l * Math.PI ) * phi;
		        
	        var object = new THREE.Object3D();
	
	        object.position.x = 800 * Math.cos( theta ) * Math.sin( phi );
	        object.position.y = 800 * Math.sin( theta ) * Math.sin( phi );
	        object.position.z = 800 * Math.cos( phi );
	        
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
	    document.getElementById( 'container' ).appendChild( renderer.domElement );
	
	    
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
		console.log(obj);
		var locationList = makeLocation();
		var i = 0;
		makeBtn();
		var xStart = 5;
		var yStart = 3;
		var len = 5;
		
		$.ajax({
			url: "/web/list?page=" + page,
			dataType:"json",
			async:false,
			success:function(data){
				for(var i= 0, len = data.length; i < len ; i++){
					
					var tempX = xStart + ((i % 5) * 2);
					var tempY = yStart + ((Math.floor(i / 5)) * 2);
					
					if(tempX > 13){
						tempX -= 10;}
					data[i].x = tempX;
					data[i].y = tempY;					
				}
				tableData = data;							
			}});
	}
	
	function makeBtn(){
		var target = $(".movePage")
		var content = "";
		if(page>1){
			if(page == tableData[0].cnt){
				content += "<div><button onclick='prevPage();' >"+ " < " + "</button>"+"</div>";
				target.html(content);
				return;
			}
			content += "<div><button onclick='prevPage();' >"+ " < " + "</button>"+"</div>"
						+ "<div><button onclick='nextPage();'>"+ " > " + "</button>"+"</div>";
			target.html(content);
		}
		else if(page = 1){
			content += "<div><button onclick='nextPage();'>" + " > " + "</button>"+"</div>";
			console.log(content);
			target.html(content);
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

