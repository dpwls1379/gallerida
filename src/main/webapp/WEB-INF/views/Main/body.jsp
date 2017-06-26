<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>    
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
<div id="pdList"></div>
<div id="pdList2"></div>
<div id="pdList3"></div>
</body>
</html>