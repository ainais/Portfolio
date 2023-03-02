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
    <!-- ====== 아코디언 추가 ====== -->


   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


   <style>
   
   *{
     box-sizing: border-box; 
   }
     
   .que:first-child{
       border-top: 1px solid black;
     }
     
   .que{
     position: relative;
     padding: 17px 0;
     cursor: pointer;
     font-size: 14px;
     border-bottom: 1px solid #dddddd;
     
   }
     
   .que::before{
     display: inline-block;
     content: 'Q';
     font-size: 14px;
     color: #006633;
     margin-right: 5px;
   }
   
   .que.on>span{
     font-weight: bold;
     color: #006633; 
   }
     
   .anw {
     display: none;
       overflow: hidden;
     font-size: 14px;
     background-color: #f4f4f2;
     padding: 27px 0;
   }
     
   .anw::before {
     display: inline-block;
     content: 'A';
     font-size: 14px;
     font-weight: bold;
     color: #666;
     margin-right: 5px;
   }
      
   
   </style>




   <script type="text/javascript">
   
   $(function(){
   
   $(".que").click(function() {
     $(this).next(".anw").stop().slideToggle(300);
     $(this).toggleClass('on').siblings().removeClass('on');
     $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
   });
   
   }) // end of $(function()
         
   </script>



<!-- ====== 아코디언 추가 ====== -->

    
    
    
    
    

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
            FAQ
            <span class="m_1">OWM MANY CAR 자주묻는 질문~!</span>
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
         <a href="postScript.do" class="hover-btn-new"><span>후기</span></a> 
         <a href="faq.do" class="hover-btn-new"><span>FAQ</span></a> 
         <a href="freeBoard.do" class="hover-btn-new"><span>자유게시판</span></a>
      </div>
      <!-- BUTTON BOX-->
      <br>
      <br>
   </div>
   <!-- 하이퍼링크 종료 -->
   <!-- ==================================================================================== -->
   
   
   
    <div id="overviews" class="section lb">
    
    
        <div class="container">




<!-- ============================================================================= -->




<!-- ====== 아코디언 추가 ====== -->

<h1>OWN 회원님들의 자주묻는 질문의공간</h1>
 <h2>  귀한 회원님들의 도움이되는공간 </h2>

<div id="Accordion_wrap">
     <div class="que">
      <span>로그인이 안되요.</span>
     </div>
     <div class="anw">
      <span>아이디 비밀번호 확인 또는 비밀번호 입력오류인거같습니다.</span>
     </div>
      <div class="que">
      <span>구독시스템의 종류는 어떻게 분류되어잇나요?</span>
     </div>
     <div class="anw">
      <span>저의 멤버쉽쪽에 자세히 설명되어잇고 혹시 설명이 부족하시다면 전화상담이좋을거같습니다</span>
     </div>
      <div class="que">
      <span>차가 고장나면 수리는어떻게되나요??</span>
     </div>
     <div class="anw">
      <span>저희와 협약되잇는 전문업체가 도와드립니다.</span>
     </div>
      <div class="que">
      <span>차량 브랜드는 계속 추가되나요?</span>
     </div>
     <div class="anw">
      <span>추후에 추가되면 공지알림  확인부탁드립니다.</span>
     </div>     
      <div class="que">
      <span>구독결제는 어떤방식인가요</span>
     </div>
     <div class="anw">
      <span>기간이정해져잇고 기간이만료될때 알림 문자서비스 방식을 쓰고잇습니다.</span>
     </div>     
      <div class="que">
      <span>아이디를 변경하고 싶어요</span>
     </div>
     <div class="anw">
      <span>아이디는 아쉽게 변경이불가능하다는점 알려드립니다.</span>
     </div>     
      <div class="que">
      <span>한국에 거주 중인 외국인도 가입할수있나요?</span>
     </div>
     <div class="anw">
      <span>외국인등록증이 있을경우 외국인으로 회원가입가능합니다.</span>
     </div>     
      <div class="que">
      <span>구독이 해지되면 어떻게되나요?</span>
     </div>
     <div class="anw">
      <span>해지되엇다고 회원이 아니게되는건아니고 다른 이용은 가능합니다.</span>
     </div>      
      <div class="que">
      <span>본인인증은 필요 시점에 매번 하나요?</span>
     </div>
     <div class="anw">
      <span>일부 본인인증이 필요한경우가 잇습니다.</span>
     </div>      
      <div class="que">
      <span>브랜드마다 차량추가계획이잇을까요?</span>
     </div>
     <div class="anw">
      <span>아직 추가계획은 없습니다. 추후에 추가되면 공지하겟습니다</span>
     </div>      
      <div class="que">
      <span>구매는 안되는건가요 ??</span>
     </div>
     <div class="anw">
      <span>저희 own many car 구매도 가능하시고 구독이라는 특별한 서비스가잇는곳입니다.</span>
     </div>      
      <div class="que">
      <span>구독하고나서 만약 사고같은경우 나면 어떻게되나요?</span>
     </div>
     <div class="anw">
      <span>저희 구독서비스를 신청하시면 자동으로 보험가입이적용되서 그점 걱정안하셔도 됩니다.</span>
     </div>       
</div>

<!-- ====== 아코디언 추가 ====== -->
   

</div>
</div>
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

    <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>

    <!-- ALL JS FILES -->
    <script src="resources/js/all.js"></script>
    <!-- ALL PLUGINS -->
    <script src="resources/js/custom.js"></script>

</body>
</html>