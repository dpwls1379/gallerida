<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${result>0 }">
	<script type="text/javascript">
		location.href="GboardxContent.do?bx_num=${bx_num}";
	</script>
</c:if>
<c:if test="${result<=0 }">
	<script type="text/javascript">
		history.go(-1);
	</script>
</c:if>
</body>
</html>