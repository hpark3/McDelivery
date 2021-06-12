/*join.js*/
  /* 기본 회원정보 체크 */
	  function mem_check(){
	  	if($.trim($("#id").val())==""){
	  		alert("회원아이디를 입력하세요!");
	  		$("#id").val("").focus();
	  		return false;
	  	}
	  	if($.trim($("#pw").val())==""){
	  		alert("비밀번호를 입력하세요!");
	  		$("#pw").val("").focus();
	  		return false;
	  	}
	  	if($.trim($("#pw2").val())==""){
	  		alert("비밀번호확인을 입력하세요!");
	  		$("#pw2").val("").focus();
	  		return false;
	  	}
	  	if($.trim($("#pw").val()) 
	  			!= $.trim($("#pw2").val())){
	  		alert("비밀번호가 일치하지 않습니다!");
	  		$("#pw").val("");//비번 입력창 초기화
	  		$("#pw2").val("");
	  		$("#pw").focus();//비번입력창으로 초기화
	  		return false;
	  	}
	  	if($.trim($("#name").val())==""){
	  		alert("회원이름을 입력하세요!");
	  		$("#name").val("").focus();
	  		return false;
	  	}
	  	if($.trim($("#zip1").val())==""){
	  		alert("우편번호를 입력하세요!");
	  		$("#zip1").val("").focus();
	  		return false;
	  	}
	  	if($.trim($("#zip2").val())==""){
	  		alert("우펀번호를 입력하세요!");
	  		$("#zip2").val("").focus();
	  		return false;
	  	}
	  	if($.trim($("#address1").val())==""){
	  		alert("주소를 입력하세요!");
	  		$("#address1").val("").focus();
	  		return false;
	  	}
	  	if($.trim($("#address2").val())==""){
	  		alert("나머지 주소를 입력하세요!");
	  		$("#address2").val("").focus();
	  		return false;
	  	}
	  }
	
   /* 우편번호 입력 창 클릭 시 경고창  */	  
  function post_search(){
    	alert("우편번호검색 버튼을 클릭하세요!");
  }

  //우편번호 검색창
  function post_check(){
	   	window.open("zipcode_find.do","우편번호주소찾기",
	    			"width=450,height=150");
	    	//자바스크립트에서 window 객체의 open()메서드로 새로운 공지창을 만듬
	    	//폭이 450,높이 150 인 새로운 공지창을 만듬.
   }	
  
  /* 정보 수정 체크 */
  function edit_check(){	
  	if($.trim($("#pw").val())==""){
  		alert("비밀번호를 입력하세요!");
  		$("#pw").val("").focus();
  		return false;
  	}
  	if($.trim($("#pw2").val())==""){
  		alert("비밀번호확인을 입력하세요!");
  		$("#pw2").val("").focus();
  		return false;
  	}
  	if($.trim($("#pw").val()) 
  			!= $.trim($("#pw2").val())){
  		alert("비밀번호가 일치하지 않습니다!");
  		$("#pw").val("");//비번 입력창 초기화
  		$("#pw2").val("");
  		$("#pw").focus();//비번입력창으로 초기화
  		return false;
  	}
  	if($.trim($("#name").val())==""){
  		alert("회원이름을 입력하세요!");
  		$("#name").val("").focus();
  		return false;
  	}

  	if($.trim($("#zip1").val())==""){
  		alert("우편번호를 입력하세요!");
  		$("#zip1").val("").focus();
  		return false;
  	}
  	if($.trim($("#zip2").val())==""){
  		alert("우펀번호를 입력하세요!");
  		$("#zip2").val("").focus();
  		return false;
  	}
  	if($.trim($("#address1").val())==""){
  		alert("주소를 입력하세요!");
  		$("#address1").val("").focus();
  		return false;
  	}
  	if($.trim($("#address2").val())==""){
  		alert("나머지 주소를 입력하세요!");
  		$("#address2").val("").focus();
  		return false;
  	}
  }