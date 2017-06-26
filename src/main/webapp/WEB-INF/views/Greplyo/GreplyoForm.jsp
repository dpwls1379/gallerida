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
이미지 O, 상품평가 댓글게시판
<form action="Greplyo.do?bo_num=${bo_num }" method="post">
<!-- 	
	아이디는 임시로 입력해서 사용
-->
	<table class="table table-hover">
		<tr><td colspan="2"><input type="text" name="id" placeholder="아이디 임시"></td></tr>
		<tr><td colspan="2"><textarea name="reo_content" class="bo_content" required="required" maxlength="50" placeholder="댓글을 입력하세요(50자 이내)"></textarea></td></tr>
		<tr><td colspan="2"><input type="submit" value="작성"><input type="reset" value="취소"></td></tr>
	</table>
</form>
</body>
</html>