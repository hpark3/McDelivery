<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 페이지</title>
</head>
<body>
	<h1>문제가 발생했습니다</h1>
	<h1>${msg }</h1>
	<a href="<c:url value='/' />">메인으로</a>	
</body>
</html>