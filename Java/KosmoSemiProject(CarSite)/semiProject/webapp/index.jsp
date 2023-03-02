<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	
	<!-- 성연 폰트 -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gugi&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gugi&family=Poor+Story&display=swap" rel="stylesheet">
    <!-- 성연 폰트 -->
    
    <!-- Modernizer for Portfolio -->
    <script src="resources/js/modernizer.js"></script>
	
	<!-- jquery를 통한 검사-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="resources/js/login.js"></script>
	<script>
	var loginMessage = "${loginMessage}"
	if(loginMessage!=""){
		alert(loginMessage);
	}
	</script>
</head>
<body class="host_version">
<!-- ==================================================================================== -->
<!-- 로그인 폼 시작 -->
 <!-- Modal -->
   <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
     <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
         <div class="modal-header tit-up">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">로그인 / 회원가입</h4>
         </div>
         <div class="modal-body customer-box">
         
         
            <!-- Nav tabs -->
            <ul class="nav nav-tabs">
               <li><a class="active" href="#Login" data-toggle="tab">로그인</a></li>
               <li>&nbsp;</li>
               <li><a href="#Registration" data-toggle="tab">회원가입</a></li>
            </ul>
            
            <!-- Tab panes -->
            <div class="tab-content">
               <div class="tab-pane active" id="Login">
                  <form role="form" class="form-horizontal" method="post" action="login.do">
                     <div class="form-group">
                        <div class="col-sm-12">
                           아이디 : <input class="form-control" id="email1" name="userID" placeholder="아이디" type="text">
                        </div>
                     </div>
                     <div class="form-group">
                        <div class="col-sm-12">
                           비밀번호 : <input class="form-control" id="exampleInputPassword1" name="userPW" placeholder="비밀번호" type="password">
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-sm-10">
                     
                        	  <button type="submit" class="btn btn-light btn-radius btn-brd grd1">
                              로그인하기
                           	  </button>


                           <a class="for-pwd" href="javascript:;">비밀번호를 잊으셨습니까?</a>
                        </div>
                     </div>
                  </form>
               </div>

<!-- --------------------------------------------------------------------------------------- -->               
               
               <div class="tab-pane" id="Registration">
                 <!--  <form onsubmit="return checkcheck()" role="form" class="form-horizontal" method="post" action="customerInsert.do"> -->
                  <form role="form" class="form-horizontal" method="post" action="insertCustomer.do" id="ajaxLoginForm">
                     <div class="form-group">
                        <div class="col-sm-12">
<!-- --------------------------------------------------------------------------------------- -->
                           <input class="userID" name="userID" placeholder="아이디" type="text">       
                           <input type="button" value="아이디 중복 체크" class="doubleCheckID">                      
      							  <!-- 아이디 중복체크, js 파일 들어가서 ajax 사용 -->
     						<br><span id="idCheckResult" style="width:150px;color:red"></span>
<!-- --------------------------------------------------------------------------------------- -->
                        </div>
                     </div>
                     <div class="form-group">
                        <div class="col-sm-12">
                           <input class="form-control" id="userPW" name="userPW" placeholder="비밀번호" type="password">
                        </div>
                     </div>
                     <div class="form-group">
                        <div class="col-sm-12">
                           <input class="form-control" id="userPW2" name="userPW2" placeholder="비밀번호확인" type="password">
                        </div>
                     </div>
                     
<!-- --------------------------------------------------------------------------------------- -->
                     <div class="form-group">
                        <div class="col-sm-12">
                           <span id="pwCheckResult" style="width:150px;color:red"></span>
                        </div>
                     </div>
<!-- --------------------------------------------------------------------------------------- -->
                     
                     <div class="form-group">
                        <div class="col-sm-12">
                           <input class="form-control" id="userName" name="userName" placeholder="이름" type="text">
                        </div>
                     </div>

                     
                     <div class="form-group">
                        <div class="col-sm-12">
                           <input class="form-control" id="userEmail" name="userEmail" placeholder="이메일" type="email">
                        </div>
                     </div>
                     
                     <div class="form-group">
                        <div class="col-sm-12">
                           <input class="form-control" id="userTel" name="userTel" placeholder="전화번호" type="tel">
                        </div>
                     </div>

                     <div class="form-group">
                        <div class="col-sm-12">
                           <input class="form-control" id="userAddr" name="userAddr" placeholder="주소" type="text">
                        </div>
                     </div>                    
                     
                     <div class="form-group">
                        <div class="col-sm-10">
                        성별 : &nbsp;&nbsp;&nbsp;
                           <label>남자 <input class="grd1" id="userGender" name="userGender" value="man" type="radio" checked></label>&nbsp;&nbsp;&nbsp;
                           <label>여자 <input class="grd1" id="userGender" name="userGender" value="wom" type="radio"></label>
                        </div>
                     </div>

                     <div class="form-group">
                        <div class="col-sm-10">
                        생일 : &nbsp;&nbsp;&nbsp;<input id="userBirthday" name="userBirthday" placeholder="생일" type="date">
                        </div>
                     </div>
                     
                     <div class="row">                     
                        <div class="col-sm-10">
                        <!-- 버튼 타입을 submit이 아니라 button으로 주고, 제이쿼리로 일처리해보자..! -->
                            <input type="button" name="confirm" id="confirm" class="btn btn-light btn-radius btn-brd grd1" value="가입하기">
                           <!-- <button type="button" name="confirm" id="confirm" class="btn btn-light btn-radius btn-brd grd1" >  -->
                              

                           <input type="button" id="ajaxReset" class="btn btn-light btn-radius btn-brd grd1" data-dismiss="modal" aria-hidden="true" value="취소">
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
     </div>
   </div>
<!-- 로그인 폼 종료 -->
<!-- ==================================================================================== -->
    <!-- LOADER -->
	<div id="preloader">
		<div class="loader-container">
			<div class="progress-br float shadow">
				<div class="progress__item"></div>
			</div>
		</div>
	</div>
	<!-- END LOADER -->	
	
	
	
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
					<ul class="nav navbar-nav navbar-right">
					<c:if test="${sessionScope.loginSession == null}">
                        <li><a class="hover-btn-new log" href="#" data-toggle="modal" data-target="#login"><span>Login</span></a></li>
                    </c:if>
                    <c:if test="${sessionScope.loginSession != null}">
                        <li><a class="hover-btn-new log" href="logout.do" ><span>Logout</span></a></li>
                    </c:if>
                    </ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->
	<!-- ==================================================================================== -->



	<!-- ==================================================================================== -->
	<!-- 캐러셀 슬라이더 영역 시작 -->
	<div id="carouselExampleControls" class="carousel slide bs-slider box-slider" data-ride="carousel" data-pause="hover" data-interval="false" >
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleControls" data-slide-to="0" class="active"></li>
			<li data-target="#carouselExampleControls" data-slide-to="1"></li>
			<li data-target="#carouselExampleControls" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="carousel-item active">
				<div id="home" class="first-section" style="background-image:url('resources/images/slider-01.jpg');">
					<div class="dtab">
						<div class="container">
							<div class="row">
								<div class="col-md-12 col-sm-12 text-right">
									<div class="big-tagline">
										<h2><strong>Own Many</strong> Car</h2>
										<p class="lead">쉽고 싸게 이용하는 자동차 구독 시스템</p>
											<a href="about.do" class="hover-btn-new"><span>자세히 보기
											</span></a>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<a href="membership.do" class="hover-btn-new"><span>멤버쉽 둘러보기</span></a>
									</div>
								</div>
							</div><!-- end row -->            
						</div><!-- end container -->
					</div>
				</div><!-- end section -->
			</div>
			<div class="carousel-item">
				<div id="home" class="first-section" style="background-image:url('resources/images/slider-02.jpg');">
					<div class="dtab">
						<div class="container">
							<div class="row">
								<div class="col-md-12 col-sm-12 text-left">
									<div class="big-tagline">
										<h2 data-animation="animated zoomInRight">Find<strong> Your Car</strong></h2>
										<p class="lead" data-animation="animated fadeInLeft">당신이 원하는 차가 있습니까?</p>
											<a href="event.do" class="hover-btn-new"><span>이벤트 둘러보기</span></a>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<a href="allProduct.do" class="hover-btn-new"><span>전체 상품 둘러보기</span></a>
									</div>
								</div>
							</div><!-- end row -->            
						</div><!-- end container -->
					</div>
				</div><!-- end section -->
			</div>
			<div class="carousel-item">
				<div id="home" class="first-section" style="background-image:url('resources/images/slider-03.jpg');">
					<div class="dtab">
						<div class="container">
							<div class="row">
								<div class="col-md-12 col-sm-12 text-center">
									<div class="big-tagline">
										<h2 data-animation="animated zoomInRight"><strong>Other People</strong> Epilogue</h2>
										<p class="lead" data-animation="animated fadeInLeft">다른 사람들의 차량 후기</p>
											<a href="postScript.do" class="hover-btn-new"><span>후기 보러가기</span></a>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<a href="freeBoard.do" class="hover-btn-new"><span>자유게시판 보러가기</span></a>
									</div>
								</div>
							</div><!-- end row -->            
						</div><!-- end container -->
					</div>
				</div><!-- end section -->
			</div>
			<!-- Left Control -->
			<a class="new-effect carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
				<span class="fa fa-angle-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>

			<!-- Right Control -->
			<a class="new-effect carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
				<span class="fa fa-angle-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<!-- 캐러셀 슬라이더 영역 종료 -->
	<!-- ==================================================================================== -->
	
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

	<!-- Our History 종료 -->
	<!-- ==================================================================================== -->
	
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
	
	
	<!-- ==================================================================================== -->
	<!-- 로고 시작 -->
    <div class="parallax section dbcolor">
        <div class="container">
            <div class="row logos">
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="index.jsp"><img src="resources/images/logo_01.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="index.jsp"><img src="resources/images/logo_02.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="index.jsp"><img src="resources/images/logo_03.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="index.jsp"><img src="resources/images/logo_04.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="index.jsp"><img src="resources/images/logo_05.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="index.jsp"><img src="resources/images/logo_06.png" alt="" class="img-repsonsive"></a>
                </div>
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
    <!-- 로고 종료 -->
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
							<li><a href="freeBoard.jsp">게시판</a></li>
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