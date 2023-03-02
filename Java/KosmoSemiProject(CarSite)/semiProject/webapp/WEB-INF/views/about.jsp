<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
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
   
   <div class="all-title-box">
      <div class="container text-center">
         <h1>OWN MANY CAR<span class="m_1">합리적이고 안전한 차량구독 시스템</span></h1>
      </div>
   </div>
   
   	<!-- ==================================================================================== -->
	<!-- 회사소개 부분 시작 -->
    <div id="overviews" class="section lb">
        <div class="container">
            <div class="section-title row text-center">
                <div class="col-md-8 offset-md-2">
                    <h3>내 차 만들기</h3>
                    <p class="lead">급변하는 세상, 쏟아지는 신차! 세상은 넓고, 가고 싶은 곳도 많다!</p>
                    <p class="lead">지금 바로 구독하세요! OWN MANY CAR</p>
                </div>
            </div><!-- end title -->
        
            <div class="row align-items-center">
                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                    <div class="message-box">
                        <h4>아직도 차량 구매해서 타시나요?</h4>
                        <h2>차량 구독 시스템</h2>
                        <p>우리는 영화, 드라마, 음악, 프로그램 등 많은 것을 구독하고 있죠!</p>

                        <p>&nbsp;이제는 더이상 자동차를 구매할 필요 없이, 월 일정 금액을 지불해 나만의 DREAM CAR를 탈 수 있습니다. 
                        자동차 구독은 장기렌트와는 달리 필요한 일정 기간동안만 차를 탈 수 있고, 자동차세, 취등록세, 보험료, 유지비 등 기타 비용이 전혀 들지 않습니다. 
                        게다가 초기 납입금이 들어가지 않고, 계약기간 내에 원하는 차종으로 교체할 수 있는 장점이 있습니다! </p>

                        <p>지금이 바로 자동차 구독할 시간!</p>

                        <a href="membership.do" class="hover-btn-new"><span>구독하기</span></a>
                    </div><!-- end messagebox -->
                </div><!-- end col -->
            
            <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                    <div class="post-media wow fadeIn">
                        <img src="resources/images/about_02.jpg" alt="" class="img-fluid img-rounded">
                    </div><!-- end media -->
                </div><!-- end col -->
         </div>
         <div class="row align-items-center">
            <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                    <div class="post-media wow fadeIn">
                        <img src="resources/images/about_03.jpg" alt="" class="img-fluid img-rounded">
                    </div><!-- end media -->
                </div><!-- end col -->
            
            <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                    <div class="message-box">
                        <h2> OWN MANY CAR ! </h2>
                        <p>저희 회사에서는 8개의 국내외 자동차 브랜드와 협약을 맺었고, 구독하여 신청가능한 자동차의 종류가 무려 200 대 입니다. 
                        Best등급, Ace등급, Premier등급별로 원하는 브랜드의 선택과 차종의 선택이 제한될 수 있습니다. 
                        구독 기간내에 원하는 차종을 바꿔가며 탈 수 있습니다! 또한 언제든지 구독을 취소할 수도 있으니, 이보다 더 좋을 수 있을까요? 
                        한번쯤 타보고 싶었던 프리미엄 차들, 이 기회에 나의 차로 만드세요! </p>

                        <p> 지금 바로 구독가능한 차량을 확인해보세요!</p>

                        <a href="allProduct.do" class="hover-btn-new"><span>차량보기</span></a>
                    </div><!-- end messagebox -->
                </div><!-- end col -->
            
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
	<!-- 회사소개 부분 종료 -->
	<!-- ==================================================================================== -->
		<!-- ==================================================================================== -->
	<!-- Our History 시작 -->
<section class="page-section">
      <div class="container">
          <div class="section-title row text-center">
                <div class="col-md-8 offset-md-2">
                    <h3>개발일지</h3>
                    <p class="lead">저희는 서울 금천구 가산동에 위치한 한국소프트웨어인재개발원(KOSMO)의 86기 수강생 강성연, 구효원, 김동현, 이정성입니다. 현재 응용SW활용 빅데이터구축 전문가양성과정을 공부하고 있습니다.</p>
                </div>
            </div><!-- end title -->
            
            
         <div class="timeline">
            <div class="timeline__wrap">
               <div class="timeline__items">
                  <div class="timeline__item">
                     <div class="timeline__content img-bg-01">
                        <h2>2021-04-22</h2>
                        <p>개발자가 되기 위해 공부를 시작한 첫 날입니다. 긴장과 설렘의 분위기가 가득했지만, 32명의 수강생 모두의 눈빛은 열정으로 뜨거웠습니다.</p>
                     </div>
                  </div>
                  <div class="timeline__item">
                     <div class="timeline__content img-bg-02">
                        <h2>2021-06-28</h2>
                        <p>새로운 도전을 위한 새로운 인연으로 각기 다른 4사람이 만났습니다. 앞으로 멋진 프로젝트를 같이 만들 생각에 가슴이 두근거립니다.</p>
                     </div>
                  </div>
                  <div class="timeline__item">
                     <div class="timeline__content img-bg-03">
                        <h2>2021-07-07</h2>
                        <p>세미프로젝트를 위한 주제선정을 위해 첫 회의를 했습니다. 각자 아이디어가 너무 훌륭해서 하나만 고르기 어려웠습니다.</p>
                     </div>
                  </div>
                  <div class="timeline__item">
                     <div class="timeline__content img-bg-04">
                        <h2>2021-07-12</h2>
                        <p>참으로 어려운 시기입니다. 코로나 4단계 격상으로 인해서 비대면으로 프로젝트를 진행하는 날이 많아졌습니다. 그래도 저희의 열정을 막을 수는 없죠!</p>
                     </div>
                  </div>
                  <div class="timeline__item">
                     <div class="timeline__content img-bg-01">
                        <h2>2021-07-20</h2>
                        <p>세미프로젝트 개발을 본격적으로 시작한 첫 날 입니다. 열정은 가득한데, 생각보다 진행속도가 더뎌 답답했습니다. 하지만 팀원 모두 함께라면 극복은 문제없죠!</p>
                     </div>
                  </div>
                  <div class="timeline__item">
                     <div class="timeline__content img-bg-02">
                        <h2>2021-07-30</h2>
                        <p>우여곡절이 많았지만, 세미프로젝트 개발을 완성했습니다! 프로젝트 기간동안 정말 많이 배우고, 성장했습니다. 팀원들 고마워!</p>
                     </div>
                  </div>
                  <div class="timeline__item">
                     <div class="timeline__content img-bg-03">
                        <h2>2021-08-03</h2>
                        <p>드디어 저희의 완성작을 세상에 내보였습니다. 비록 반에서 발표하는 작은 세상이지만, 정말 뿌듯하고 자랑스럽습니다.</p>
                     </div>
                  </div>
                  <div class="timeline__item">
                     <div class="timeline__content img-bg-04">
                        <h2>2021-10-15</h2>
                        <p>86기 수강생 졸업하는 날입니다. 그동안 다들 열심히 공부했고, 성장했습니다. 앞으로 모두 멋진 개발자가 되어 행복하기를 바랍니다!</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
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
        <!-- ALL JS FILES -->
    <script src="resources/js/all.js"></script>
    <!-- ALL PLUGINS -->
    <script src="resources/js/custom.js"></script>
	<script src="resources/js/timeline.min.js"></script>
	<script>
		timeline(document.querySelectorAll('.timeline'), {
			forceVerticalMode: 700,
			mode: 'horizontal',
			verticalStartPosition: 'left',
			visibleItems: 4
		});
	</script>

</body>
</html>