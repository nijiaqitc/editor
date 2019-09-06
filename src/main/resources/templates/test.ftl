<html>
<head>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="js/sidebar.css" />
<link rel="stylesheet" type="text/css" href="js/normalize.css" />
<style>
.active{
    background-color: aliceblue;
}

* {
	margin:0;
	padding:0;
}
.leftNav {
	width:200px;
	border-left:1px solid #666;
	border-right:1px solid #666;
}
.nav1 li {
	line-height:50px;
}
.nav1>li {
	width:100%;
	height:50px;
	border-bottom:1px solid #666;
	text-align:center;
	cursor:pointer;
	background-color:peru;
	color:white;
}
.nav2 {
	display:none;
}
.nav2 li {
	width:100%;
	height:50px;
	border-bottom:1px solid #666;
	text-align:center;
	cursor:pointer;
}

</style>
</head>
<body>

	<div class="leftNav">
	    <ul class="nav1">
	        <li>nav1</li>
	        <ul class="nav2">
	            <li>nav11</li>
	            <li>nav12</li>
	        </ul>
	        <li>nav2</li>
	        <ul class="nav2">
	            <li>nav21</li>
	            <li>nav22</li>
	        </ul>
	        <li>nav3</li>
	        <ul class="nav2">
	            <li>nav31</li>
	            <li>nav32</li>
	        </ul>
	        <li>nav4</li>
	        <ul class="nav2">
	            <li>nav41</li>
	            <li>nav42</li>
	        </ul>
	        <li>nav5</li>
	        <ul class="nav2">
	            <li>nav51</li>
	            <li>nav52</li>
	        </ul>
	    </ul>
	</div>



	<nav id="menu" class="menu">
		<button class="menu__handle" onclick="change()"><span>Menu</span></button>
		<div class="menu__inner">
			<ul>
				<li><a href="#"><span ><p align=center ><font size='5'>111<span></font></p></a></li>
		
				
				
			</ul>
		</div>
		
	</nav>
	<script src="js/jquery-3.4.1.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		var openFlag =false;
		function change(){
			if(!openFlag){
				$("#menu").addClass("menu--open");
				openFlag =true;
			}else{
				$("#menu").removeClass("menu--open");
				openFlag =false;
			}
			
		}
		
		
		$(".nav1>li").click(function() {
		    if (!$(this).next().is(":hidden")) {
		        return;
		    }
		    $(this).siblings(".nav2").slideUp();
		    $(this).next().slideDown();
		})
	</script>
	
	
</body>
</html>