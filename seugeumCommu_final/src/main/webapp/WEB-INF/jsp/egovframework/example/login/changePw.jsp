<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>비밀번호수정</title>
<meta charset="utf-8">
<meta name="viewport" content="width--device-width, initial-scale=1">
<link rel="stylesheet" href="./css/bootstrap/css/bootstrap.min.css">
<script src="./js/jquery-3.5.1.min.js"></script>
<script src="./css/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javaScript" language="javascript" defer="defer">
	
	$( document).ready(function(){
		<c:if test="${!empty msg}">
		alert("${msg}");
		
		</c:if>
		
	})

	function check() {
		
		var length = $("#password").val().length()
		     
		if ( $("#password").val() == $("#changePwCheck").val() && $("#password").val().length() == $("#changePwCheck").val().length()  ) {
			alert("비밀번호가 수정되었습니다.");
			document.modifyForm.action = "<c:url value='userChangePw.do'/>"
			document.modifyForm.submit();
			return true;
		}
		else {
			alert("변경 비밀번호가 일치하지 않습니다.");
			$("#password").focus();
			$("#changePwCheck").focus();
			return false;
		}
		

	}
	
	
</script>
</head>
<div class="container">
	<h1>비밀번호 수정</h1>
	<div class="panel panel-default">
	
		<div class="panel-heading">
			
			<form class="form-horizontal" method="post" id="modifyForm" name="modifyForm" action="/userChangePw.do"> 
			
				<div class="form-group">
				
					<label for="name">학번:</label> 		
					<input type="text" class="form-control" id="id" name="id" value="${id}" >
				</div>
				<div class="form-group">
				
					<label for="id">변경 비밀번호:</label> 
					<input type="password" class="form-control" id="password" name="password" placeholder="새 비밀번호를 입력하세요">
				
				</div>
				<div class="form-group">
				
					<label for="id">변경 비밀번호 확인:</label> 
					<input type="password" class="form-control" id="changePwCheck" name="changePwCheck" placeholder="새 비밀번호를 입력하세요">
				
				</div>
				
				<button type="submit" class="btn btn-default" onclick="return check();">확인</button> 
				
				<!-- false인 경우 로그인 폼의 action이 수행되지 않게하기 위해 return -->
			</form>
			
		</div>
	</div>
</div>
</html>