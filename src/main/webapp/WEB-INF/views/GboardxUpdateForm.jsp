<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>     
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
<form action="GboardxUpdate.do" name="frm" method="post">
	<input type="hidden" name="bx_num" value="${bx_num }">
	<table class="table table-hover">
		<tr><td><input type="text" name="id" value="${id }" disabled="disabled"></td></tr>
		<tr><td><input type="text" name="bx_subject" required="required" maxlength="20" placeholder="제목"></td></tr>
		<tr><td><textarea name="bx_content" class="bx_content" required="required" maxlength="255" placeholder="수정할 내용을 입력하세요(255자)"></textarea></td></tr>
		<tr><td><input type="submit" value="수정"><input type="reset" value="취소"></td></tr>
	</table>
</form>
</body>
</html>