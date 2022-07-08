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

	function joinCheck(){
		document.qq.action = "<c:url value='/joins.do'/>";
		alert("가입을 환영합니다 ~_~")
		document.qq.submit();
	}
	
	$( document).ready(function(){
		<c:if test="${!empty msg}">
			alert("${msg}");
		</c:if>
		
		$("#btn_idCheck").click(function(){
			
			let id = $.trim($("#id").val());
			if (id == "") {
				alert("학번을 입력해주세요");
				$("#id").focus();
				return false;
			}

		
			 $.ajax({
				type:"POST",
				data:{"id" : id},
				url:"idCheck.do",
				dataType:"text",
				
				success: function(result){
					if (result == "ok") {
						alert("등록되지 않은 학번 입니다.");
					} else {
						alert("등록된 학번으로 회원가입이 가능합니다.");
					}
				},
				error: function() {
					 alert("오류발생");
				}
				
			 }) 
		
		})
		
		$("#btn_nicCheck").click(function(){
			
			 let nickname = $.trim($("#nickname").val());
			 if (nickname == "") {
				alert("닉네임을 입력해주세요");
				$("#nickname").focus();
				return false;
			 }

		
			 $.ajax({
				type:"POST",
				data:{"nickname" : nickname},
				url:"nicCheck.do",
				dataType:"text",
				
				success: function(result){
					if (result == "ok") {
						alert("사용 가능한 닉네임입니다.");
					} else {
						alert("이미 사용중인 닉네임입니다.");
					}
				},
				error: function() {
					 alert("오류발생");
				}
			
			 }) 
		
		 })
		
		
		$("#btn_jCheck").click(function(){
			
			 let id = $.trim($("#id").val());
			 if (id == "") {
				alert("학번을 입력해주세요");
				$("#id").focus();
				return false;
			 }

		
			 $.ajax({
				type:"POST",
				data:{"id" : id},
				url:"jCheck.do",
				dataType:"text",
				
				success: function(result){
					if (result == "ok") {
						alert("회원가입 가능한 학번입니다.");
					} else {
						alert("이미 회원가입한 학번입니다.");
					}
				},
				error: function() {
					 alert("오류발생");
				}
				
			 }) 
			 
		 })
	})

</script>
</head>
<body>
	<div class="container">
		<h1>회원가입</h1>
		<div class="panel panel-default">
			<div class="panel-heading">
				<form class="form-horizontal" name="formName" action="/joins.do" method="post">

					<div class="form-group">
						<label for="id"> 학번 </label> 
						<input type="text" name="id" id="id">
						<button type="button" id="btn_idCheck">학번 확인</button>
						<button type="button" id="btn_jCheck">회원가입 확인</button>
					</div>
					<div class="form-group">
						<label for="name"> 이름 </label> 
						<input type="text" name="name" id="name">
					</div>
					<div class="form-group">
						<label for="birth"> 생년월일 </label> 
						<input type="text" name="birth" id="birth"> ex) 19950101
					</div>
					<div class="form-group">
						<label for="password"> 비밀번호 </label> 
						<input type="password" name="password" id="password" required>
					</div>
					<div class="form-group">
						<label for="nickname"> 닉네임 </label> 
						<input type="text" name="nickname" id="nickname" required>
						<button type="button" id="btn_nicCheck">닉네임 중복 확인</button>
					</div>
					<div class="panel-footer">
						<button type="submit" id="joinCheck" onclick="joinCheck()">가입하기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>