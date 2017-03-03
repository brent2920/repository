<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    
<h1>DOM 제어</h1>
<h2>- HTML(), val()</h2>
<span id="span">text</span> : <input type="text" id="t"/>
<button id="html">html()</button>&nbsp&nbsp<button id="val">val()</button>
<script>
	$("#html").click(function() {
		window.alert($("#span").html());
		$("#span").html("텍스트");
	});
	
	$("#val").click(function() {
		window.alert($("#t").val());
		$("#t").val("");
	});
</script>
<hr/>


<h2>- attr, prop</h2>
<!-- attribute와 property의 미세한 차이를 파악할 수 있어야.. -->
<textarea rows="3" cols="30" id="sample"></textarea>
<br/>
<button id="attr">attr</button>&nbsp&nbsp<button id="prop">prop</button>
<script>
	$("#attr").click(function() {
		var r = $("#sample").attr("rows");
		console.log($("#sample").attr("id"));
		$("#sample").attr("cols", 50);
		colsole.log(r);
		console.log($("#sample").attr("disabled"));
	});
	
	// 껏다 켰다하는 제어를 해야하는 경우는 prop제어를 사용하면 된다.
	// true, false로 나옴
	$("#prop").click(function() {
		var r = $("#sample").prop("rows");
		console.log($("#sample").prop("disabled"));
		$("#sample").prop("disabled", false);
	});
</script>