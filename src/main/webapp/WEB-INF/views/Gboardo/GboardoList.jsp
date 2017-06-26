<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.table{font-size: 15;}
</style>
</head>
<body>
<div class="container" align="center">
<table class="table table-hover" id="table">
	<tr>	
		<td>이미지</td>
		<td>상품평가</td>
		<td>제목</td>
		<td>구매자</td>
		<td>등록일</td>
		<td>조회수</td>
	</tr>
	<c:if test="${empty list }">
		<tr><td colspan="6">평가 게시물이 없습니다</td></tr>
	</c:if>	
	<c:forEach var="list" items="${list }"> 
		<tr>					
			<c:if test="${not empty list }">			
				<c:if test="${list.bo_del=='n' }">
					<td>
						<c:if test="${list.bo_image==null}"></c:if>
						<c:if test="${list.bo_image!=null}">
							<img src="${path}/images/${list.bo_image }" width="50" height="50">
						</c:if>						
					</td>
					<td>
						<c:if test="${list.bo_star==1 }">★☆☆☆☆</c:if>
						<c:if test="${list.bo_star==2 }">★★☆☆☆</c:if>
						<c:if test="${list.bo_star==3 }">★★★☆☆</c:if>
						<c:if test="${list.bo_star==4 }">★★★★☆</c:if>
						<c:if test="${list.bo_star==5 }">★★★★★</c:if>
					</td>
					<td>					
						<a href="GboardoContent.do?bo_num=${list.bo_num }">${list.bo_subject }</a>
					</td>
					<td>
						${list.id }
					</td>
					<td>
						${list.bo_date }
					</td>
					<td>
						${list.bo_read }
					</td>
				</c:if>					
			</c:if>		
		</tr>
	</c:forEach>
</table>
</div>
<span>
	<a href="GboardoForm.do" >상품평 작성하기</a>
</span>
</body>
</html>