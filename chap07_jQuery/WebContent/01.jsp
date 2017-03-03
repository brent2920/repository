<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>


<h1>jQuery</h1>
<input type="text" id="view"/>
<button id="btn">버튼</button>
<script>
	console.log($("#view"));	// $("p") == document.getElementsByTagName("p") → jQuery용 객체
								// $(".btn") == document.getElementsByClassName("btn") → jQuery용 객체
								// $("#view") == document.getElementById("view") → jQuery용 객체
	console.log(document.getElementById("view"));
	console.log($(document.getElementById("view")));
	
	$("#btn").click(function() {
		window.alert("Hi=]");
		$.ajax({
			url : "/01ajax.jsp"
		}).done(function(txt) {
// 			console.log(txt);
			$("#btn").html(txt);
		});
	});
	
	$("#view").val("아아아");
	$("#view").fadeOut(5000);
	$("#view").fadeIn(1000);
	//===================================================================================================
	
</script>