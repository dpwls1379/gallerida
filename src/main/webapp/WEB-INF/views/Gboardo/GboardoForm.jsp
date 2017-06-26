<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.bo_content { resize: none; width: 500px; height: 250px;}
</style>
</head>
<body>
<h2>이미지 O, 상품평가 게시판</h2>
<form action="Gboardo.do" method="post">
	<input type="hidden" name="pro_num" value="${pro_num }">
<!-- 	
	아이디는 임시로 입력해서 사용
-->
	<table class="table table-hover">
		<tr>
			<td colspan="2">
				<input type="text" name="id" placeholder="아이디 임시">
			</td>
		</tr>
		<tr>		
			<td>
				평가
				<select name="bo_star">
					<option value="5" selected="selected">★★★★★</option>
					<option value="4">★★★★☆</option>
					<option value="3">★★★☆☆</option>
					<option value="2">★★☆☆☆</option>
					<option value="1">★☆☆☆☆</option>			
				</select>
				<input type="text" name="bo_subject" required="required" maxlength="20" placeholder="제목">
			</td>
		</tr>
		<tr><td colspan="2"><textarea name="bo_content" class="bo_content" required="required" maxlength="255" placeholder="상품의 평가를 해주세요(255자)"></textarea></td></tr>
		<tr><td><input type="file" name="bo_image"></td></tr>
		<tr><td colspan="2"><input type="submit" value="작성"><input type="reset" value="취소"></td></tr>
	</table>
</form>
</body>
</html>