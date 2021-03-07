function ajax() {
    console.log("fez");
        $.get("ajax.php", function (data) {
            data = JSON.parse(data);
            console.log(data);
            var img = new Image();
            img.src = data["kanji"]["video"]["poster"];
            $("#poster").append(img);

            $.post("upload.php",
            {
                name: "images/"+data["kanji"]["kunyomi"]["romaji"]+" "+data["kanji"]["onyomi"]["romaji"],
                file: data["kanji"]["video"]["poster"]
            });
        })
}

function updateKanji(id, flag){
    $.get("ajaxUpdate.php?id="+id+"&flag="+flag, function (){
        window.location.replace("review.php");
    });
}

function changeColorGlyphiconOk(){
    $("#boutonOk").toggleClass("btn-default btn-success");
    $("#glyphiconBoutonOk").toggleClass("glyphiconOk");
}

function changeColorGlyphiconLater(){
    $("#boutonLater").toggleClass("btn-default btn-danger");
    $("#glyphiconBoutonLater").toggleClass("glyphiconLater");
}

function changeColorGlyphiconChevronLeft(){
    $("#boutonChevronLeft").toggleClass("btn-default btn-primary");
    $("#glyphiconBoutonLater").toggleClass("glyphiconChevron");
}

function changeColorGlyphiconChevronRight(){
    $("#boutonChevronRight").toggleClass("btn-default btn-primary");
    $("#glyphiconBoutonOk").toggleClass("glyphiconChevron");
}

function setVisibilityTestMeaning(){
    $(".toHideTestMeaning").toggleClass("setVisibility");
}

function setVisibilityTestKanji(){
    $(".toHideTestKanji").toggleClass("setVisibility");
}

function toggleNightMode(){
    if(localStorage.getItem('nightMode') == "true")
        localStorage.setItem('nightMode', "false");
    else
        localStorage.setItem('nightMode', "true");
    document.body.classList.toggle('nightMode');
}

function redirectKanji(id){
    setVisibilityTestKanji();
    $.get("ajaxUpdate.php?id="+id+"&flag2=false", function (){
        window.location.href = "test.php?test=2";
    });
}

function redirectMeaning(id){
    setVisibilityTestMeaning();
    $.get("ajaxUpdate.php?id="+id+"&flag2=true", function (){
        window.location.href = "test.php?test=1";
    });
}

function redirectSentenceNoAjax(id){
    $.get("ajaxSentenceUpdate.php?id="+id+"&fallback=true", function (){
        window.location.href = "sentenceTest.php";
    });
}

function redirectSentence(id){
    $.get("ajaxSentenceUpdate.php?id="+id, function (){
        window.location.href = "sentenceTest.php";
    });
}

function redirectKanjiNoAjax(id){
	//setVisibilityTestKanji();
    $.get("ajaxUpdate.php?id="+id+"&fallback=true&flag2=false", function (){
        window.location.href = "test.php?test=2";
    });
}

function redirectWordKanji(id){
    $.get("ajaxWordUpdate.php?id="+id+"&flag2=false", function (){
        window.location.href = "vocabularyTest.php?test=2&word=1";
    });
}

function redirectWordMeaning(id){
    $.get("ajaxWordUpdate.php?id="+id+"&flag2=true", function (){
        window.location.href = "vocabularyTest.php?test=1&word=1";
    });
}

function redirectMeaningNoAjax(id){
    //setVisibilityTestMeaning();
    $.get("ajaxUpdate.php?id="+id+"&fallback=true&flag2=true", function (){
        window.location.href = "test.php?test=1";
    });
}

function redirectWordKanjiNoAjax(id){
    $.get("ajaxWordUpdate.php?id="+id+"&fallback=true&flag2=false", function (){
        window.location.href = "vocabularyTest.php?test=2&word=1";
    });
}

function redirectWordMeaningNoAjax(id){
    $.get("ajaxWordUpdate.php?id="+id+"&fallback=true&flag2=true", function (){
        window.location.href = "vocabularyTest.php?test=1&word=1";
    });
}

function discard(id){
    $.get("ajaxUpdate.php?id="+id+"&discard=true", function (){
        location.reload();
    });
}

function ajaxJisho() {
    text = $("#inputText").val();
    console.log("URI : "+text);

	$.post("http://localhost/kanji/ajaxJisho.php",
	{
        word: text
	},
	function(data){
			data = JSON.parse(data);
            console.log("data : "+data);
            $("#output").val(data["data"]["0"]["japanese"]["0"]["word"]);
			if(!(typeof data["kanji"] != "undefined")){
                browser.tabs.executeScript({
                        file: "alert.js"
                    });
            }
		$.post("http://localhost/kanji/upload.php",
            {
                name: data["kanji"]["meaning"]["english"]+" "+data["kanji"]["kunyomi"]["romaji"]+" "+data["kanji"]["onyomi"]["romaji"],
                file: data["kanji"]["video"]["poster"],
                kunyomi: data["kanji"]["kunyomi"]["hiragana"],
                onyomi: data["kanji"]["onyomi"]["katakana"],
                meaning: data["kanji"]["meaning"]["english"],
                linkKanjiAlive: "https://app.kanjialive.com/"+data["kanji"]["character"],
                char: data["kanji"]["character"],
                radicalChar: data["radical"]["character"],
                radicalImage: data["radical"]["image"],
                radicalName: data["radical"]["name"]["romaji"],
                radicalHiragana: data["radical"]["name"]["hiragana"],
                radicalMeaning: data["radical"]["meaning"]["english"],
                strokes: data["kanji"]["strokes"]["count"]
            },
        function(returnValue){
            console.log(returnValue);
            if(returnValue == "false"){
                browser.tabs.executeScript({
                        file: "alert_present.js"
                    });
            }
            else{
                browser.tabs.executeScript({
                        file: "alert_succeed.js"
                    });
            }
        })
         .fail(function() {
                    browser.tabs.executeScript({
                        file: "alert_intern.js"
                    });});
		})
        .fail(function() {
                    browser.tabs.executeScript({
                        file: "alert_intern.js"
                    });});
}
