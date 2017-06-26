<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$('#list').load('GboardoList.do?pro_num=${list.pro_num}');
	});
</script>
</head>
<body>
<div class="container" align="center">
<table class="table table-hover">
	<tr><td colspan="2"><img src="${path }/images/${list.pro_image }"></td></tr>
	<tr><td>상품명</td><td>${list.pro_name }</td></tr>
	<tr><td>정가</td><td>${list.pro_price }</td></tr>
	<tr><td>할인률</td><td>${list.pro_sale }%</td></tr>
	<tr><td>판매가</td><td>${(100-list.pro_sale)/100*list.pro_price}</td></tr>
	<tr><td>상품등록일</td><td>${list.pro_date }</td></tr>
	<tr><td>상품정보</td><td>${list.pro_info }</td></tr>
	<tr><td>상품판매수</td><td>${list.pro_sell }</td></tr>
	<tr><td>상품남은개수</td><td>${list.pro_count }</td></tr>
	<c:if test="${list.pro_count>0 }">
		<form action="">
			<tr>
				<td>구입할 개수</td>
				<td><input type="number" name="pro_count"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="장바구니 담기">
					<input type="submit" value="구매하기">
				</td>
			</tr>
		</form>
	</c:if>
	<c:if test="${list.pro_count<=0 }">
		품절이라 상품구매가 불가능합니다
	</c:if>
</table>
</div>
<div id="list"></div>
</body>
</html>