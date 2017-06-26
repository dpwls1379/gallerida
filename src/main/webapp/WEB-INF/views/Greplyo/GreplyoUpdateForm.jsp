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
<form action="GreplyoUpdate.do" method="post">
	<input type="hidden" name="reo_num" value="${reo_num }">
	<input type="hidden" name="bo_num" value="${bo_num }">
	<table class="table table-hover">
		<tr><td colspan="2"><input type="text" name="id" placeholder="아이디 임시"></td></tr>
		<tr><td colspan="2"><textarea name="reo_content" class="reo_content" required="required" maxlength="50" placeholder="수정할 댓글을 입력하세요(50자 이내)"></textarea></td></tr>
		<tr><td colspan="2"><input type="submit" value="수정"><input type="reset" value="취소"></td></tr>
	</table>
</form>
</body>
</html>