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

	<!-- 성연 폰트 -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gugi&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gugi&family=Poor+Story&display=swap" rel="stylesheet">
    <!-- 성연 폰트 -->

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
	<!-- 배너 사진 나오는 부분 시작 -->
	<div class="all-title-box">
		<div class="container text-center">
			<h1>
				EVENT
				<span class="m_1">Own Many Car에서 쏩니다!</span>
			</h1>
		</div>
	</div>
	<!-- 배너 사진 나오는 부분 종료 -->
	<!-- ==================================================================================== -->



	<!-- ==================================================================================== -->
	<!-- 하이퍼링크 시작 -->
	<div class="text-center">
		<br>
		<br>
		<div class="pricingTable-sign-up">
			<a href="#monthlySpecialPrice" class="hover-btn-new"><span>이 달의 특가</span></a> 
			<a href="#joinEvent" class="hover-btn-new"><span>회원가입 이벤트</span></a> 
			<a href="#subscribeEvent" class="hover-btn-new"><span>차량구독 이벤트</span></a>
		</div>
		<!-- BUTTON BOX-->
		<br>
		<br>
	</div>
	<!-- 하이퍼링크 종료 -->
	<!-- ==================================================================================== -->




	<!-- ==================================================================================== -->
	<!-- 이달의 특가 시작 -->
	<p id="monthlySpecialPrice"> </p>
		
	<div id="hosting" class="section wb" style="background: rgb(248, 248, 248)">
        <div class="container">
            <div class="section-title text-center">
                <h3>이 달의 특가</h3>
                <p class="lead">절대 놓치지 마세요. 여름맞이 7월 한정 특가 이벤트! <br> 할인된 가격으로 만나는 나만의 프리미엄 드림 카!</p>
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
	<!-- 회원가입 이벤트 시작 -->	
    <div id="overviews" class="section lb">
        <div class="container">
        
        <p id="joinEvent"> </p>
        
            <div class="section-title row text-center" >
                <div class="col-md-8 offset-md-2">
                    <h3>회원가입 이벤트</h3>
                    <p class="lead">OWN MANY CAR의 가족이 되어주세요! <br> WELCOME 쿠폰이 기다리고 있습니다~</p>
                </div>
            </div>
            <!-- end title -->


            <hr class="invis"> 

            <div class="row"> 
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="icon-wrapper wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
                    
                    <!-- 아이콘을 직접 가져와서 적용해보려고하니 템플릿에 원하는대로 적용되지 않았다. -->
                    <!-- <img src="resources/images/icon1.png"  alt="" class="img-fluid" width="50px" height="50px"> -->
                        
                    <i class="  flaticon-money global-radius effect-1 alignleft"></i >
                        
<!-- 기본 템플릿에 있는 아이콘 미리보기. 주석 지우고 아이콘 확인한 다음 다시 주석으로 만들어주세요
                   
                        <i class="flaticon-amazon-logo global-radius effect-1 alignleft"></i>
                        <i class="flaticon-ambulance global-radius effect-1 alignleft"></i>
                        <i class="flaticon-android global-radius effect-1 alignleft"></i>
                        <i class="flaticon-apple global-radius effect-1 alignleft"></i>
                        <i class="flaticon-bathtub global-radius effect-1 alignleft"></i>
                        <i class="flaticon-binoculars global-radius effect-1 alignleft"></i>
                        <i class="  flaticon-briefcase  global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-calendar  global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-cer-file-format global-radius effect-1 alignleft"></i >
                        <i class="  flaticon-cloud-computing global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-cloud-computing-1  global-radius effect-1 alignleft"></i >
                        <i class="  flaticon-coding global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-coupon  global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-cup  global-radius effect-1 alignleft"></i >
                        <i class="  flaticon-customer-service global-radius effect-1 alignleft"></i >
                        <i class="  flaticon-devices global-radius effect-1 alignleft"></i >
                        <i class="  flaticon-domain-registration global-radius effect-1 alignleft"></i >
                        <i class="  flaticon-download global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-family-room  global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-first-aid-kit  global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-folder  global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-full-bed  global-radius effect-1 alignleft"></i >
                        <i class="  flaticon-github global-radius effect-1 alignleft"></i >
                        <i class="  flaticon-happy global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-hosting  global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-house  global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-idea  global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-lifesaver-security-sportive-tool  global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-line-graph  global-radius effect-1 alignleft"></i >
                        <i class="  flaticon-list global-radius effect-1 alignleft"></i >
                        <i class="  flaticon-locked global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-mail  global-radius effect-1 alignleft"></i >
                        <i class="  flaticon-money global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-new-file  global-radius effect-1 alignleft"></i >
                        <i class="  flaticon-padlock global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-pantone  global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-play-button  global-radius effect-1 alignleft"></i >
                        <i class="  flaticon-price-tag global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-school-bus  global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-search global-radius effect-1 alignleft"></i >
                        <i class="  flaticon-server global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-stopwatch  global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-support  global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-swimming-pool  global-radius effect-1 alignleft"></i >
                        <i class="  flaticon-unlink global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-windows  global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-wordpress-logo  global-radius effect-1 alignleft"></i >
                        <i class=" flaticon-world-wide-web  global-radius effect-1 alignleft"></i >
                        
-->     
                        
                        <h3>3개월 구독 할인권</h3>
                        <p>고객님께서 차량 구독서비스를 조금 더 친숙하고 부담없이 느껴주셨으면 하는 마음입니다.
						<small class="readmore">
							<a href="membership.do">가입하기</a>
						</small>
						</p>
                    </div><!-- end icon-wrapper -->
                </div><!-- end col -->

                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="icon-wrapper wow fadeIn" data-wow-duration="1s" data-wow-delay="0.6s">
                        <i class="  flaticon-download global-radius effect-1 alignleft"></i >
                        <h3>주유 5만원권</h3>
                        <p>소중한 당신께 드리는 저희의 마음입니다. 가벼운 마음으로 더 넓은 세상을 향해 떠나세요!
						<small class="readmore">
							<a href="membership.do">가입하기</a>
						</small>
						</p>
                    </div><!-- end icon-wrapper -->
                </div><!-- end col -->

                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="icon-wrapper wow fadeIn" data-wow-duration="1s" data-wow-delay="0.4s">
                        <i class=" flaticon-calendar  global-radius effect-1 alignleft"></i >
                        <h3>무료 구독 1개월권</h3>
                        <p>자동차 구독 서비스는 처음이시라구요? 걱정마세요! 지금 당장 1개월 무료 체험해보세요! 
						<small class="readmore"><a href="membership.do">가입하기</a></small></p>
                    </div><!-- end icon-wrapper -->
                </div><!-- end col -->
            </div><!-- end row -->

			<br>
			<br>

            <hr class="invis"> 
            
	<!-- 회원가입 이벤트 종료 -->	
	<!-- ==================================================================================== -->
	
	
	<!-- ==================================================================================== -->
	<!-- 차량구독 이벤트 시작 -->	
		<p id="subscribeEvent"> </p>

            <div class="section-title row text-center" >
                <div class="col-md-8 offset-md-2">
                    <h3>차량구독 이벤트</h3>
                    <p class="lead">월 정액으로 누리는 차량구독 서비스! <br> 지금 구독하시면 구독감사 쿠폰을 드립니다.</p>
                </div>
            </div>
            <!-- end title -->
            


            <div class="row"> 
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="icon-wrapper wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
                        <i class=" flaticon-line-graph  global-radius effect-1 alignleft"></i >
                        <h3>구독 1년 연장 10% 할인권</h3>
                        <p>저희는 저희와 함께한 인연을 소중히 생각합니다. 다시한번 저희와 함께해주신 고객분께 연간 구독 10% 할인권을 드립니다!
						<small class="readmore">
							<a href="membership.do">구독하기</a>
						</small>
						</p>
                    </div><!-- end icon-wrapper -->
                </div><!-- end col -->

                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="icon-wrapper wow fadeIn" data-wow-duration="1s" data-wow-delay="0.4s">
                       <i class=" flaticon-family-room  global-radius effect-1 alignleft"></i >
                        <h3>주유 10만원권</h3>
                        <p>감사하고 소중한 당신께 드리는 저희의 소소한 마음입니다. 가벼운 마음으로 더 넓은 세상을 향해 떠나세요!
						<small class="readmore">
							<a href="membership.do">구독하기</a>
						</small>
						</p>
                    </div><!-- end icon-wrapper -->
                </div><!-- end col -->

                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="icon-wrapper wow fadeIn" data-wow-duration="1s" data-wow-delay="0.6s">
                        <i class=" flaticon-swimming-pool  global-radius effect-1 alignleft"></i >
                        <h3>내부+외부 무료세차권</h3>
                        <p>고객님께서 조금 더 쾌적하게 서비스를 이용하실 수 있게끔, 외부 뿐만 아니라 내부까지 가능한 무료 세차권을 드립니다.
						<small class="readmore">
							<a href="membership.do">구독하기</a>
						</small>
						</p>
                    </div><!-- end icon-wrapper -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
    
	<!-- 차량구독 이벤트 종료 -->	  
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