<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	img {
		width:200px;
		height:300px;
	}
	.add{
		
	}
	.update{
	
	}
	.delete{
	
	}
</style>
<script>
	window.onload = () => {
		
		document.querySelector(".add").addEventListener("click",function(){
			let managerForm = document.managerForm
			managerForm.action="add.do";
			managerForm.method="post";
			managerForm.submit();
		});
		
		document.querySelector(".update").addEventListener("click",function(){
			let managerForm = document.managerForm
			managerForm.action="update.do";
			managerForm.method="post";
			managerForm.submit();
		});
		
		document.querySelector(".delete").addEventListener("click",function(){
			/* let managerForm = document.managerForm
			managerForm.action="delete.do";
			managerForm.method="post";
			managerForm.submit(); */
		});
	}
</script>
</head>
<body>
	<div id="wrap">
		<form name="managerForm">
			<h1>영화관리</h1>
			<input class="add" type="button" value="영화추가하기">
			<c:forEach var="movie" items="${movieList }" varStatus="status">
				<div>
					<div><img src="${movie.poster_main }"></div>
					<div>${movie.title}</div>
					<input class="update" type="button" value="수정">
					<input type="hidden" name="articleNO" value="${movie.articleNO }">
					<input class="delete" type="button" value="삭제">
				</div>
			</c:forEach>
		</form>
	</div>
</body>
</html>