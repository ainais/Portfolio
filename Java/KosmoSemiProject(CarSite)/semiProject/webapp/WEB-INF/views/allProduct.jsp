<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

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

    <!-- Modernizer for Portfolio -->
    <script src="resources/js/modernizer.js"></script>
	
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
		<!-- 성연 폰트 -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gugi&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gugi&family=Poor+Story&display=swap" rel="stylesheet">
    <!-- 성연 폰트 -->
	<!-- Jquery를 이용하여 검색 필터링 만들기 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="resources/product/allProduct.js"></script>
</head>
<body class="host_version">
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
	<!-- ==================================================================================== -->
	<!-- 상품필터 시작 -->

		<section class="ftco-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table table-responsive-xl">
						  <tbody>
						  	<tr align="center">
						  		<th colspan="9">브랜드별 검색</th>
						  	</tr>
						    <tr align="center">
								<td><a href="allProduct.do">전체보기</a></td>
								<td><img src="resources/images/brand/hyundai.png" width="75" height="50" id="brandHyundai"></td>
								<td><img src="resources/images/brand/kia.png" width="75" height="50" id="brandKia"></td>
								<td><img src="resources/images/brand/audi.png" width="75" height="50" id="brandAudi"></td>
								<td><img src="resources/images/brand/bmw.png" width="75" height="50" id="brandBMW"></td>
								<td><img src="resources/images/brand/chevrolet.png" width="75" height="50" id="brandChevrolet"></td>
								<td><img src="resources/images/brand/jeep.png" width="75" height="50" id="brandJeep"></td>
								<td><img src="resources/images/brand/benz.png" width="75" height="50" id="brandBenz"></td>
								<td><img src="resources/images/brand/porsche.png" width="75" height="50" id="brandPorsche"></td>
						    </tr>
						  </tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		</section>

	<!-- 상품필터 종료 -->	
	<!-- ==================================================================================== -->
<br><br>
	<!-- ==================================================================================== -->
	<!-- 상품목록 시작 -->

		<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">상품목록</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table table-responsive-xl" >
						  <thead>
						    <tr align="center" >
							    <th>상품번호</th>
							    <th>사진(클릭)</th>
							    <th>이름</th>
							    <th>브랜드</th>
							    <th>엔진</th>
							    <th>가격<br>
							    	<button type="button" name="carPriceASC" id="carPriceASC" class="btn btn-default">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-up-fill" viewBox="0 0 16 16">
									<path d="m7.247 4.86-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z"/></svg>
									</button>
									<button type="button" name="carPriceDESC" id="carPriceDESC" class="btn btn-default">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
									<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/></svg>
									</button>
							    </th>
							    <th>등급<br>
							    	<button type="button" name="carGrade" id="carGradeASC" class="btn btn-default">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-up-fill" viewBox="0 0 16 16">
									<path d="m7.247 4.86-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z"/></svg>
									</button>
									<button type="button" name="carGrade" id="carGradeDESC" class="btn btn-default">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
									<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/></svg>
									</button>
							    </th>
							    
							    <th>연비</th>
							    <th>장바<br>구니</th>
						    </tr>
						  </thead>
						  <tbody>
						  <c:forEach items = "${productList}" var="product">
						    <tr class="alert" role="alert" id="productListTable" align="center">
						    	<td><span id="productListID">${product.productID}</span></td>
						      	<td class="d-flex align-items-center">
						      	<a href="viewPoint.do?productID=${product.productID}"><img src="${product.productImageSrc }" width="100" height="100" id="productListImgSrc"/></a></td>
				      			<td>${product.productName }</td>
							    <td>${product.productBrand}</td>
							    <td>${product.productEngine}</td>
								<td><span id="productListPrice">${product.productPrice}</span></td>
							    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							    ${product.productGrade}
							    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								
								<td>${product.productMileage}</td>
								<td><a id="basket"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-cart-plus" viewBox="0 0 16 16">
								<path d="M9 5.5a.5.5 0 0 0-1 0V7H6.5a.5.5 0 0 0 0 1H8v1.5a.5.5 0 0 0 1 0V8h1.5a.5.5 0 0 0 0-1H9V5.5z"/>
								<path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
								</svg></a></td>	
						    </tr>
						  </c:forEach>
						  </tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 상품목록 종료 -->	
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
</body>
</html>