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
<form action="Greplyx.do?bx_num=${bx_num }" method="post">
<!-- 	
	아이디는 임시로 입력해서 사용
-->
	<table class="table table-hover">
		<tr>
			<td><input type="text" name="id" placeholder="아이디 임시"></td>
			<td><textarea name="rex_content" class="bx_content" required="required" maxlength="50" placeholder="댓글을 입력하세요(50자 이내)"></textarea></td>
			<td><input type="submit" value="작성"><input type="reset" value="취소"></td>
		</tr>
	</table>
</form>
</body>
</html>