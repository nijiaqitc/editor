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
	<!--
	<div style="float:right;width:78%;height:100%;">
		<div class="panel panel-default" style="margin-bottom: 0px;">
		  <div class="panel-body" >
		    <button type="button" class="btn btn-danger" onclick="decode()">格式化</button>
		    <input type="checkbox" aria-label="...">
		    <hr style="margin-top: 8px;margin-bottom: 8px;">
		    <textarea style="width:100%;height:92%;border: 0;outline:none;" id="text1">{"menu":{"id": "file","value": [1,2,3],"popup":{"menuitem":[{"value":["one","two"],"onclick":"CreateNewDoc()"},{"value":"Close","onclick":"CloseDoc()"}]}}}</textarea>
		  </div>
		</div>
	</div>
	-->
	<div style="float:right;width:78%;height:100%;">
		<div class="panel panel-default" style="margin-bottom: 0px;">
		  <div class="panel-body" >
		  	<div style="height: 34px;">
			  	<div style="float:left;">
				    <button type="button" class="btn btn-danger" onclick="jiami()">加密</button>
			  	</div>
		  	</div>
		    <hr style="margin-top: 8px;margin-bottom: 8px;">
		    <textarea style="width:100%;height:20%;border: 0;outline:none;border-bottom: 1px solid #ddd;"  placeholder="输入待加密内容"  id="area1">{"menu":{"id": "file","value": [1,2,3],"popup":{"menuitem":[{"value":["one","two"],"onclick":"CreateNewDoc()"},{"value":"Close","onclick":"CloseDoc()"}]}}}</textarea>
		    <textarea style="width:100%;height:68%;border: 0;outline:none;margin-top: 24px;" id="area2"  placeholder="加密后内容展示区域" ></textarea>
		  </div>
		</div>
	</div>
	

	<script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/md5.js" type="text/javascript"></script>
	<script type="text/javascript">
		function jiami(){
    		var md=MD5($("#area1").val());
    		$("#area2").val(md);
    	}
    	
	</script>
	
	
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>