<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            Testing websockets
        </title>
        <script src="js/jquery-3.4.1.min.js" type="text/javascript">
        </script>
        <script src="js/core.js" type="text/javascript">
        </script>
        <script src="js/fff/md5.js" type="text/javascript">
        </script>
        <script src="js/fff/enc-utf16.js" type="text/javascript">
        </script>
        <script src="js/fff/enc-base64.js" type="text/javascript">
        </script>
        <script src="js/fff/evpkdf.js" type="text/javascript">
        </script>
        <script src="js/cipher-core.js" type="text/javascript">
        </script>
        <script src="js/fff/aes.js" type="text/javascript">
        </script>
        <script src="js/fff/tripledes.js" type="text/javascript">
        </script>
        <script src="js/fff/mode-ecb.js" type="text/javascript">
        </script>
        <script type="text/javascript">
            var key = 'yh_game@des';
            //CBC模式加密


            function encryptByDESModeCBC(message) {
                var keyHex = CryptoJS.enc.Utf8.parse(key);
                var ivHex = CryptoJS.enc.Utf8.parse(key);
                encrypted = CryptoJS.DES.encrypt(message, keyHex, {
                    iv: ivHex,
                    mode: CryptoJS.mode.CBC,
                    padding: CryptoJS.pad.Pkcs7
                });
                return encrypted.ciphertext.toString();
            }
            //CBC模式解密


            function decryptByDESModeCBC(ciphertext2) {
                var keyHex = CryptoJS.enc.Utf8.parse(key);
                var ivHex = CryptoJS.enc.Utf8.parse(key);
                // direct decrypt ciphertext
                var decrypted = CryptoJS.DES.decrypt({
                    ciphertext: CryptoJS.enc.Hex.parse(ciphertext2)
                }, keyHex, {
                    iv: ivHex,
                    mode: CryptoJS.mode.CBC,
                    padding: CryptoJS.pad.Pkcs7
                });
                return decrypted.toString(CryptoJS.enc.Utf8);
            }
            //DES ECB模式加密


            function encryptByDESModeEBC(message) {
                var keyHex = CryptoJS.enc.Utf8.parse(key);
                var encrypted = CryptoJS.DES.encrypt(message, keyHex, {
                    mode: CryptoJS.mode.ECB,
                    padding: CryptoJS.pad.Pkcs7
                });
                return encrypted.ciphertext.toString();
            }
            //DES ECB模式解密


            function decryptByDESModeEBC(ciphertext) {
                var keyHex = CryptoJS.enc.Utf8.parse(key);
                var decrypted = CryptoJS.DES.decrypt({
                    ciphertext: CryptoJS.enc.Base64.parse(ciphertext)
                }, keyHex, {
                    mode: CryptoJS.mode.ECB,
                    padding: CryptoJS.pad.Pkcs7
                });
                var result_value = decrypted.toString(CryptoJS.enc.Utf8);
                return result_value;
            }

            function test() {
                var source = $("#source").val();
                //var cc = encryptByDESModeEBC(CryptoJS.enc.Utf8.parse(source));
                var cc = encryptByDESModeEBC(source);
                $("#target").val(cc);
            }

            function test1() {
                var source = $("#sourceS").val();
                var dd = decryptByDESModeEBC(source);
                $("#jiemi").val(dd);
            }
        </script>
    </head>
    
    <body>
        <div>
            加密前：
            <textarea id="source" value="" style="width:500px;height:90px;" />
            </textarea>
            <hr>
            加密后：
            <textarea id="target" value="" style="width:500px;height:90px;">
            </textarea>
            <hr>
            <input type="button" onclick="test();" name="" value="加密" />
            <hr>
            密文：
            <textarea id="sourceS" value="" width="400px" style="width:500px;height:90px;">
            </textarea>
            <hr>
            解密后：
            <textarea id="jiemi" value="" style="width:500px;height:90px;">
            </textarea>
            <hr>
            <input type="button" onclick="test1();" name="" value="解密" />
        </div>
    </body>

</html>