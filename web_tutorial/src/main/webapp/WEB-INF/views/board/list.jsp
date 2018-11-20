<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">2013722019</h1>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
		
			<div class="panel-heading">
				Board list page
				<button id='regBtn' type="button" onclick="location.href='/board/register'" class="btn btn-xs pull-right">Register
					New Board</button>
			</div>
		
		
		<div class="panel-body">
			<table class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<th>#번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>

				<c:forEach var="boardVO" items="${list}">
					<tr>
						<td>${boardVO.bno}</td>
						<td><a href='/board/read?bno=${boardVO.bno}'>${boardVO.title}</a></td>
						<td>${boardVO.writer}</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}"/></td>
						<td><span class="badge bg-red">${boardVO.viewcnt}</span></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		</div>
	</div>
</div>

<script>
	var result = '${msg}';
	
	if(result== 'SUCCESS'){
		alert("처리가 완료되었습니다.")
	}
</script>
<%@ include file="../include/footer.jsp"%>