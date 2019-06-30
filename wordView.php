<?php
include_once("header.html");
?>
<body>

        <div class="form-group">
        <div class="input-group">
            <div class="input-group-addon">Word</div>
        <textarea onkeyup="ajaxJisho()" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" type="text" rows="1" class="form-control" id="inputText" name="word"></textarea>
        </div>

        <textarea id="output">
</textarea>


</body>
</html>
