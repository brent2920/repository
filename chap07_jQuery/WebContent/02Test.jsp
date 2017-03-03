<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    
<h1>jQuery DOM Traversing - Test</h1>
태그$("태그명")나 클래스이름, 아이디로 접근 가능
<br/>
<c:forTokens var="tk" items="가위,바위,보" delims=",">
	<button>${tk }</button>
</c:forTokens>
<hr/>
<c:forEach var="i" begin="1" end="10">
	<input type="checkbox" class="chk"/>${i }. 목록 <br/>
</c:forEach>
<hr/>
<input type="text" readonly value="Say Something" id="t"/>
<hr/>
<button id="button">Selcet All</button>
<!-- 
	태그명이나.. 클래스이름으로 서칭이 되면.. 여러개가 나옴. each
 -->
<script>
	// each에서의 this는 각각에 대해 this가 먹힌다.
	$("#button").click(function(){
		$(".chk").each(function() {
			$(this).prop("checked", !$(this).prop("checked"));
		});
	});
</script>
