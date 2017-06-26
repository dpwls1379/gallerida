<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/header.jsp"%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$('#pdList').load("pdList.do");
	});
	$(function() {
		$('#pdList2').load("pdList2.do");
	});
	$(function() {
		$('#pdList3').load("pdList3.do");
	});
</script>
</head>
<body>
<div class="container" align="center">
	<form action="GproductSearch.do">
		갤러리다
		<input type="text" name="search">
		<input type="submit" value="검색">
	</form>
	<a href="GboardxList2.do">질문게시판</a>
	<a href="GboardxList.do">공지사항게시판</a>
	<a href="GboardoList.do">상품평가게시판(X, 상품상세정보에서 작성가능하게 설정)</a>
	<a href="GproductList.do">상품정보</a>
	<div id="pdList"></div>
	<div id="pdList2"></div>
	<div id="pdList3"></div>
</div>
</body>
</html>