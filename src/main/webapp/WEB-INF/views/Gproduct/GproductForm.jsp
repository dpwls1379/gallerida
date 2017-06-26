<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function chk() {
		if(frm.pro_price.value<0) {
			alert("금액은 -가 될수 없습니다");
			return false;
		}
		if(frm.pro_count.value<0) {
			alert("제품개수는 -가 될수 없습니다");
			return false;
		}
	}
</script>
</head>
<body>
<form action="Gproduct.do" method="post" name="frm">
	<table class="table table-hover">
		<tr>
			<td>카테고리</td>
			<td>	
				<select name="pro_cate">
					<option value="appliance" selected="selected">가전제품</option>
					<option value="food">식료품</option>
					<option value="book">도서</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="pro_name" required="required"></td>
		</tr>
		<tr>
			<td>가격</td>
			<td><input type="number" name="pro_price" required="required"></td>
		</tr>
		<tr>
			<td>상품개수</td>
			<td><input type="number" name="pro_count" required="required"></td>
		</tr>
		<tr>
			<td>할인율</td>
			<td><input type="number" name="pro_sale" required="required" min="0" max="100">%</td>
		</tr>
		<tr>
			<td>상세정보</td>
			<td><textarea rows="15" cols="50" name="pro_info" required="required"></textarea></td>
		</tr>
		<tr>
			<td>이미지</td>
			<td><input type="file" name="pro_image" required="required"></td>
		</tr>
		<tr>
			<td><input type="submit" value="등록" onclick="return chk()"><input type="reset" value="취소"></td>
		</tr>
	</table>
</form>
</body>
</html>