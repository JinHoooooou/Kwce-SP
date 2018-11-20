<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
     
     <div class="panel-heading">Board Register</div>
     
      <div class="panel-body">
        <form role="form" action="/board/register" method="post">
          <div class="form-group">
          	<label>Title</label> <input class="form-control" name='title'>
          </div>
          <div class="form-group">
          	<label>Text area</label>
          	<textarea class="form-control" rows="3" name='content'></textarea>
          </div>
          <div clas="form-group">
          	<label>Writer</label> <input class="form-control" name='writer'>
          </div>
          <button id="SubmitBtn" type="submit" class="btn btn-default">Submit Button</button>
          
          <button id="reset" class="btn btn-default">Reset Button</button>
          
          <button id="ListBtn" class="btn btn-default">List</button>
        </form>
      </div>
    </div>
  </div>
</div>
<script>

$(document).ready(function(){
	$("#ListBtn").on("click", function(){
		var Formobj= $("form[role='form']");
		Formobj.attr("action","/board/list");
		Formobj.attr("method","get");
		Formobj.submit();
	});
	
	$("#reset").on("click", function(){
		var Formobj= $("form[role='form']");
		Formobj.attr("action","/board/register");
		Formobj.attr("method","get");
		Formobj.submit();
	});
	
	$("#SubmitBtn").on("click", function(){
		if($("input[name=title]").val()==""){
			alert("제목을 입력하세요!");
			$("input[name='title']").focus();
			return false;
		}
		if($("input[name=content]").val()==""){
			alert("내용을 입력하세요!");
			$("input[name='content']").focus();
			return false;
		}
		if($("input[name='writer']").val()==""){
			alert("이름을 입력하세요!");
			$("input[name='writer']").focus();
			return false;
		}
	});
});
</script>			
<%@ include file="../include/footer.jsp"%>