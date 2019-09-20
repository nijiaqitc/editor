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

	<input type="text" name = "abc" >
	
	<script src="js/core.js" type="text/javascript"></script>
	<script src="js/fff/enc-base64.js" type="text/javascript"></script>
	<script src="js/cipher-core.js" type="text/javascript"></script>
	<script src="js/fff/aes.js" type="text/javascript"></script>
	
	<script type="text/javascript">
		const key = CryptoJS.enc.Utf8.parse("1234123412ABCDEF");  //十六位十六进制数作为密钥
	    const iv = CryptoJS.enc.Utf8.parse('ABCDEF1234123412');   //十六位十六进制数作为密钥偏移量
	    
	    //解密方法
	    function Decrypt(word) {
	        let encryptedHexStr = CryptoJS.enc.Hex.parse(word);
	        let srcs = CryptoJS.enc.Base64.stringify(encryptedHexStr);
	        let decrypt = CryptoJS.AES.decrypt(srcs, key, { iv: iv, mode: CryptoJS.mode.CBC, padding: CryptoJS.pad.Pkcs7 });
	        let decryptedStr = decrypt.toString(CryptoJS.enc.Utf8);
	        return decryptedStr.toString();
	    }
	    
	    //加密方法
	    function Encrypt(word) {
	        let srcs = CryptoJS.enc.Utf8.parse(word);
	        let encrypted = CryptoJS.AES.encrypt(srcs, key, { iv: iv, mode: CryptoJS.mode.CBC, padding: CryptoJS.pad.Pkcs7 });
	        return encrypted.ciphertext.toString().toUpperCase();
	    }
	    
	    
	    
	</script>
	
	
</body>
</html>