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
<div class="container" align="center">
<h2>가장 좋은 평가를 받은 상품 TOP5</h2>
	<table class="table table-hover">
		<tr>
			<c:forEach var="list" items="${list }">
				<td>
					<a href="productList.do?pro_num=${list.pro_num }">
						<img src="${path}/images/${list.pro_image }" width="150" height="150">
						상품명 : ${list.pro_name }
						가격 : ${list.pro_price }원
					</a>
				</td>
			</c:forEach>
		</tr>
	</table>
</div>	
</body>
</html>