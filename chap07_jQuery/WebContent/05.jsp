<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
    
<div align="center">
<h1>EVENT</h1>
<div id="eff">
	<h3>HELLO EVERYONE</h3><br/>
	jQuery is very compotable!! :]<br/><br/>
</div>

<button id="bt1">Alert</button>
<button id="bt2">Alert.this</button>
<button id="bt3">Trigger - Btn1</button>
<button id="bt4">Hide</button>
<button id="bt5">Show</button>
<button id="bt6">Fade Out</button>
<button id="bt7">Fade In</button>

<script>
	$("#bt1").click(function() {
		window.alert("Button1 Click!");
	});

	//on("이벤트명", function());
	$("#bt2").on("click", function() {
		window.alert("[" + $(this).html() + "]");
	});

	//trigger("이벤트명")는 특정 요소의 이벤트를 강제적으로 발생시킬 수 있다.
	$("#bt3").click(function() {
		$("#bt1").trigger("click");
	});
	
	$("#bt4").click(function() {
		//		window.alert("Button1 Click!");
		$("#eff").hide(1000);
	});
	
	$("#bt5").click(function() {
		//		window.alert("Button1 Click!");
		$("#eff").show(1000);
	});
	
	$("#bt6").click(function() {
		//		window.alert("Button1 Click!");
		$("#eff").fadeOut(1000);
	});
	
	$("#bt7").click(function() {
		//		window.alert("Button1 Click!");
		$("#eff").fadeIn(1000);
	});
	
	
</script>
<hr/>
input type="file" ← 이 녀석의 모양이 안 이쁨<br/>
그래서 이런 형태로 File 업로드용으로 자주 씀
<br/>
<br/>
<input type="file" style="display: none" id="f"/>
<button id="add" class="btn btn-danger">Add File</button>&nbsp&nbsp<span id="fname"></span>
<script>
	$("#add").on("click", function() {
		$("#f").trigger("click");
	});
	
	$("#f").on("change", function() {
		window.alert($("#f").val());
		$("#fname").html($("#f").val());
	});
</script><br/>
<hr/>

자주 처리하는 이벤트는 keyup, click, change, blur, focus

</div>