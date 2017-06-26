<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function delchk() {
		boolean cf = confirm("정말로 삭제하시겠습니까?");
		if(cf==true) {
			return true;
		} else {
			return false;
		}
	}
</script>
</head>
<body>
<h2>댓글</h2>

<table class="table table-hover">	
	<tr>
		<td>작성자</td>
		<td>내용</td>
		<td>작성일</td>
		<td></td>
	</tr>
	<c:forEach var="list" items="${list }">
		<c:if test="${empty list}">
			<tr>
				<td colspan="4">작성된 댓글이 없습니다</td>
			</tr>
		</c:if>
		<c:if test="${not empty list }">
			<c:if test="${list.rex_del=='n' }">
				<tr>
					<td>${list.id }</td>
					<td>${list.rex_content }</td>
					<td>${list.rex_date }</td>
					<td>
						<a href="GreplyxUpdateForm.do?rex_num=${list.rex_num }&bx_num=${list.bx_num}">수정</a>
						<button onclick="return delchk()"><a href="GreplyxDelete.do?rex_num=${list.rex_num }&bx_num=${list.bx_num}">삭제</a></button>
					</td>
				</tr>
			</c:if>
		</c:if>
	</c:forEach>	
</table>
	
</body>
</html>