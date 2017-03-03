<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String q = request.getParameter("q");
%>

<h2>Parameter Getter</h2>
<b>Parameter value :</b> <%=q %>