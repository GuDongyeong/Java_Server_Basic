<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>c:set</h1>
<h3>세션 데이터 확인</h3>
<hr>

세션 데이터 : ${ sessionData }<br>

<a href="./jstl_03.jsp">이전 페이지</a>


<hr>
A Key : ${m.A }<br>
B Key : ${m.B }<br>

<% 
	out.print( ((Map)request.getSession().getAttribute("m")).get("A") );
%>

<hr>
User 객체 : ${sessionUser }<br>

</body>
</html>