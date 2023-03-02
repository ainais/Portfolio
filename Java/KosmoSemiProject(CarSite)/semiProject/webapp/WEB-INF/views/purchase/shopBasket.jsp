<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- Site Metas -->
    <title>Own Many Car</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="resources/images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="resources/images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="resources/style.css">
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="resources/css/versions.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="resources/css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="resources/css/custom.css">
		<!-- 성연 폰트 -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gugi&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gugi&family=Poor+Story&display=swap" rel="stylesheet">
    <!-- 성연 폰트 -->
		<!-- ==================================== -->
	<!-- 템플릿 CSS 시작 -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="resources/product/table05_cssfonts/icomoon/style.css">

    <link rel="stylesheet" href="resources/product/table05_csscss/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="resources/product/table05_csscss/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="resources/product/table05_csscss/style.css">
	<!-- 템플릿 CSS 종료 -->
	<!-- ==================================== -->
	
    <!-- Modernizer for Portfolio -->
    <script src="resources/js/modernizer.js"></script>

	<!-- Jquery를 이용하여 삭제 만들기 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
	$(function(){
		$("#shopBasketTable td span").click(function(){
 			$.ajax({
				type:"post",
				url:"deleteShopBasket.do",
				contentType : "application/x-www-form-urlencoded;charset=UTF-8",
				data:{
					productID : $(this).parents("#shopBasketTable").find("#shopProductID").text(),
					basketRegDate : $(this).parents("#shopBasketTable").find("#shopProductRegDate").text()
					
				},
				success:function(message){
					alert(message);
				}
			}) // end of ajax 
			location.reload();
		}) // end of click
	}) // end of function
	</script>
</head>
<body>
<!-- ==================================================================================== -->
	<!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="index.jsp">
					<img src="resources/images/logo-hosting.png" alt="" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-host" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
					<span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-host">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="about.do">&nbsp;&nbsp;회사소개&nbsp;&nbsp;</a></li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="product.do" id="dropdown-a" data-toggle="dropdown">&nbsp;&nbsp;상품목록&nbsp;&nbsp;</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="product.do">차량 상품 </a>
								<a class="dropdown-item" href="allProduct.do">전체 차량 상품 </a>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="product.do" id="dropdown-a" data-toggle="dropdown">&nbsp;&nbsp;게시판&nbsp;&nbsp;</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="postScript.do">후기</a>
								<a class="dropdown-item" href="faq.do">FAQ</a>
								<a class="dropdown-item" href="freeBoard.do">자유게시판</a>
							</div>
						</li>
						<li class="nav-item"><a class="nav-link" href="membership.do">&nbsp;&nbsp;멤버쉽&nbsp;&nbsp;</a></li>
						<li class="nav-item"><a class="nav-link" href="contact.do">&nbsp;&nbsp;문의하기&nbsp;&nbsp;</a></li>
						<li class="nav-item"><a class="nav-link" href="event.do">&nbsp;&nbsp;이벤트&nbsp;&nbsp;</a></li>
						<c:if test="${sessionScope.loginSession != null }">
							<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="mypage.do" id="dropdown-a" data-toggle="dropdown">&nbsp;&nbsp;마이페이지&nbsp;&nbsp;</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="mypage.do">마이페이지</a>
								<a class="dropdown-item" href="shopBasket.do">장바구니</a>
								<a class="dropdown-item" href="myPageWrite.do">내가 작성한 글</a>
							</div>
							</li>
							
						</c:if>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->
	<!-- ==================================================================================== -->
	<c:if test="${sessionScope.loginSession == null}">
    	<h1>세션이 만료되었습니다.</h1>
    </c:if>
    <c:if test="${sessionScope.loginSession != null}">

	<!-- ==================================================================================== -->
	<!-- 상품목록 시작 -->
		<br>
		<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h1 class="heading-section">${sessionScope.loginSession.userID} 님의 장바구니 목록입니다.</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
					<form action="purchaseProduct.do" method="post">
						<table class="table table-responsive-xl" >
						  <thead>
						    <tr align="center" >
							    <th>상품 아이디</th>
							    <th>상품 가격(만원)</th>
							    <th>상품 이미지</th>
							    <th>장바구니 담은 시간</th>
							    <th>장바구니에서 제거</th>
						    </tr>
						  </thead>
						  
						  <tbody>
					    	<c:forEach items = "${shopBasketList}" var="shopBasket">
							<tr align="center" id="shopBasketTable">
								<td id="shopProductID">${shopBasket.productID}</td>
								<td>${shopBasket.productPrice }</td>
								<td><img src="${shopBasket.productImageSrc }" width="100" height="100"/></td>
								<td id ="shopProductRegDate">${shopBasket.basketRegDate }</td>
								<td><span><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-cart-x-fill" viewBox="0 0 16 16">
								<path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zM7.354 5.646 8.5 6.793l1.146-1.147a.5.5 0 0 1 .708.708L9.207 7.5l1.147 1.146a.5.5 0 0 1-.708.708L8.5 8.207 7.354 9.354a.5.5 0 1 1-.708-.708L7.793 7.5 6.646 6.354a.5.5 0 1 1 .708-.708z"/>
								</svg></span></td>
							</tr>
							</c:forEach>
							<tr align="center">
								<td colspan="5"><input type="submit" value="결제하기"></td>
							</tr>
						  </tbody>
						</table>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 상품목록 종료 -->	
	<!-- ==================================================================================== -->
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<!-- ====================================================================== -->
	<!-- Footer시작 -->

    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>OWN Many car 소개</h3>
                        </div>
                        <p>저희 회사에서는 8개의 국내외 자동차 브랜드와 협약을 맺었고, 구독하여 신청가능한 자동차의 종류가 무려 200 대 입니다. Best등급, Ace등급, Premier등급별로 원하는 브랜드의 선택과 차종의 선택이 제한될 수 있습니다.  </p>
                        <p>구독 기간내에 원하는 차종을 바꿔가며 탈 수 있습니다! 또한 언제든지 구독을 취소할 수도 있으니, 이보다 더 좋을 수 있을까요? 한번쯤 타보고 싶었던 프리미엄 차들, 이 기회에 나의 차로 만드세요!</p>
                    </div><!-- end clearfix -->
                </div><!-- end col -->

				<div class="col-lg-4 col-md-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>OWN Many car</h3>
                        </div>
                        <ul class="footer-links">
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="about.do">회사소개</a></li>
                            <li><a href="product.do">상품목록</a></li>
							<li><a href="freeBoard.do">게시판</a></li>
							<li><a href="membership.do">멤버쉽</a></li>
							<li><a href="contact.do">문의하기</a></li>
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->
				
                <div class="col-lg-4 col-md-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>OWN Many car 정보</h3>
                        </div>

                        <ul class="footer-links">
                            <li><a href="mailto:#">OWNmc@naver.com</a></li>
                            <li><a href="index.jsp">www.ownmanycar.com</a></li>
                            <li>서울 금천구 가산디지털2로 123 월드메르디앙벤처센터II</li>
                            <li>010-1234-5678</li>
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->
				
            </div><!-- end row -->
        </div><!-- end container -->
    </footer><!-- end footer -->
	<!-- Footer종료 -->
	<!-- ====================================================================== -->
    <script src="resources/product/table05_css/js/jquery-3.3.1.min.js"></script>
    <script src="resources/product/table05_css/js/popper.min.js"></script>
    <script src="resources/product/table05_css/js/bootstrap.min.js"></script>
    <script src="resources/product/table05_css/js/main.js"></script>
    
    </c:if>
</body>
</html>