<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<title>맥도날드 회원  로그인</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/login_style.css" />" />
<script src="resources/js/jquery-3.js"></script>

<c:if test="${requestScope.result == false}">
	<script>alert("ID 또는 암호가 일치하지 않습니다");


	</script>
</c:if>

</head>
<body>

	<div class="container">
		<section id="close">
				<!-- <a href="javascript:self.close()"> <img src="/my/resources/images/login/mc_icon_close.png"> </a> -->		
		  <section id="content"> 

			<img src="/my/resources/images/login/mc_icon.png" onclick="location='<c:url value="/"/>'"/>
			<h1>주문을 하시려면 로그인하시기 바랍니다.</h1>
			
	<form action="<c:url value='/member/login' />" method="post">

	<div>
		<input type="text" placeholder="ID" id="username" name="username" required="required">
	</div>
	<div>
		<input type="password" placeholder="PWD" id="password" name="password" required="required">
	</div>
	<div>
		<input type="submit" value="로그인"> 
	</div>
	<a href="<c:url value='/member/pwd_find'/>">비밀번호 찾기</a>
	<hr color="#EAEAEA">
	<div> <a href="<c:url value='/member/signupForm'/>"><img src="/my/resources/images/login/mc_icon_gotoorder.png">신규회원</a> </div>
	
<!-- 	<table>
		<tr>
			<th>ID</th>
			<td><input type="text" placeholder="ID" id="username" name="username" required="required"></td>
		</tr>
		<tr>
			<th>암호</th>
			<td><input type="password" placeholder="PWD" id="password" name="password" required="required"></td>
		</tr>
		<tr>
			<th colspan="2">
				<input type="submit" value="로그인" >
			</th>
		</tr>
	</table>
 -->	
</form>
 </section> 
 </section>
 
 </div>
</body>
</html>
