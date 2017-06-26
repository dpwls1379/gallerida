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
이미지 X, 질문게시판
<!-- 로그인 일때만 글작성 가능하게(관리자, 고객) 나중에 합칠때 설정-->	
<form action="Gboardx2.do" name="frm" method="post">
	<input type="hidden" name="bx_categ" value="qna" > 
<!-- 	
	<input type="hidden" value="" name="id">
	아이디는 임시로 입력해서 사용
-->
	<table class="table table-hover">
		<tr><td><input type="text" name="id" placeholder="아이디 임시"></td></tr>
		<tr><td><input type="text" name="bx_subject" required="required" maxlength="20" placeholder="제목"></td></tr>
		<tr><td><textarea name="bx_content" class="bx_content" required="required" maxlength="255" placeholder="내용을 입력하세요(255자)"></textarea></td></tr>
		<tr><td><input type="submit" value="작성"><input type="reset" value="취소"></td></tr>
	</table>
</form>
</body>
</html>