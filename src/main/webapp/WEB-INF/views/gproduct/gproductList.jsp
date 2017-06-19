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
	<c:set var="no" value="${number }"></c:set>
	<div class="container" align="center">
		<h2 class="text-primary">상품리스트</h2>
		<table class="table table-striped table-hover">
			<tr>
				<td>번호</td>
				<td>상품종류</td>
				<td>상품명</td>
				<td>상품가격</td>
				<td>할인가</td>
				<td>할인률</td>
				<td>상품수량</td>
			</tr>
			<c:if test="${empty list }">
				<tr>
					<td colspan="7">데이터가 없습니다.</td>
				</tr>
			</c:if>
			<c:if test="${not empty list }">
				<c:forEach var="b" items="${list }">
					<tr>
						<td>${no }</td>
						<td>${b.pro_cate }</td>
						<%-- <c:if test="${b.pro_del=='y' }">
							<td colspan="4" class="err">삭제된 데이터 입니다.</td>
						</c:if> --%>
						<%-- <c:if test="${b.del!='y' }"> --%>
						<td><a
							href="view.do?pro_num=${b.pro_num }&pageNum=${pp.currentPage}">
								${b.pro_name } <c:if test="${b.pro_sell >= 30 }">
									<img alt="" src="../images/hot.gif" />
								</c:if>
						</a></td>
						<td>${b.pro_price }</td>
						<td>${b.pro_price*(1-b.pro_sale/100) }</td>
						<td>${b.pro_sale }%</td>
						<td>${b.pro_count - b.pro_sell }</td>
						<%-- </c:if> --%>
					</tr>
					<c:set var="no" value="${no-1 }"></c:set>
				</c:forEach>
			</c:if>
		</table>

		<ul class="pagination">
			<c:if test="${pp.startPage > pp.pagePerBlock }">
				<li><a href="productList.do?pageNum=${ pp.startPage - 1 }">이전</a></li>
			</c:if>
			<c:forEach var="i" begin="${pp.startPage }" end="${pp.endPage }">
				<li
					<c:if test="${pp.currentPage==i }">
								class="active"
							</c:if>>
					<a class="btn btn-default" href="productList.do?pageNum=${i}">${i }</a>
			</c:forEach>
			<c:if test="${pp.endPage < pp.totalPage }">
				<li><a href="productList.do?pageNum=${ pp.endPage + 1 }">다음</a></li>
			</c:if>
		</ul>
		<p>
			<a href="productInsertForm.do" class="btn btn-info">상품입력</a>
	</div>
</body>
</html>