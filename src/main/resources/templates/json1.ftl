<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="js在线格式化工具,js在线解压缩工具" />
<meta name="Description" content="提供javascript的在线格式化和在线解压缩功能" />
<link href="/pages/_common/top.css" rel="stylesheet" type="text/css" />
<title>Javascript在线解压缩/格式化工具——Online javascript beautifier - 志文工作室</title>
<script type="text/javascript">


</script>
<script type="text/javascript" src="js/beautify.js" ></script>
<script type="text/javascript" src="js/beautify-html.js" ></script>
<script type="text/javascript" src="js/javascriptobfuscator_unpacker.js" ></script>
<script type="text/javascript" src="js/bookmarklet_unpacker.js" ></script>
<script type="text/javascript" src="js/p_a_c_k_e_r_unpacker.js" ></script>

<style type="text/css">
/* I guess I need a CSS beautifer as well */
* { 
    margin: 0;
    padding: 0;
}
div#wrap {
    padding: 0 15px;
}

form { 
    margin: 0 0 20px 0;
}
textarea { 
    width: 100%; 
    height: 420px; 
    border: 0;
}
h1 { 
    font-family: "微软雅黑", fixedsys, arial, sans-serif; 
    font-weight: normal; 
    font-size: 28px;
    color: #666; 
    margin: 10px 10px 15px 10px;
}
a {
    color: #36d;
}
select { 
    width: 190px;
}
button { 
    width: 100%; 
    padding: 3px 5px;
    cursor: pointer;
    bordeR: 1px solid #ccc;
    border-bottom: 1px solid #999;
    border-right: 1px solid #999;
    margin-top: 2px;
    background-color: #eee;
}
body {
    font: 14px "微软雅黑", fixedsys, verdana, arial, helvetica, sans-serif; 
}
body, label, button, select { 
    font-family: "微软雅黑", fixedsys, verdana, arial, helvetica, sans-serif; 
}
textarea, pre, span.code { 
    font-family:fixedsys, "微软雅黑", verdana, arial, helvetica, sans-serif; 
}
div#bottom { 
    color: #333;
}
h2 {
    color: #555;
    margin: 18px 0 4px 0;
    font-size: 14px;
}
p { 
    line-height: 150%;
}
div#footer {
    margin: 20px 0 0 0;
    font-size: 12px;
    border-top: 1px solid #ddd;
    padding-top: 16px;
}
label {
    cursor: pointer;
}
fieldset {
    border: 0;
    padding: 0;
}
fieldset#textarea div {
    border: 1px solid #ccc;
    padding: 3px;
}
fieldset#options {
    width: 200px;
    margin-left: 10px;
    float: right;
}
fieldset#options h2 {
    margin-top: 0;
}
fieldset ul {
    list-style: none;
}
fieldset li {
    margin-bottom: 6px;
}
fieldset#textarea {
    text-align: right;
    
}
pre {
    margin: 10px 0;
}

</style>
</head>
<body>

<div class="domain">
	<div id="wrap">
	  <form method="post" action="?">
		  <fieldset id="options">
			  <h2>设置选项</h2>
			  <ul>
			  <li><select name="tabsize" id="tabsize">
				<option value="1">缩进一个制表符</option>
				<option value="2">缩进2个空格</option>
				<option value="3">缩进3个空格</option>
				<option value="4" selected="selected">缩进4个空格</option>
				<option value="8">缩进8个空格</option>
			  </select></li>
			  <li><input type="checkbox" id="braces-on-own-line" /><label for="braces-on-own-line">花括号独占一行</label><br /></li>
			  <li><input type="checkbox" id="preserve-newlines" checked="checked" /><label for="preserve-newlines">保留空行</label><br /></li>
			  <li><input type="checkbox" id="detect-packers" checked="checked" /><label for="detect-packers">检查是否压缩</label><br /></li>
			  <li><input type="checkbox" id="keep-array-indentation" /><label for="keep-array-indentation">保留数组的压缩</label></li>
			  </ul>
		  </fieldset>
		  <fieldset id="textarea">
		  <div><textarea rows="30" cols="30" name="content" id="content">/*  把你的代码粘贴到此处 并点击“开始格式化”按钮   */
	if('this_is'==/an_example/){do_something();}else{var a=b?(c%d):e[f];}
		  </textarea></div>
		  <button onclick="return do_js_beautify()" id="beautify">开始格式化/解压缩</button>
	</fieldset>
	  </form>
	</div>
</div>

<script type="text/javascript"> 
function do_js_beautify() {
    document.getElementById('beautify').disabled = true;
    var js_source = document.getElementById('content').value.replace(/^\s+/, '');
    var indent_size = document.getElementById('tabsize').value;
    var indent_char = ' ';
    var preserve_newlines = document.getElementById('preserve-newlines').checked;
    var keep_array_indentation = document.getElementById('keep-array-indentation').checked;
    var braces_on_own_line = document.getElementById('braces-on-own-line').checked;
    if (indent_size == 1) {
        indent_char = '\t';
    }
    if (js_source && js_source[0] === '<' && js_source.substring(0, 4) !== '<!--') {
        document.getElementById('content').value = style_html(js_source, indent_size, indent_char, 80);
    } else {
        document.getElementById('content').value =
        js_beautify(unpacker_filter(js_source), {
            indent_size: indent_size,
            indent_char: indent_char,
            preserve_newlines: preserve_newlines,
            braces_on_own_line: braces_on_own_line,
            keep_array_indentation: keep_array_indentation,
            space_after_anon_function: true,
            indent_level:0
        });
    }
    document.getElementById('beautify').disabled = false;
    return false;
}
function unpacker_filter(source) {
    if (document.getElementById('detect-packers').checked) {
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