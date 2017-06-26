<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function delchk() {
		var cf = confirm("상품을 삭제하시겠습니까?");
		if(cf==true) {
			return true;
		} else {
			return false;
		}
	}
</script>
</head>
<body>
<table class="table table-hover">
	<tr>
		<td>제품번호</td>
		<td>제품종류</td>
		<td>제품이름</td>
		<td>제품가격</td>
		<td>제품할인률</td>
		<td>제품판매가격</td>
		<td>제품상세정보</td>
		<td>제품이미지</td>
		<td>제품등록날짜</td>
		<td>제품개수</td>
		<td>제품판매수</td>
		<td></td>
	</tr>	
	<c:forEach var="list" items="${list }">
		<tr>
			<td>${list.pro_num }</td>
			<td>${list.pro_cate }</td>
			<td><a href="productList.do?pro_num=${list.pro_num }">${list.pro_name }</a></td>
			<td>${list.pro_price }</td>
			<td>${list.pro_sale }%</td>
			<td>${(100-list.pro_sale)/100*list.pro_price}</td>
			<td>${list.pro_info }</td>
			<td><img src="${path}/images/${list.pro_image }" width="30" height="30"></td>	
			<td>${list.pro_date }</td>
			<td>${list.pro_count }</td>	
			<td>${list.pro_sell }</td>
			<td>
				<a href="GproductUpdateForm.do?pro_num=${list.pro_num }">수정</a>
				<button onclick="return delchk()"><a href="GproductDelete.do?pro_num=${list.pro_num}">삭제</a></button>
			</td>
		</tr>		
	</c:forEach>
	<tr><td colspan="11"><a href="GproductForm.do">상품등록</a></td></tr>
</table>
</body>
</html>