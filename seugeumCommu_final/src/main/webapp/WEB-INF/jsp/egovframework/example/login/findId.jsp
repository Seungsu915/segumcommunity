<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>학번찾기</title>
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
		if ($("#birth").val() == "") {
			alert("생년월일을 입력하세요");
			return false;
		}
		return true;
	}
	$(document).ready(function(){
		<c:if test="${!empty id}">
			alert("학번은 ${id}");
		</c:if>
	})
	
	function findPw() {
		location.href = "<c:url value='/findPw.do'/>";
	}
	function login() {
		location.href = "<c:url value='/login.do'/>";
	}
	
	
</script>
</head>
<div class="container">
	<h1>학번찾기</h1>
	<div class="panel panel-default">
		<div class="panel-heading">
			<form class="form-horizontal" method="POST" action="/userFindId.do"> 
			
				<div class="form-group">
					<label for="name">이름:</label> 
					<input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력하세요">
				</div>
				<div class="form-group">
					<label for="birth">생년월일:</label> 
					<input type="text" class="form-control" id="birth" name="birth" placeholder="생년월일  8자리 입력하세요">
				</div>
				<button type="submit" class="btn btn-default" onclick="return check();">확인</button> 
				<button type="button" class="btn btn-default" onclick="findPw();">비밀번호 찾기</button> <!-- 비밀번호 찾기 /findPw.do 페이지로이동 -->
				<button type="button" class="btn btn-default" onclick="login();">login</button>     <!-- 로그인페이지 /login.do 페이지로이동 -->
				<!-- false인 경우 로그인 폼의 action이 수행되지 않게하기 위해 return -->
			</form>
			
			
		</div>
	</div>
</div>



</html>