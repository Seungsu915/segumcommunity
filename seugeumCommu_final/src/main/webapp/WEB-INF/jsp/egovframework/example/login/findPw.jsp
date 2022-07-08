<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>비밀번호찾기</title>
<meta charset="utf-8">
<meta name="viewport" content="width--device-width, initial-scale=1">
<link rel="stylesheet" href="./css/bootstrap/css/bootstrap.min.css">
<script src="./js/jquery-3.5.1.min.js"></script>
<script src="./css/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javaScript" language="javascript" defer="defer">

	function check() {
		if ($("#name").val() == "") {
			alert("이름을 입력하세요");
			return false;
		}
		if ($("#id").val() == "") {
			alert("학번을 입력하세요");
			return false;
		}
		return true;
	}
	function findId() {
		location.href = "<c:url value='/findId.do'/>";
	}
	$( document).ready(function(){
		<c:if test="${!empty id}">
		alert("학번은 ${id}");
		
		</c:if>
	})
	$(document).ready(function(){
		<c:if test="${!empty msg}">
		alert("${msg}");
		
		</c:if>
	})
	
</script>
</head>
<div class="container">
	<h1>비밀번호 찾기</h1>
	<div class="panel panel-default">
		<div class="panel-heading">
			<form class="form-horizontal" method="post" action="/userFindPw.do"> 
				<div class="form-group">
					<label for="name">이름:</label> 
					<input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력하세요">
				</div>
				<div class="form-group">
					<label for="id">학번:</label> 
					<input type="text" class="form-control" id="id" name="id" placeholder="학번을 입력하세요">
				</div>
				<button type="submit" class="btn btn-default" onclick="return check();">확인</button>
				<button type="button" class="btn btn-default" onclick="findId();">학번 찾기</button>
				<!-- false인 경우 로그인 폼의 action이 수행되지 않게하기 위해 return -->
			</form>
		</div>
	</div>
</div>
</html>