<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/join.css" />">
<!-- 제이쿼리 라이브러리 링크 -->
<script src="/mcdelivery/resources/js/jquery-3.js"></script>
<script src="/mcdelivery/resources/js/jquery-3.4.1.js"></script>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/join.css" />">

<script type="text/javascript">
$(function(){ // 현재 문서가 브라우저로 로딩될 때 자동 호출되는 무명함수		
	  //아이디 검사 및 중복체크
	 
	  
	   $("#idcheck_btn").mouseover(function(){ // 마우스 오버 시	   
		   
	   	    $("#idcheck").hide();//idcheck 영역을 숨김
	  		var userId=$("#userid").val(); // 아이디 저장
	  		
	  		
	  		//1.입력 아이디 길이 체크
	  		if($.trim($("#userid").val()).length < 4){
	  			var warningTxt='<font color="#ed1c24">아이디는 4자 이상이어야 합니다.</font>';
	  			$("#idcheck").text('');// idcheck 영역 초기화
	  			$("#idcheck").show();// idcheck 영역 보임
	  			$("#idcheck").append(warningTxt);//idcheck 영역에 경고메시지 추가	   			
	  			$("#userid").val('').focus();// member_id 텍스트 상자에 커서 이동
	  			return false;
	  			
	  		};
	  		if($.trim($("#userid").val()).length > 12){
	  			var warningTxt='<font color="#ed1c24">아이디는 12자 이하이어야 합니다.</font>';
	  			$("#idcheck").text('');
	  			$("#idcheck").show();
	  			$("#idcheck").append(warningTxt);
	  			$("#userid").val('').focus();
	  			return false;
	  		};
	  		//2.입력 아이디 유효성 검사
	  		if(!(validate_userid(userId))){//유효성검증 함수 호출(false인 경우)
	  			var warningTxt='<font color="#ed1c24">영문 소문자 시작과 숫자 및 _ 조합만 가능</font>';
	  			  $("#idcheck").text('');
	  			  $("#idcheck").show();
	  			  $("#idcheck").append(warningTxt);
	  			  $("#userid").val('').focus();
	  			  return false;
	  		};
	  		
	  	  //아이디 중복확인
	      $.ajax({//$는  jQuery. 즉 jQuery ajax 함수를 실행
	    	  type:"post",//데이터 전송 방식
	    	  url:"/member/idCheckForm", //서버 파일 주소 와 경로
	          data: {"userId":userId}, //useId에 변수값을 저장하여 넘김
	          datatype:"jsp",// 통신할 문서의 데이터 타입
	          success: function (data) {//통신이 성공한 경우 결과값을 data에 저장
	        	  if(data==1){//아이디가 중복인 경우      		
	        		var warningTxt='<font color="#ed1c24">중복 아이디입니다.</font>';
	        		$("#idcheck").text('');
	          		$("#idcheck").show();
	          		$("#idcheck").append(warningTxt);
	            	$("#userid").val('').focus();
	            	return false;	   	     
	        	  }else{//아이디가 중복이 아닌 경우
	        		var warningTxt='<font color="#6799FF">사용가능한 아이디입니다.</font>';
	        		$("#idcheck").text('');
	        		$("#idcheck").show();
	        		$("#idcheck").append(warningTxt);
	        		$("#userpwd").focus(); // member_pass 상자로 이동
	        	  }  	    	  
	          },
	      	  error:function(){ // 비동기 통신 실패
	      		  alert("data error");
	      	  }
	      });//$.ajax	
	      return false; // 다음 태그 수행 금지   
	     });	   
	 //아이디 중복 체크 끝
	   function validate_userid(userId){
	 	  var pattern= new RegExp(/^[a-z][a-z0-9_]+$/);//영문소문자,숫자와_만 허용
	 	  return pattern.test(userId);
	   }
	   $('#Form').submit(function(){
		   $('#pwd2').on('keyup', function(){
				if($('#pwd').val() == $('#pwd2').val()){
					$('#pwdDiv').html("비밀번호가 일치하지 않습니다.");
					return false;
					} else{
				$('#pwdDiv').html("");
				}

		   });
	   
		   })
 }); // $(function()
</script>
</head>
<body>

<div id="join_wrap" align="center">
<img src="/mcdelivery/resources/images/join/mc_icon.png" style="margin-top: 30px;"/>
  	
<h2 class="title">회원가입</h2>
    <form action="<c:url value='/member/signup' />" name="f" method="post">
     
	<table id="join_t">
		<tr>
			<th colspan="2" align="left">ID</th>
		</tr>
        <tr>
        	<td width="30px"><img src="/mcdelivery/resources/images/join/id.png" style="height:30px;"/></td>	
			<td>
				<input name="userid" id="userid" size="14" placeholder="User id" required="required">
				<input type="button" class="btn1" value="중복체크" id="idcheck_btn" >
				<br>
				<!-- 경고문이 출력되는 위치  -->
				<span id="idcheck"> </span>
			</td>
		</tr>
		<tr>
			<th colspan="2" align="left">PW</th>
	    </tr>
  	    <tr>
  	    	<td width="30px"><img src="/mcdelivery/resources/images/join/pw.PNG" style="height:23px; margin-left: 3px;"/></td>	
			<td>
				<input type="password" id="userpwd" name="userpwd" placeholder="User pw" required="required">
			</td>
		</tr>
<!-- 		<tr> -->
<!-- 	        <th colspan="2" align="left">Confirm</th> -->
<!-- 	     </tr> -->
<!--     	 <tr> -->
<!--     	 	<td width="30px"><img src="/my/resources/images/join/pw.PNG" style="height:23px;margin-left: 3px;"/></td>    -->
<!-- 			<td> -->
<!-- 				<input type="password" id="userpwdchk" name="userpwdchk" size="14" placeholder="Confrim pw" required="required"> -->
<!-- 			</td> -->
<!-- 		</tr> -->
		

	</table>
    <div id="join_menu">  
   		<input type="submit" class="btn" id="signupBtn" value="register"/>	<!--유효성 검사하게되면 disabled="disable"해놓기 -->
   		<input class="btn" type="reset" value="reset" onclick="$('id').focus();"/>
   	</div>	
</form>
</div>

</body>
</html>
