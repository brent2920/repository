<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    
<h1>append / prepend</h1>

<c:forEach var="i" begin="1" end="5">
	<button id="bt_${i }">${i }번 버튼</button>
</c:forEach>
<div id="result"></div>

<script>
	$("#bt_1").click(function() {
		// $("#result").html($("#result").html() + ???);
		$("#result").append("<b>Append!!</b><br/>");
	});

	$("#bt_2").click(function() {
		// $("#result").html(??? + $("#result").html());
		$("#result").prepend("<b>Prepend!!</b><br/>");
	});

	$("#bt_3").click(function() {
		$("#result").html("<b>HTML!!</b><br/>");
	});
	
	$("#bt_4").click(function() {
		$("#result").css("color", "white");
	});
	
	$("#bt_5").click(function() {
		$("#result").css({
			"font-size": 30, 
			"text-align" : "center", 
			"background" : "black"
			});
		}
	});
</script>