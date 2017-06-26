<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>     
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.bx_content { resize: none; width: 500px; height: 250px;}
</style>
</head>
<body>
<form action="GboardoUpdate.do" name="frm" method="post">
	<input type="hidden" name="bo_num" value="${bo_num }">
	<table class="table table-hover">
		<tr><td><input type="text" name="id" value="${id }" disabled="disabled"></td></tr>
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
			</td>
		</tr>
		<tr><td><input type="text" name="bo_subject" required="required" maxlength="20" placeholder="제목"></td></tr>
		<tr><td><textarea name="bo_content" class="bo_content" required="required" maxlength="255" placeholder="수정할 내용을 입력하세요(255자)"></textarea></td></tr>
		<tr><td><input type="submit" value="수정"><input type="reset" value="취소"></td></tr>
	</table>
</form>
</body>
</html>