 function plus_btn(){
	 
	 m_cnt = document.getElementById("c");
	 
	 m_cnt.value = Number(m_cnt.value) + 1;
	 m_cnt2.value = m_cnt.value;
	 add.src="../img/btn/add2.PNG";
 }
 
 function minus_btn(){
	 m_cnt = document.getElementById("c");
	 
	 if(Number(m_cnt.value)>0){
		 m_cnt.value = Number(m_cnt.value) - 1;
	 }
	 
	 if((Number(m_cnt.value)-1)<=0){
		 add.src="../img/btn/add.PNG";
	 }
	 
	 m_cnt2.value = m_cnt.value;

 }
 
 function back_btn(){
	 history.back();
 }
 
 function add_btn(){
	 m_name = document.getElementById("m_name").value;
	 folder = document.getElementById("folder").value;
	 cnt = Number(document.getElementById("c").value);
	 if(cnt==0){
		 alert('1개 이상 주문하셔야 합니다.');
		 return false;
	 }else{
		 var rpath = "../add.do?cnt="+cnt+"&category="+folder+"&name="+m_name;
		 location.href = rpath;
	 }
 }