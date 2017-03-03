<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

value = <input type="text" id="t" value="Something"/><hr/>
html = <textarea rows="3" cols="45" id="ta">미리 작성..</textarea>

<button id="bt">버튼</button>

<script>
	$("#bt").click(function() {
		console.log($("#t").val());
		console.log($("#ta").val());
		
		console.log($("#t").attr("value"));
		console.log($("#ta").html("바뀐 내용.."));
	});
</script>