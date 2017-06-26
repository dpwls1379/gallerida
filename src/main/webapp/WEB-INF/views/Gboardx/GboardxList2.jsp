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
<h3>질문 게시판</h3>
<table class="table table-hover">
	<tr>
		<td>글번호</td>
		<td>제목</td>
		<td>작성자</td>
		<td>작성일</td>
		<td>조회수</td>
	</tr>
	<c:forEach var="list" items="${list }"> 
		<tr>
			<c:if test="${empty list }">
				<td colspan="6">게시물이 없습니다</td>
			</c:if>
			<c:if test="${not empty list}">
				<c:if test="${list.bx_del=='n'}">
					<td>${list.bq_num }</td>						
					<td><a href="GboardxContent.do?bx_num=${list.bx_num }">${list.bx_subject }[${cnum }]</a></td>
					<td>${list.id }</td>
					<td>${list.bx_date }</td>
					<td>${list.bx_read }</td>
				</c:if>
			</c:if>
		</tr>
	</c:forEach>
</table>
<div class="container">
	<form action="search2.do" method="post">
		<table class="table table-hover">
			<tr>	
				<td>
					<select name="serc">
						<option value="id" <c:if test="${serc=='id' }">selected="selected"</c:if>>작성자</option>
						<option value="bx_subject" <c:if test="${serc=='bx_subject' }">selected="selected"</c:if>>제목</option>
						<option value="bx_content" <c:if test="${serc=='bx_content' }">selected="selected"</c:if>>내용</option>
					</select>
					<input type="text" name="serct" <c:if test="${not empty serct }">value="${serct}"</c:if>>
					<input type="submit" value="검색">
					<a href="GboardxList2.do">목록</a>	
					<a href="GboardxForm2.do">글쓰기</a>
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>