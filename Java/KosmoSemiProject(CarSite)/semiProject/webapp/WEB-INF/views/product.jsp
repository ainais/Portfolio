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
		<!-- 성연 폰트 -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gugi&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gugi&family=Poor+Story&display=swap" rel="stylesheet">
    <!-- 성연 폰트 -->
    
    <!-- Modernizer for Portfolio -->
    <script src="resources/js/modernizer.js"></script>


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
	
	<div class="all-title-box">
		<div class="container text-center">
			<h1>차량 상품<span class="m_1">${msessage}</span></h1>
		</div>
	</div>
	
	<!-- ================================================================================================== -->
	<!-- 전체 상품 목록 보러가기 부분 시작 -->
    <div id="overviews" class="section lb">
        <div class="container">
            <div class="section-title row text-center">
                <div class="col-md-8 offset-md-2">
                    <h3><a href="allProduct.do">전체 상품 목록 보러가기</a></h3>
                    <p class="lead">현재 페이지는 등급 별 상품 내용입니다. <br>총 상품을 보고 싶으시면 상품 목록 보러가기를 클릭하세요.</p>
                </div>
            </div><!-- end title -->
    <!-- 전체 상품 목록 보러가기 부분 종료 -->
	<!-- ================================================================================================== -->
            <hr class="invis"> 

	    <!-- ================================================================================================== -->
	<!-- 상품 목록 부분 시작 -->
            <div class="row"> 
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="icon-wrapper wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
                        <i><a href="viewPoint.do?productID=${productList[0].productID}"><img src="${productList[0].productImageSrc}" style="max-width:100%; height:auto;"></a></i>
                        <h3>${productList[0].productName}</h3>
                        <p>회사명 : ${productList[0].productBrand}<br>제품 판매가 : ${productList[0].productPrice}<br> 제품 연비 : ${productList[0].productMileage}
						<small class="readmore">
							<a href="viewPoint.do?productID=${productList[0].productID}">Read more</a>
						</small>
						</p>
                    </div><!-- end icon-wrapper -->
                </div><!-- end col -->

                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="icon-wrapper wow fadeIn" data-wow-duration="1s" data-wow-delay="0.6s">
                        <i><a href="viewPoint.do?productID=${productList[1].productID}"><img src="${productList[1].productImageSrc}" style="max-width:100%; height:auto;"></a></i>
                        <h3>${productList[1].productName}</h3>
                        <p>회사명 : ${productList[1].productBrand}<br>제품 판매가 : ${productList[1].productPrice}<br> 제품 연비 : ${productList[1].productMileage}
						<small class="readmore">
							<a href="viewPoint.do?productID=${productList[1].productID}">Read more</a>
						</small>
						</p>
                    </div><!-- end icon-wrapper -->
                </div><!-- end col -->

                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="icon-wrapper wow fadeIn" data-wow-duration="1s" data-wow-delay="0.4s">
                        <i><a href="viewPoint.do?productID=${productList[2].productID}"><img src="${productList[2].productImageSrc}" style="max-width:100%; height:auto;"></a></i>
                        <h3>${productList[2].productName}</h3>
                        <p>회사명 : ${productList[2].productBrand}<br>제품 판매가 : ${productList[2].productPrice}<br> 제품 연비 : ${productList[2].productMileage}
						<small class="readmore"><a href="viewPoint.do?productID=${productList[2].productID}">Read more</a></small></p>
                    </div><!-- end icon-wrapper -->
                </div><!-- end col -->
            </div><!-- end row -->

            <hr class="hr3"> 
            

            <div class="row"> 
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="icon-wrapper wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
                        <i><a href="viewPoint.do?productID=${productList[3].productID}"><img src="${productList[3].productImageSrc}" style="max-width:100%; height:auto;"></a></i>
                        <h3>${productList[3].productName}</h3>
                        <p>회사명 : ${productList[3].productBrand}<br>제품 판매가 : ${productList[3].productPrice}<br> 제품 연비 : ${productList[3].productMileage}
						<small class="readmore">
							<a href="viewPoint.do?productID=${productList[3].productID}">Read more</a>
						</small>
						</p>
                    </div><!-- end icon-wrapper -->
                </div><!-- end col -->

                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="icon-wrapper wow fadeIn" data-wow-duration="1s" data-wow-delay="0.4s">
                        <i><a href="viewPoint.do?productID=${productList[4].productID}"><img src="${productList[4].productImageSrc}" style="max-width:100%; height:auto;"></a></i>
                        <h3>${productList[4].productName}</h3>
                        <p>회사명 : ${productList[4].productBrand}<br>제품 판매가 : ${productList[4].productPrice}<br> 제품 연비 : ${productList[4].productMileage}
						<small class="readmore">
							<a href="viewPoint.do?productID=${productList[4].productID}">Read more</a>
						</small>
						</p>
                    </div><!-- end icon-wrapper -->
                </div><!-- end col -->

                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="icon-wrapper wow fadeIn" data-wow-duration="1s" data-wow-delay="0.6s">
                        <i><a href="viewPoint.do?productID=${productList[5].productID}"><img src="${productList[5].productImageSrc}" style="max-width:100%; height:auto;"></a></i>
                        <h3>${productList[5].productName}</h3>
                        <p>회사명 : ${productList[5].productBrand}<br>제품 판매가 : ${productList[5].productPrice}<br> 제품 연비 : ${productList[5].productMileage}
						<small class="readmore">
							<a href="viewPoint.do?productID=${productList[5].productID}">Read more</a>
						</small>
						</p>
                    </div><!-- end icon-wrapper -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
<!-- ================================================================================================== -->

	<div id="pricing" class="section cl">
		<div class="container">
			<div class="row text-left stat-wrap">
				<div class="col-md-4 col-sm-4 col-xs-12">
					<span data-scroll class="global-radius icon_wrap effect-1 alignleft"><i class="flaticon-hosting"></i></span>
					<p class="stat_count">12000</p>
					<h3>현재 이용 가능 차량</h3>
				</div><!-- end col -->

				<div class="col-md-4 col-sm-4 col-xs-12">
					<span data-scroll class="global-radius icon_wrap effect-1 alignleft"><i class="flaticon-domain-registration"></i></span>
					<p class="stat_count">24000</p>
					<h3>구매 가능 상품</h3>
				</div><!-- end col -->

				<div class="col-md-4 col-sm-4 col-xs-12">
					<span data-scroll class="global-radius icon_wrap effect-1 alignleft"><i class="flaticon-mail"></i></span>
					<p class="stat_count">5000</p>
					<h3>총 사용한 후기</h3>
				</div><!-- end col -->
			</div><!-- end row -->
		</div><!-- end container -->
	</div><!-- end section -->

    <div class="parallax section dbcolor">
        <div class="container">
            <div class="row logos">
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="resources/images/logo_01.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="resources/images/logo_02.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="resources/images/logo_03.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="resources/images/logo_04.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="resources/images/logo_05.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="resources/images/logo_06.png" alt="" class="img-repsonsive"></a>
                </div>
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->

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
    <!-- ALL JS FILES -->
    <script src="resources/js/all.js"></script>
    <!-- ALL PLUGINS -->
    <script src="resources/js/custom.js"></script>

</body>
</html>