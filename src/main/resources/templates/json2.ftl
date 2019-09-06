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
<body style="background: url(js/bg.png)">
	<div style="float:left;width:20%;height:100%;">
		<div class="panel panel-default" style="height:100%;margin-bottom: 0px;">
		  <div class="panel-body" >
		    <nav class="navbar  navbar-fixed-top" style="position: relative;" id="sidebar-wrapper" role="navigation">
			  <ul class="nav sidebar-nav">
			    <li class="active"> <a href="/json"> <i class="fa fa-fw fa-file-o"> </i> JS格式化 </a> </li> 
			    <li> <a href="/json"> JSON格式化 </a> </li>
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
				    <button type="button" class="btn btn-danger" onclick="decode()">格式化</button>
			  	</div>
			    <div style="float:right;width: 460px;">
				    <span class="label label-primary" style="padding: 10px 4px;font-size: 12px;">填充空格：</span>
				    <select style="width: 54px;height: 34px;border-radius: 4px;" id="spnum">
						<option value="2">2</option>
						<option selected value="4">4</option>
						<option value="6">6</option>
						<option value="8">8</option>
						<option value="10">10</option>
					</select>
					<span class="label" style="font-size: 12px;color: black;border: 1px solid #aaa;padding: 9px 4px;border-radius: 4px;margin-right:4px;">
						<input type="checkbox" id="braces-on-own-line" />花括号分行
					</span>
					<span class="label" style="font-size: 12px;color: black;border: 1px solid #aaa;padding: 9px 4px;border-radius: 4px;margin-right:4px;">
					  <input type="checkbox" id="preserve-newlines" checked="checked" /><label for="preserve-newlines">保留空行</label>
					</span>
					<span class="label" style="font-size: 12px;color: black;border: 1px solid #aaa;padding: 9px 4px;border-radius: 4px;margin-right:4px;">
					  <input type="checkbox" id="detect-packers" checked="checked" /><label for="detect-packers">压缩检查</label>
					</span>
					<span class="label" style="font-size: 12px;color: black;border: 1px solid #aaa;padding: 9px 4px;border-radius: 4px;margin-right:4px;">
					  <input type="checkbox" id="keep-array-indentation" /><label for="keep-array-indentation">数组切分</label>
					</span>
			    </div>
		  	</div>
		    <hr style="margin-top: 8px;margin-bottom: 8px;">
		    <textarea style="width:100%;height:92%;border: 0;outline:none;" id="text1">/*  把你的代码粘贴到此处 并点击“开始格式化”按钮   */
	if('this_is'==/an_example/){do_something();}else{var a=b?(c%d):e[f];}</textarea>
		  </div>
		</div>
	</div>
	

	<script src="js/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/beautify.js" ></script>
	<script type="text/javascript" src="js/beautify-html.js" ></script>
	<script type="text/javascript" src="js/javascriptobfuscator_unpacker.js" ></script>
	<script type="text/javascript" src="js/bookmarklet_unpacker.js" ></script>
	<script type="text/javascript" src="js/p_a_c_k_e_r_unpacker.js" ></script>
	<script type="text/javascript">
		function decode() {
		    var js_source = $("#text1").val().replace(/^\s+/, '');
		    var indent_size = $("#spnum").val();
		    var indent_char = ' ';
		    var preserve_newlines = $("#preserve-newlines").prop("checked");
		    var keep_array_indentation = $("#keep-array-indentation").prop("checked");
		    var braces_on_own_line = $("#braces-on-own-line").prop("checked");
		    if (indent_size == 1) {
		        indent_char = '\t';
		    }
		    if (js_source && js_source[0] === '<' && js_source.substring(0, 4) !== '<!--') {
		        $("#text1").val(style_html(js_source, indent_size, indent_char, 80));
		    } else {
		        $("#text1").val(js_beautify(unpacker_filter(js_source), {
		            indent_size: indent_size,
		            indent_char: indent_char,
		            preserve_newlines: preserve_newlines,
		            braces_on_own_line: braces_on_own_line,
		            keep_array_indentation: keep_array_indentation,
		            space_after_anon_function: true,
		            indent_level:0
		        }));
		    }
		    return false;
		}
		function unpacker_filter(source) {
		    if ($("#detect-packers").prop("checked")) {
		        var stripped_source = trim_leading_comments(source);
		        var unpacked = '';
		        if (P_A_C_K_E_R.detect(stripped_source)) {
		            unpacked = P_A_C_K_E_R.unpack(stripped_source);
		            if (unpacked !== stripped_source) {
		                return unpacker_filter(unpacked);
		            }
		        }
		        if (EscapedBookmarklet.detect(source)) {
		            unpacked = EscapedBookmarklet.unpack(source);
		            if (unpacked !== stripped_source) {
		                return unpacker_filter(unpacked);
		            }
		        }
		        if (JavascriptObfuscator.detect(stripped_source)) {
		            unpacked = JavascriptObfuscator.unpack(stripped_source);
		            if (unpacked !== stripped_source) {
		                return unpacker_filter(unpacked);
		            }
		        }
		    }
		    return source;
		}
		function trim_leading_comments(str) {
		    // very basic. doesn't support /* ... */
		    str = str.replace(/^(\s*\/\/[^\n]*\n)+/, '');
		    str = str.replace(/^\s+/, '');
		    return str;
		}
	</script>
	
</body>
</html>