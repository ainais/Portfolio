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

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

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
			<h1>등급별 구독 서비스<span class="m_1">구독을 하면 누릴수잇는 선택의 기회 !! </span></h1>
		</div>
	</div>
	
	<!-- ==================================================================================== -->
	<!-- 멤버쉽 시작 -->	
	<div id="pricing" class="section lb">
        <div class="container">
            <div class="section-title text-center">
                <h3>Own Many Car</h3>
                <p>구독을 하면 원하는 차량을 고르고 이용하는 서비스</p><br>
            <div class="pricingTable-sign-up">
             	<a href="product.do" class="hover-btn-new"><span>등급별 차량 안내</span></a>
             	<a href="event.do" class="hover-btn-new"><span>진행중인 이벤트</span></a>
             	<a href="postScript.do" class="hover-btn-new"><span> 회원님들의 차량 후기 보러가기</span></a>
       		 </div><!-- BUTTON BOX-->
            </div><!-- end title -->

			<div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="pricingTable">
                        <div class="pricingTable-header">
                            <span class="heading">
                                <h3>BEST</h3>
                            </span>
                            <span class="price-value">300,000 원 / <span class="month">월</span> <span>BEST 회원님들이</span><span>누릴수있는 차량소개</span></span>
                        </div>

                        <div class="pricingContent">
                        <i><img src="resources/images/membership/BestLogo.png" style="max-width:100%; height:auto;"></i>
                            <ul>
                                <li>HYUNDAI</li>
                                <li>KIA MOTORS</li>
                                <li>CHEVROLET</li>
                                <li>JEEP</li>
                            </ul>
                        </div><!-- /  CONTENT BOX-->

                        <div class="pricingTable-sign-up">
                            <a href="subscribe.do?subGrade=best" class="hover-btn-new"><span>구독 신청!</span></a>
                        </div><!-- BUTTON BOX-->
                    </div>
                </div>

                <div class="col-md-4 col-sm-6">
                    <div class="pricingTable pink">
                        <div class="pricingTable-header">
                            <span class="heading">
                                <h3>ACE</h3>
                            </span>
                            <span class="price-value">500,000 원 / <span class="month">월</span> <span>ACE 회원님들이</span><span>누릴수있는 차량소개</span></span>
                        </div>

                        <div class="pricingContent">
                        <i><img src="resources/images/membership/AceLogo.png" style="max-width:100%; height:auto;"></i>    
                            <ul>
                                <li>HYUNDAI</li>
                                <li>KIA MOTORS</li>
                                <li>CHEVROLET</li>
                                <li>JEEP</li>
                                <li>AUDI</li>
                                <li>Benz</li>
                            </ul>
                        </div><!-- /  CONTENT BOX-->

                        <div class="pricingTable-sign-up">
                            <a href="subscribe.do?subGrade=ace" class="hover-btn-new"><span>구독신청!</span></a>
                        </div><!-- BUTTON BOX-->
                    </div>
                </div>

                <div class="col-md-4 col-sm-6">
                    <div class="pricingTable orange">
                        <div class="pricingTable-header">
                            <span class="heading">
                                <h3>PREMIER</h3>
                            </span>
                            <span class="price-value">700,000 원 / <span class="month">월</span> <span>PREMIER 회원님들이</span><span>누릴수있는 차량소개</span></span>
                        </div>

                        <div class="pricingContent">
                            <i><img src="resources/images/membership/PremierLogo.png" style="max-width:100%; height:auto;"></i>
                            <ul>
                                <li>HYUNDAI</li>
                                <li>KIA MOTORS</li>
                                <li>CHEVROLET</li>
                                <li>JEEP</li>
                                <li>AUDI</li>
                                <li>BENZ</li>
                                <li>BMW</li>
                                <li>PORSCHE</li>
                            </ul>
                        </div><!-- /  CONTENT BOX-->

                        <div class="pricingTable-sign-up">
                            <a href="subscribe.do?subGrade=premier" class="hover-btn-new"><span>구독신청!</span></a>
                        </div><!-- BUTTON BOX-->
                    </div>
                </div>


            </div>
            
        </div><!-- end container -->
    </div><!-- end section -->
	<!-- 멤버쉽 종료 -->
	<!-- ==================================================================================== -->
		<!-- ================================================================================================== -->
	<!-- 전체 상품 목록 보러가기 부분 시작 -->
        <div class="container">
            <div class="section-title text-center">
                <h3>차량 상품</h3>
                <p class="lead">전체 차량을 보고 싶으시면<br> 
                <h3><a href="allProduct.do">전체 차량 보러가기</a></h3>
                </p>
            </div><!-- end title -->
    <!-- 전체 상품 목록 보러가기 부분 종료 -->
	<!-- ================================================================================================== -->
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
	
	
	<!-- ==================================================================================== -->
	<!-- 이달의 특가 시작 -->
	<p id="monthlySpecialPrice"> </p>
		
	<div id="hosting" class="section wb" style="background: rgb(248, 248, 248)">
        <div class="container">
            <div class="section-title text-center">
                <h3>이벤트 상품</h3>
                <p class="lead">절대 놓치지 마세요. 여름맞이 7월 한정 특가 이벤트! <br> <h3><a href="event.do">전체 이벤트 보러가기</a></h3></p>
            </div><!-- end title -->

            <div class="row dev-list text-center">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
                    <div class="widget server clearfix">
                        <img src="resources/images/hosting_01.jpg" alt="" class="img-fluid">
						<div class="inner-dit">
							<div class="widget-title">
								<h3>BEST 회원</h3>
								<small><del>월 50만</del> &nbsp;→&nbsp; <b>월 30만</b></small>
							</div>
							<!-- end title -->
							<p>2020 현대 팰리세이드</p>
						</div>
						
						<br>
						
                        <a href="allProduct.do" class="hover-btn-new"><span>차량상세보기</span></a>

                    </div><!--widget -->
                </div><!-- end col -->

                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.4s">
                    <div class="widget server clearfix">
                        <img src="resources/images/hosting_02.jpg" alt="" class="img-fluid">
						<div class="inner-dit">
							<div class="widget-title">
								<h3>ACE 회원</h3>
								<small><del>월 90만</del> &nbsp;→&nbsp; <b>월 70만</b></small>
							</div>
							<!-- end title -->
							<p>2021 아우디 Q5</p>
						</div>
						
						<br>

                        <a href="allProduct.do" class="hover-btn-new"><span>차량상세보기</span></a>

                    </div><!--widget -->
                </div><!-- end col -->

                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.6s">
                    <div class="widget server clearfix">
                        <img src="resources/images/hosting_03.jpg" alt="" class="img-fluid">
						<div class="inner-dit">
							<div class="widget-title">
								<h3>Premier 회원</h3>
								<small><del>월 130만</del> &nbsp;→&nbsp; <b>월 110만</b></small>
							</div>
							<!-- end title -->
							<p>2021 벤츠 G클래스</p>
						</div>
						
						<br>
						
                        <a href="allProduct.do" class="hover-btn-new"><span>차량상세보기</span></a>

                    </div><!--widget -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
	<!-- 이달의 특가 종료 -->	
	<!-- ==================================================================================== -->

    <!-- ==================================================================================== -->
	<!-- 후기 시작 -->
 <div id="testimonials" class="parallax section db parallax-off" style="background-image:url('resources/images/parallax_04.jpg');">
        <div class="container">
            <div class="section-title text-center">
                <h3>베스트 후기</h3>
                <p>고객님들의 많은 관심과 사랑 감사드립니다.<br/> 항상 최선을 다하는 Own Many Car가 되도록 노력하겠습니다. </p>
            </div><!-- end title -->

            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="testi-carousel owl-carousel owl-theme">
                        <div class="testimonial clearfix">
                            <div class="desc">
                                <h3><i class="fa fa-quote-left"></i> 구독 서비스의 메리트!</h3>
                                <p class="lead">신차를 구매하기 전 관심이 있는 차량을 충분히 직접 경험해 볼 수 있다는 점과<br>서비스 이용 기간 내 원하는 차량을 교체해가며 이용할 수 있다는 점이 좋았습니다.</p>
                            </div>
                            <div class="testi-meta">
                                <img src="resources/images/testi_01.png" alt="" class="img-fluid">
                                <h4>황정민</h4>
                            </div>
                            <!-- end testi-meta -->
                        </div>
                        <!-- end testimonial -->

                        <div class="testimonial clearfix">
                            <div class="desc">
                                <h3><i class="fa fa-quote-left"></i> 등급별 차량 브랜드 선택!</h3>
                                <p class="lead">멤버십의 등급별로 선택할 수 있는 브랜드의 폭이 달라<br/>원하는 브랜드의 차량을 타기 위해 좀 더 지불하여 타는 것이 <br/>구매하는 것보다 괜찮다고 생각합니다.</p>
                            </div>
                            <div class="testi-meta">
                                <img src="resources/images/testi_02.png" alt="" class="img-fluid">
                                <h4>전지현</h4>
                            </div>
                            <!-- end testi-meta -->
                        </div>
                        <!-- end testimonial -->

                        <div class="testimonial clearfix">
                            <div class="desc">
                                <h3><i class="fa fa-quote-left"></i>360도 view!</h3>
                                <p class="lead">차량의 겉모습도 중요하지만 내부의 구조가 어떻게 되어 있는지 궁금했는데 <br/> 차량의 상세 설명과 함께 360도 view를 볼 수 있어서 제품선택을 보다 원활하게 할 수 있었습니다.</p>
                            </div>
                            <div class="testi-meta">
                                <img src="resources/images/testi_03.png" alt="" class="img-fluid ">
                                <h4>이광수</h4>
                            </div>
                            <!-- end testi-meta -->
                        </div>
                        <!-- end testimonial -->
                        <div class="testimonial clearfix">
                            <div class="desc">
                                <h3><i class="fa fa-quote-left"></i> 차량별 추가 옵션 선택!</h3>
                                <p class="lead">옵션을 추가하였을 때 차량의 색상변경이 적용 되는 것을 먼저 확인해보고<br/>자신의 스타일에 맞는 차를 타 볼수 있어서 좋았습니다.</p>
                            </div>
                            <div class="testi-meta">
                                <img src="resources/images/testi_01.png" alt="" class="img-fluid">
                                <h4>현빈</h4>
                            </div>
                            <!-- end testi-meta -->
                        </div>
                        <!-- end testimonial -->

                        <div class="testimonial clearfix">
                            <div class="desc">
                                <h3><i class="fa fa-quote-left"></i>  1대1 상담문의의 신속한 처리!</h3>
                                <p class="lead">1대1 상담문의의 신속한 처리로 궁금증을 보다 빠르게 해결하여 차량을 잘 받을 수 있었습니다.<br/> 주변에도 추천할게요. </p>
                            </div>
                            <div class="testi-meta">
                                <img src="resources/images/testi_02.png" alt="" class="img-fluid">
                                <h4>손예진</h4>
                            </div>
                            <!-- end testi-meta -->
                        </div>
                        <!-- end testimonial -->

                        <div class="testimonial clearfix">
                            <div class="desc">
                                <h3><i class="fa fa-quote-left"></i> 자유게시판에서의 소통!</h3>
                                <p class="lead">먼저 서비스를 이용 하신 분들의 많은 후기를 보고<br/> 믿고 맡길 수 있는 곳이라고 생각하여 구독하여 사용해봤는데 너무 만족합니다.<br/></p>
                            </div>
                            <div class="testi-meta">
                                <img src="resources/images/testi_03.png" alt="" class="img-fluid">
                                <h4>김수현</h4>
                            </div>
                            <!-- end testi-meta -->
                        </div><!-- end testimonial -->
                    </div><!-- end carousel -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
    <!-- 후기 종료 -->
	<!-- ==================================================================================== -->

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