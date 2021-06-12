function order_set(name){
	var user_id = document.getElementById('user_id').value;
	var path = document.getElementById('path').value
	if(user_id=='null'){
		alert('로그인 후 이용 가능합니다')
		return false
	}
	location.href=path+"/basket/basket.jsp?name="+name+"&cate=set"
}

function order_burger(name){
	var user_id = document.getElementById('user_id').value;
	var path = document.getElementById('path').value
	if(user_id=='null'){
		alert('로그인 후 이용 가능합니다')
		return false
	}
	location.href=path+"/basket/basket.jsp?name="+name+"&cate=burger"
}

function order_drinks(name){
	var user_id = document.getElementById('user_id').value;
	var path = document.getElementById('path').value
	if(user_id=='null'){
		alert('로그인 후 이용 가능합니다')
		return false
	}
	location.href=path+"/basket/basket.jsp?name="+name+"&cate=drinks"
}

function order_dessert(name){
	var user_id = document.getElementById('user_id').value;
	var path = document.getElementById('path').value
	if(user_id=='null'){
		alert('로그인 후 이용 가능합니다')
		return false
	}
	location.href=path+"/basket/basket.jsp?name="+name+"&cate=dessert"
}

function order_snacks(name){
	var user_id = document.getElementById('user_id').value;
	var path = document.getElementById('path').value
	if(user_id=='null'){
		alert('로그인 후 이용 가능합니다')
		return false
	}
	location.href=path+"/basket/basket.jsp?name="+name+"&cate=snacks"
}


function pay_btn(){
	
	var path = document.getElementById('path').value
	
	if(confirm('결제하시겠습니까?')){
		location.href=path+"/pay2.do"
	}else{
		return false
	}
}


