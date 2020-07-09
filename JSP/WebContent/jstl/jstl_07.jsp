<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>c:forTokens</h1>
<hr>

<% String fruits = "Apple:Banana:Cherry:Durian"; %>

<c:forTokens items="<%=fruits %>" delims=":" var="f">
	${f }<br>
</c:forTokens>


<hr>

<%	String fruits2 = "Apple Banana,Cherry:Durian";%>
<c:forTokens items="<%=fruits2 %>" delims=" ,:" var="f" varStatus="stat">
	${f }<br>
</c:forTokens>

<hr>
<%	String filename = "test.jsp"; %>
<c:forTokens items="<%=filename %>" delims="." var="item" varStatus="stat">

	<c:if test="${stat.last }">
		확장자 : ${item }<br>
		----------------<br> 
		
		<c:choose>
			<c:when test="${item eq txt }"></c:when>
			<c:when test="${item eq jqg }"></c:when>
			<c:when test="${item eq exe }"></c:when>
		</c:choose>
	</c:if>
</c:forTokens>

</body>
</html>