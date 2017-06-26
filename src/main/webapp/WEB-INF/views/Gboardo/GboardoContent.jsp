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
		var cf = confirm("정말로 삭제하시겠습니까?");
		if(cf==true) {
			location.href="GboardoDelete.do?bo_num=${content.bo_num }";
		} else {
			return false;
		}
	}

	$(function() {
		$('#list').load('GboardoList.do');
	});
	
	$(function() {
		$('#list2').load('GreplyoForm.do?bo_num=${content.bo_num}');
	});
	
	$(function() {
		$('#list3').load('GreplyoList.do?bo_num=${content.bo_num}');
	});
</script>
</head>
<body>
<div class="container" align="center">
<table class="table table-hover">
	<tr>
		<td colspan="1">제목</td>
		<td colspan="4">${content.bo_subject }</td>
		<td colspan="1">
			<c:if test="${content.bo_star==1 }">★☆☆☆☆(1점)</c:if>	
			<c:if test="${content.bo_star==2 }">★★☆☆☆(2점)</c:if>	
			<c:if test="${content.bo_star==3 }">★★★☆☆(3점)</c:if>	
			<c:if test="${content.bo_star==4 }">★★★★☆(4점)</c:if>
			<c:if test="${content.bo_star==5 }">★★★★★(5점)</c:if>
		</td>
	</tr>
	<tr>
		<td>아이디</td><td>${content.id }</td>
		<td>작성일</td><td>${content.bo_date }</td>
		<td>조회수</td><td>${content.bo_read }</td>
	</tr>
	<tr>
		<td colspan="6"><img src="${path }/images/${content.bo_image }"></td>
	</tr>
	<tr>
		<td colspan="6">${content.bo_content }</td>
	</tr>
</table>
</div>
<div>
	<a href="GboardoList.do">목록</a>
	<a href="GboardoUpdateForm.do?bo_num=${content.bo_num }&id=${content.id}">수정</a>
	<button onclick="return delchk()">삭제 체크</button>
	<a href="GboardoDelete.do?bo_num=${content.bo_num }">삭제</a>
</div>
<div id="list3"></div>
<div id="list2"></div>
<div id="list"></div>
</body>
</html>