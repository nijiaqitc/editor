<html>
<head>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<style>
.active{
    background-color: aliceblue;
}

</style>
</head>
<body>
	<div style="float:left;width:20%;height:100%;">
		<div class="panel panel-default" style="height:100%;margin-bottom: 0px;">
		  <div class="panel-body" >
		    <nav class="navbar  navbar-fixed-top" style="position: relative;" id="sidebar-wrapper" role="navigation">
			  <ul class="nav sidebar-nav">
			    <li class="active"> <a href="/json"> JSON格式化 </a> </li>
			    <li> <a href="/css"> <i class="fa fa-fw fa-home"> </i> CSS格式化 </a> </li>
			    <li> <a href="/xml"> <i class="fa fa-fw fa-folder"> </i> XML格式化 </a> </li>
			    <li> <a href="/sql"> <i class="fa fa-fw fa-file-o"> </i> SQL格式化 </a> </li>
			  </ul>
			</nav>
		  </div>
		</div>
	</div>
	<div style="float:right;width:78%;height:100%;">
		<div class="panel panel-default" style="margin-bottom: 0px;">
		  <div class="panel-body" >
		  	<div style="height: 34px;">
			  	<div style="float:left;">
				    <button type="button" class="btn btn-danger" onclick="tscode()">调试</button>
			  	</div>
		  	</div>
		    
		    <hr style="margin-top: 8px;margin-bottom: 8px;">
		    <div style="float:left;width:50%;border-right:1px solid #ddd;">
			    <textarea style="width:100%;height:92%;border: 0;outline:none;" id="text1"><html>
    <head>
        <title>html调试</title>
    </head>
    <body>
	    <p>html调试</p>
	    <hr />
	    <p>html调试</p>
	    <hr />
	    <p>html调试</p>
	    <hr />
    </body>
</html></textarea>
		    </div>
		    <div style="float:left;width:50%;">
		    	<iframe style="width:100%;height:92%;border: 0;outline:none;" id="text2"></iframe>
		    </div>
		  </div>
		</div>
	</div>
	

	<script src="js/jquery-3.4.1.min.js" type="text/javascript"></script>
    <script src="js/jsonDecode.js" type="text/javascript"></script>
    <script src="js/vkbeautify.js" type="text/javascript"></script>
	<script type="text/javascript">
		function tscode(){
			var html=document.createElement("html");
			html.innerHTML=$("#text1").val();
			$("#text2")[0].contentDocument.documentElement.innerHTML=html.innerHTML;
		}
		tscode();
    	
	</script>
	
	
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>