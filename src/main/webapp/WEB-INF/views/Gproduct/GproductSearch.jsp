<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="list" items="#{list }">
	<c:if test="${empty list }">
		검색된 상품이 없습니다
	</c:if>
	<c:if test="${not empty list }">		
		<a href="productList.do?pro_num=${list.pro_num }">
			<span>
				<img src="${path}/images/${list.pro_image }" width="150" height="150">
				상품명 : ${list.pro_name }
				가격 : ${list.pro_price }원			
			</span>
		</a>		
	</c:if>
</c:forEach>
</body>
</html>