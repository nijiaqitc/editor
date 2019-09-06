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
				    <button type="button" class="btn btn-danger" onclick="decode1()">格式化</button>
				    <button type="button" class="btn btn-danger" onclick="mincode()">压缩</button>
			  	</div>
			    <div style="float:right;">
				    <span class="label label-primary" style="padding: 10px 4px;font-size: 12px;">填充空格：</span>
				    <select style="width: 54px;height: 34px;border-radius: 4px;" id="spnum">
						<option value="2">2</option>
						<option selected value="4">4</option>
						<option value="6">6</option>
						<option value="8">8</option>
						<option value="10">10</option>
					</select>
			    </div>
		  	</div>
		    
		    <hr style="margin-top: 8px;margin-bottom: 8px;">
		    <textarea style="width:100%;height:92%;border: 0;outline:none;" id="text1">SELECT ca.proj_id AS proj_id, ca.ca_name AS proj_name, ca.ca_date_start AS proj_start, ca.ca_date_end AS proj_end,(SELECT COUNT(*) FROM rotations r WHERE r.proj_id = proj_id AND r.r_status = 'R' GROUP BY r.proj_id) r_count, (SELECT count(*) FROM rotations r WHERE r.proj_id = proj_id AND r.channel_id = 24 ) r_rtb_count FROM projs ca, clients c, proj_auth caa WHERE ca.client_id = 12345 AND ca.client_id = c.client_id AND ca_type = 'zzz' AND c.agency_id = 0 AND ca.client_id = NVL( caa.client_id, ca.client_id ) AND proj_id = NVL( caa.proj_id, proj_id ) AND caa.contact_id = 7890</textarea>
		  </div>
		</div>
	</div>
	

	<script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/vkbeautify.js" type="text/javascript"></script>
	<script type="text/javascript">
    	function decode1(){
    		$("#text1").val(vkbeautify.sql($("#text1").val(),Number($("#spnum").val())));
    		
    	}
    	function mincode(){
    		$("#text1").val(vkbeautify.sqlmin($("#text1").val()));
    	}
    	
	</script>
	
	
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>