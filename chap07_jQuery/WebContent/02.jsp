<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    
<h1>jQuery DOM Traversing</h1>
태그$("태그명")나 클래스이름, 아이디로 접근 가능
<br/>
<c:forTokens var="tk" items="가위,바위,보" delims=",">
	<button>${tk }</button>
</c:forTokens>
<hr/>
<c:forEach var="i" begin="1" end="10">
	<input type="checkbox" class="chk"/>목록 .${i }<br/>
</c:forEach>
<hr/>
<input type="text" readonly value="Say Something" id="t"/>
<hr/>
<button id="bt">Click!</button>
<!-- 
	태그명이나.. 클래스이름으로 서칭이 되면.. 여러개가 나옴. each
 -->
<script>
	$("button").each(function(){
		console.log(this);
// 		this.innerHTML = "안녕";
// 		$(this).html("음..");
		console.log($(this).html());
		// $(this).html(값) : 인자를 넘겨주지 않으면 Getter, 넣어주면 Setter 기능을 함
		this.disabled = true;
	});
	
	$(".chk").each(function() {
// 		this.checked = true;
		$(this).prop("checked", true);
		console.log($(this).prop("checked"));
		// $(this).prop("checked", 밸류) : 밸류값을 설정해주지 않으면 Getter, 설정하면 Setter 기능을 함
	});
	
	$("#bt").prop("disabled", false);
// 	$("#t").prop("readonly", false);
	$(document.getElementById("t")).prop("readonly", false);
	//prop으로 제어되는 효과는 [cheched, disabled, selected, readonly]
</script>
