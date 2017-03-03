<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  
ID : <input type="text" id="id" size="40" class="in"/><br/>
NAME : <input type="text" id="name" size="40" class="in"/>

<div id="result"></div>
<script>
	$(".in").focus(function() {
		$(this).css("background", "#E6E6E6");
	});
	
	$(".in").blur(function() {
		$(this).css("background", "white");
	});

	$("#id").keyup(function() {
		$.ajax({
			"url" : "/07ajax.jsp?q=" + $(this).val()
		}).done(function(rst) {
			// ajax로 날라온거를 rst로 쓰겠다는것 변수명은 맘대로 지정
			$("#result").append(rst);
		})
	});
</script>