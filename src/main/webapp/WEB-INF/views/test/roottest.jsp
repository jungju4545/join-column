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

<c:forEach var="market" items="${market}">
마켓이름 : ${market.marketName}	<br/>
마켓카테고리 : ${market.category.category} <br/>
지역 시/도 : ${market.local.city} <br/>
지역 구/군 : ${market.local.country} <br/>
지역 동/읍/리 : ${market.local.town} <br/>
</c:forEach>

</body>
</html>