<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- pwd_find.jsp -->    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>비밀번호 찾기</title>
<link rel="stylesheet" type="text/css" 
      href="<c:url value="/resources/css/findpw.css" />">      
<script src="resources/js/jquery-3.js"></script>
<script>
   function pwd_check(){ 
	   // pwd_id 체크
	   if($.trim($("#pwd_id").val())==""){
		   alert("아이디를 입력하세요!");
		   $("#pwd_id").val("").focus();
		   return false;
	   }

</script>      
</head>
<body>
  <div id="pwd_wrap">
  <c:if test="${empty passwd}" >
  	<img src="/mcdelivery/resources/images/login/findpw.png" onclick="location='<c:url value="/"/>'">
    	<h2>비밀번호를 잊어버렸나요?</h2>
    
    <section id="content"> 
    <form action="<c:url value='/member/pwd_find'/>" method="post" onsubmit="return pwd_check()">

    		<h3>가입시 등록하신 고객님의 이메일을 아래에 입력해주세요.</h3>
    		<hr color="#F6F6F6">
       <div id="inputid"> 
            * 아이디: <br>
            <input type="text" id="pwd_id" placeholder="name@mail.com"/>
       </div>
       
         <div id="pwd_menu">
         <input type="submit" value="확인"/>
         <input type="reset" value="취소" onclick="$('#pwd_id').focus()"/>
         <!-- 인라인 방식으로 제이쿼리 함수 지정-->       
         </div>
    </form> 
    </section> 	
    
 </c:if>
 <!-- jstl를 이용하여 결과값을 리턴 받음 -->
 <%
   request.setCharacterEncoding("UTF-8"); 
 %>
 <c:if test="${!empty passwd}">
   <h2 class="pwd_title2">비번찾기 결과</h2>
      <table id="pwd_t2">
         <tr>
            <th>검색된 비번 </th>
            <th> ${passwd} </th>
         </tr>
      </table> 
 </c:if>
            
  </div>
</body>
</html>