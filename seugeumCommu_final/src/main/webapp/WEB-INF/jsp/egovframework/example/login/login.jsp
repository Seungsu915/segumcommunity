<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width--device-width, initial-scale=1">
<link rel="stylesheet" href="./css/bootstrap/css/bootstrap.min.css">
<script src="./js/jquery-3.5.1.min.js"></script>
<script src="./css/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javaScript" language="javascript" defer="defer">

	$( document).ready( function(){
		<c:if test="${!empty msg}">
			alert("${msg}");
		</c:if>
		
		/* window.history.forward(); */
		
	})

	function check() {
		if ($("#id").val() == "") {
			alert("아이디를 입력하세요");
			return false;
		}
		if ($("#password").val() == "") {
			alert("비밀번호를 입력하세요");
			return false;
		}
		return true;
	}
	
	/* -------------------- 성구님 --------------------- */
	function joinBtn(){
		location.href = "<c:url value='/join.do'/>";
	}
	
	/* -------------------- 승수님 --------------------- */
	function findIdBtn(){
		location.href = "<c:url value='/findId.do'/>";
	}
	function findPwBtn(){
		location.href = "<c:url value='/findPw.do'/>";
	}
	
</script>
</head>
<div class="container">
	<h1>로그인</h1>
	<div class="panel panel-default">
		<div class="panel-heading">
			<c:if test="${sessionScope.id ==null || sessionScope.id == '' }">
				<form class="form-inline" method="post" action="/userLogin.do">
					<div class="form-group">
						<label for="user_id">아이디:</label> <input type="text"
							class="form-control" id="id" name="id">
					</div>
					<div class="form-group">
						<label for="password">Password:</label> <input type="password"
							class="form-control" id="password" name="password">
					</div>
					<button type="submit" class="btn btn-default"
						onclick="return check();">로그인</button>
				</form>
			</c:if>
		</div>
		<!-- 성구님 -->
		<div class="panel-footer">
			<button type="button" onclick="joinBtn();">회원 가입</button>
			<button type="button" id="" onclick="findIdBtn();">학번 찾기</button>
			<button type="button" id="passBtn" onclick="findPwBtn();">비밀번호 찾기</button>
		</div>
	</div>

</div>
</html>
