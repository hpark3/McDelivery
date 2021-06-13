<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 중복확인</title>
<script>
	function closeFunc() {
		close();
	}

	function submitId() {
		var useridDoc = opener.document.getElementById("userid");
		var signupBtnDoc = opener.document.getElementById("signupBtn");
		useridDoc.value = "${userid}";
		signupBtnDoc.removeAttribute("disabled");
		close();
	}
</script>
</head>
<body>
	<h1>ID 중복체크</h1>
	<form action="<c:url value='/member/checkid' />" method="post">
		<input type="text" name="userid" value="${userid}" required="required">
		<input type="submit" value="중복확인">
		<input type="button" id="btn" value="사용" onclick="submitId()" disabled="disabled">
		<input type="button" value="닫기" onclick="closeFunc()">
	</form>
	<c:choose>
		<c:when test="${checkResult == true }">
			<p>사용 가능한 아이디 입니다</p>
			<script>
				document.getElementById("btn").removeAttribute("disabled");
			</script>
		</c:when>
		<c:when test="${checkResult == false }">
			<p>이미 사용중인 아이디 입니다</p>
		</c:when>
	</c:choose>
</body>
</html>






