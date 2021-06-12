 
 function back_btn(){
	 var path = document.getElementById('path').value
	 location.href=path+"/menu.do"
 }
 
 function pay_btn(){
	 alert('test');
	 address = document.getElementById("address").value;
	 alert(address);
	 var len = document.getElementsByName("payment").length;
	 payment = "";
	 for(var i=0; i<len; i++){
		 if(document.getElementsByName("payment")[i].checked)
			 payment = document.getElementsByName("payment")[i].value;
	 }
	 alert(payment);
	 
	 var rpath ="pay.do?address="+address+"&payment="+payment;
	 location.href = rpath;
 }
 
 function del_btn(id){
	    
     basket_num = document.getElementById(id).value;
     alert(basket_num);
     alert('삭제되었습니다.');
     var path = "pay2.do?basket_num="+basket_num;
     location.href = path;
  }