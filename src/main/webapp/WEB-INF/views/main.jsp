<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script>
		function facebook(){
			window.open("https://www.facebook.com/McDonaldsKorea")
		}
		function instagram(){
			window.open("https://www.instagram.com/mcdonalds_kr/")
		}
		function youtube(){
			window.open("https://www.youtube.com/user/McDonaldsKor")
		}
		function twitter(){
			window.open("https://twitter.com/mcdonalds_kor/")
		}

		
	</script>
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style type="text/css">
#headbg{background-color:black; background-image: url('resources/images/main/bg.png'); background-repeat: no-repeat; width:100%; background-attachment: scroll; background-position: top;}
.icon{
	height: 65px;
	width: 70px;
}
</style>

<title>Enjoy McDelivery!</title>
</head>

<!-- HEADER ================================================== -->
<body>
<c:choose>
	<c:when test="${sessionScope.userid != null}">
		<h2>${sessionScope.userid} 님 반갑습니다!</h2>
		<h2><a href="<c:url value='/board/getBoardList' />">게시판</a></h2>
		<h2><a href="<c:url value='/member/logout' />">로그아웃</a></h2>
	</c:when>
	<c:otherwise>

			  <div id="headbg">
    <div class="navbar-wrapper">
      <div class="container">
        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <a class="navbar-brand" href='<c:url value="/"/>'>McDelivery</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li><a href="./menu/setmenu.jsp">Menu</a></li>
                <li><a href="<c:url value='/board/default'/>">Order</a></li>
                <li><a href="#contact">Contact</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Member <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                  	<li class="dropdown-header">Member Page</li>
                    <li><a href="<c:url value='/member/loginForm' />">Login</a></li>
                    <li><a href="<c:url value='/member/signupForm' />">Join</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-header"><a href="<c:url value='/board/default' />" >Order List</a></li>
                    <li><a href="#">Cart</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </nav>
      </div>
    </div>
		
<!-- 슬라이드================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000" style="height: 480px; color:none;">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox" style="transition: .1s ease-in-out left;">
        <div class="item active" align="center">
          <img class="first-slide" src="resources/images/main/index1.jpg" alt="First slide" style="background-color: none;">
          <div class="container">
            <div class="carousel-caption">
              <p><a class="btn btn-lg btn-danger" href="#" role="button">주문하기</a></p>
            </div>
          </div>
        </div>
        <div class="item" align="center">
          <img class="second-slide" src="resources/images/main/index2.jpg" alt="Second slide" style="background-color: none;">
          <div class="container">
            <div class="carousel-caption">
              <p><a class="btn btn-lg btn-danger" href="#" role="button">자세히보기</a></p>
            </div>
          </div>
        </div>
        <div class="item" align="center">
          <img class="third-slide" src="resources/images/main/banner.jpg" alt="third slide" style="background-color: none;">
          <div class="container">
            <div class="carousel-caption">
              <p><a class="btn btn-lg btn-danger" href="#" role="button">자세히보기</a></p>
            </div>
          </div>
        </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev" style="color: none;">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    </div>
    </div>

<!-- Contents ================================================== -->
	<div class="container-fluid" style="height:700px">
    <div class="container marketing" style="margin-top:150px;">
      <div class="row" align="center" style="margin-bottom: 150px;">
        <div class="col-lg-4" >
          <img class="img-circle" src="resources/images/main/q.PNG" width="140" height="140">
          <h2>Quality</h2>
          <p>품질은 최고의 재료, 엄격한 조리 방법 그리고 안전이 검증된 준비 방법, 뛰어난 맛을 지닌 제품을 말합니다. 맥도날드의 목표는 고객에게 최적의 가격으로 뛰어난 품질의 제품을 제공하는 것입니다.
          	우리는 맥도날드의 엄격한 품질 기준에 따른 고품질의 음식을 제공합니다. 
			맥도날드는 품질을 최우선시하여 품질 관리 시스템을 구축하였습니다.</p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="resources/images/main/s.PNG" width="140" height="140">
          <h2>Service</h2>
          <p>빠르고 친절한 서비스는 맥도날드의 성공에 기반이 되어 왔습니다. 우리의 목표는 고객의 기대를 훨씬 뛰어 넘는 서비스를 제공하는 것입니다. 레스토랑의 크루들이 고객의 입장에서 생각하도록 교육하고, 그에 맞는 책임감과 권한을 부여합니다.
        	  맥도날드의 서비스는 음식을 제공하는데 그치는 것이 아니라 고객의 행복과 즐거움이 되도록 노력하는 것입니다.</p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="resources/images/main//v.PNG" width="140" height="140">
          <h2>Value</h2>
          <p>맥도날드의 가치는 고품질의 음식, 친절한 직원의 응대, 깨끗한 환경 그리고 빠르고 정확한 서비스 등 고객이 맥도날드에서 접하게 되는 모든 경험을 말합니다.
			  맥도날드는 최상의 서비스를 제공하여 고객들이 맥도날드를 방문할 때마다 즐거운 경험을 할 수 있도록 고객의 만족이 100%가 될 때까지 지속적으로 노력합니다. 
			  맥도날드는 음식 이상의 가치를 고객에게 전달하고자 합니다.
		  </p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->


<!-- START THE FEATURETTES -->
      <hr class="featurette-divider">
      <div class="row featurette">
        <div class="col-md-7" style="height:350px;">
          <h2 class="featurette-heading" style="color:#dc1212; margin-top: 50px">McDelivery guide <span class="text-muted" style="font-size: 24px">맥딜리버리 이용안내</span></h2>
          <p class="lead" style="font-size: 18px; margin-top: 40px;">
          	맥딜리버리 메뉴의 가격은 매장과 상이하며 주문 시 최소 배달 금액이 적용됩니다.<br>
			배달 가능 구역 내에서도 기상조건이나 기타 매장의 사정에 따라 배달 서비스 이용이 어려울 수 있습니다.<br>
			주문이 밀리는 시간대에는 배달이 다소 지연될 수 있습니다. 고객님의 너그러운 이해 부탁 드립니다. <br>
			메뉴 주문 시 제공 되는 케찹류나 기타 물품의 경우 기본 제공 수량 기준으로 배달하여 드립니다.</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="resources/images/main/de.PNG" style="margin-top: 100px;">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7 col-md-push-5" style="height:350px;">
          <h2 class="text-muted" style="font-size: 24px; margin-top: 70px;">오리지널에 해쉬 브라운을 더하다, <span class="featurette-heading"  style="color:#dc1212; font-size:30px;">1955 해쉬 브라운!</span></h2>
          <p class="lead" style="font-size: 18px; margin-top: 40px;">
          				한정판매, 1955 신제품 출시! 
          				1955 해쉬 브라운만의 특별한 재료<br>
          				씹으면 바삭바삭, 속은 부드러운 고소한 감자의 맛! 해쉬브라운!<br>
          				두툼한 쇠고기 패티와 고소한 치즈까지!
          </p>
          <p class="lead" style="font-size: 15px; color: #FEC323; margin-top: 20px;">1월 26일 출시(한정판매) / 맥딜리버리 가격 상이 / 휴게소 매장 제외</p>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <iframe width="400" height="300" style="margin-top: 25px;" src="https://www.youtube.com/embed/vMDVmufqD-4" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7" style="height:350px;">
          <h2 class="featurette-heading" style="color:#dc1212; margin-top: 50px;">맥도날드의 생각 <span class="text-muted" style="font-size: 24px;">i'm lovin' it</span></h2>
          <p class="lead" style="font-size: 18px; margin-top: 40px;">10대 청소년과 80세 할아버지가 동료가 되어 서로의 경험을 나누고, <br>
          				    경력이 끊겼던 주부가 다시 꿈을 되찾고,<br>
          				    몸은 불편해도 꿈을 품은 이들이 자신의 가능성을 실현하며,<br>
          				    수줍음 많던 소녀가 다양한 고객들을 통해 세상과의 소통을 배우는 곳.<br><br>
          				    사람이 중심인 회사, 함께 일하고 싶은 회사를 꿈꾸는 맥도날드는 앞으로도 사람을 키우는 일에 더욱 앞장설 것입니다.
          				  </p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="resources/images/main/ms.PNG" width="250" style="margin-top: 50px;"><p style="font-style: italic; text-align: center; color: #FEC323">창립자 : 레이 크록</p>
        </div>
      </div>
      <hr class="featurette-divider">
	</div>
<!-- FOOTER -->
      <footer >        
        <input type="image" class="icon" src="resources/images/main/l_fb.PNG" onclick="facebook()" />
        <input type="image" class="icon" src="resources/images/main/l_ig.PNG" onclick="instagram()"/>
        <input type="image" class="icon" src="resources/images/main/l_yt.png" onclick="youtube()"/>
        <input type="image" class="icon" src="resources/images/main/l_tt.PNG" onclick="twitter()"/>
        <p class="lead" style="text-align: center; font-size: 14px;">&copy; 한국맥도날드(유) | 대표자: 조주연 | 서울특별시 종로구 종로1 교보 생명 빌딩 13층 | 전화번호: 070-7018-4500 | 사업자등록번호: 101-81-26409</p>
        <p class="lead" style="text-align: right; font-size: 14px;"> <a class="pull-right" href="#">Back to top</a></p>
      </footer>

    </div><!-- /.container -->


<!-- Bootstrap core JavaScript================================================== -->
   <!-- Placed at the end of the document so the pages load faster -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
   <script src="resources/js/bootstrap.min.js"></script>
   <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
   <script src="../../assets/js/vendor/holder.js"></script>
   <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
   <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
		
		
	</c:otherwise>
</c:choose>


  </body>
</html>