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

    <!-- Modernizer for Portfolio -->
    <script src="resources/js/modernizer.js"></script>

	<!-- 성연 폰트 -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gugi&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gugi&family=Poor+Story&display=swap" rel="stylesheet">
    <!-- 성연 폰트 -->


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	
	<style>
	@import url('https://fonts.googleapis.com/css?family=Oswald');
	
	$base-color: #303F9F;
	$second-color: #3F51B5;
	$third-color: #FBC02D;
	$site: #303F9F;
	$light: #fff;
	
	body {
	 position: relative;
	 font-family: 'Oswald', sans-serif;
	 background: $site;
	 color: $light;
	 font-size: 20px;
	}
	
	.grid {
	 list-style: none;
	 margin-left: -40px;
	}
	
	.gc {
	 box-sizing: border-box;
	 display: inline-block;
	 margin-right: -.25em;
	 min-height: 1px;
	 padding-left: 40px;
	 vertical-align: top;
	}
	
	.gc--1-of-3 {
	 width: 33.33333%;
	}
	
	.gc--2-of-3 {
	 width: 66.66666%;
	}
	
	/* 전체 탭팬 */
	.naccs {
	 position: relative;
	 max-width: 1500px;
	 margin: 100px auto 0;
	}
	/* 전체 탭팬 */

	
	.naccs .menu div {
	 padding: 15px 20px 15px 40px;
	 margin-bottom: 10px;
	 color: $base-color;
	 background: $second-color;
	 box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	 cursor: pointer;
	 position: relative;
	 vertical-align: middle;
	 font-weight: 700;
	 transition: 1s all cubic-bezier(0.075, 0.82, 0.165, 1);
	}
	
	.naccs .menu div:hover {
	 box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	}
	
	.naccs .menu div span.light {
	 height: 10px;
	 width: 10px;
	 position: absolute;
	 top: 24px;
	 left: 15px;
	 background-color: $base-color;
	 border-radius: 100%;
	 transition: 1s all cubic-bezier(0.075, 0.82, 0.165, 1);
	}
	
	.naccs .menu div.active span.light {
	 background-color: $third-color;
	 left: 0;
	 height: 100%;
	 width: 3px;
	 top: 0;
	 border-radius: 0;
	}
	
	.naccs .menu div.active {
	 color: $third-color;
	 padding: 15px 20px 15px 20px;
	}
	
	ul.nacc {
	 position: relative;
	 height: 0px;
	 list-style: none;
	 margin: 0;
	 padding: 0;
	 transition: .5s all cubic-bezier(0.075, 0.82, 0.165, 1);
	}
	
	ul.nacc li {
	 opacity: 0;
	 transform: translateX(50px);
	 position: absolute;
	 list-style: none;
	 transition: 1s all cubic-bezier(0.075, 0.82, 0.165, 1);
	}
	
	ul.nacc li.active {
	 transition-delay: .3s;
	 z-index: 2;
	 opacity: 1;
	 transform: translateX(0px);
	}
	
	ul.nacc li p {
	 margin: 0;
	}
	
	
	
	/* 회원정보 보기 테이블 css 시작 */
	@media screen and (max-width:1500px) {
 
	table.type09 {
	  border-collapse: collapse;
	  text-align: left;
	  line-height: 2;
	  position:relative;
    	padding-top:42px;
	
	}
  }
	
	
	table.type09 thead th {
	  padding: 10px;
	  font-weight: bold;
	  vertical-align: top;
	  color: #369;
	  border-bottom: 3px solid #036;
	}
	table.type09 tbody th {
	  width: 200px;
	  padding: 10px;
	  font-weight: bold;
	  vertical-align: top;
	  border-bottom: 1px solid #ccc;
	  background: #f3f6f7;
	}
	table.type09 td {
	  width: 800px;
	  padding: 10px;
	  vertical-align: top;
	  border-bottom: 1px solid #ccc;
	}

	i{
	color: red;
	text-align:right;
	font-align:right;
	align:right;
	text-weight:bold;
	font-weight:bold;
	weight:bold;
	}	
	/* 회원정보 보기 테이블 css 종료 */
	
	
	
	/* iframe css 시작 */
    iframe{
	 align-self: center;
	border: hidden;
    }
    /* iframe css 종료 */
    
 	/* 버튼 CSS 시작*/
	.abcButton{
	  text-align:center;
	  background:#036;
	  color:white;
	  border:none;
	  position:relative;
	  cursor:pointer;
	  transition:800ms ease all;
	  outline:none;
	}
	.abcButton:hover{
	  background:white;
	  color:#036;
	}
	.abcButton:before,.abcButton:after{
	  content:'';
	  position:absolute;
	  top:0;
	  right:0;
	  height:2px;
	  width:0;
	  background: #1AAB8A;
	  transition:400ms ease all;
	}
	.abcButton:after{
	  right:inherit;
	  top:inherit;
	  left:0;
	  bottom:0;
	}
	.abcButton:hover:before,.abcButton:hover:after{
	  width:100%;
	  transition:400ms ease all;
	}
	/* 버튼 CSS 종료*/   
    
    
    
    
    
    
	</style>
	
	<script>
	// 탭팬
	$(document).on("click", ".naccs .menu div", function() {
		  var numberIndex = $(this).index();

		  if (!$(this).is("active")) {
		    $(".naccs .menu div").removeClass("active");
		    $(".naccs ul li").removeClass("active");

		    $(this).addClass("active");
		    $(".naccs ul").find("li:eq(" + numberIndex + ")").addClass("active");

		    var listItemHeight = $(".naccs ul")
		      .find("li:eq(" + numberIndex + ")")
		      .innerHeight();
		    $(".naccs ul").height(listItemHeight + "px");
		  }
		});

	</script>
	
</head>
<body>


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
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->
	<!-- ==================================================================================== -->
	
	
	

<br>
<c:if test='${sessionScope.loginSession == null }'>
<% if(request.getParameter("successMessage") != null) {%>
<script type="text/javascript">
alert(request.getParameter("successMessage"))
</script>
<% } %>
<% response.sendRedirect("index.jsp"); %>
</c:if>





<!-- ============================================ -->
	<c:if test='${sessionScope.loginSession.userGrade == "고객" }'>
<!-- 고객 시작-->






<div class="naccs">
  <div class="grid">

<!-- ==================================================================================== -->  
<%-- 탭팬바 시작 --%>    
   <div class="gc gc--1-of-3">
    <div class="menu">
     <div class="active"><span class="light"></span><span>ONW MANY CAR</span></div>
     <div><span class="light"></span><span>내 정보 관리</span></div>
     <div><span class="light"></span><span>구독정보보기</span></div>
     <div><span class="light" id="shopBasket"></span><span><a href="shopBasket.do">찜 목록보기 (장바구니)</a></span></div>
     <div><span class="light"></span><span>내 쿠폰</span></div>
     <div><span class="light"></span><span><a href="myPageWrite.do">내가 작성한 글 보기</a></span></div>
    </div>
   </div>
<%-- 탭팬바 종료 --%>    
<!-- ==================================================================================== -->   
   
   
   
   <div class="gc gc--2-of-3">
    <ul class="nacc">

<!-- ==================================================================================== -->    
<%-- 탭팬 : OWN MANY CAR 시작 --%>    
     <li class="active">
      <div>
       <h2>${sessionScope.loginSession.userName}&nbsp;&nbsp;회원님, 안녕하세요!<br><br>좋은 하루입니다!</h2>
       <br>
	    <div style="text-align: center;">
	        <span id="clock" style="color:gray; font-size: 100px;">clock</span>&nbsp;&nbsp;
	        <span id="apm" style="color:gray; font-size: 50px;">ampm</span>
	    </div>
      </div>
     </li> 
<%-- 탭팬 : OWN MANY CAR 종료 --%>      
<!-- ==================================================================================== -->


<!-- ==================================================================================== -->
<%-- 탭팬 : 내 정보 관리 시작 --%>       
     <li>
      <div>
      <h2>내 정보 관리</h2>
      
       	<form action="modifyCustomer.do" method="post">
       	
       		<table class="type09">
			  <thead>
			  	<tr>
			    	<th scope="cols" colspan="2">회원정보 수정</th>
			  	</tr>
			  </thead>
			  <tbody>
				  <tr>
				    <th scope="row">이름</th>
				    <td><input type="text" value=${sessionScope.loginSession.userName} id="userName" name="userName" readonly></td>
				  </tr>
				  <tr>
				    <th scope="row">아이디</th>
				    <td><input type="text" value=${sessionScope.loginSession.userID} class="userID" name="userID" readonly></td>
				  </tr>
				  
				  <tr>
				    <th scope="row">기존 비밀번호<i>&radic;</i></th>
				    <td><input type="password" id="userPW" name="userPW" required></td>
				  </tr>
				  
			  
				  <tr>
				    <th scope="row">신규 비밀번호</th>
				    <td><input type="password" id="userNewPW" name="userNewPW">&nbsp;&nbsp;[ 비밀번호 수정시에 입력해주세요 ]</td>
				  </tr>
				  
				  <%-- 신규 비밀번호 확인 시작 --%>

				  <tr>
				    <th scope="row">신규 비밀번호 확인</th>
				    <td><input type="password" id="userNewPW2">&nbsp;&nbsp;[ 위에 입력하신 비밀번호를 한번 더 입력해주세요 ]</td>
				  </tr>
		  

				  <%-- 신규 비밀번호 확인 종료 --%>			  
				  
				  <tr>
				    <th scope="row">생년월일<i>&radic;</i></th>
				    <td><input type="text" value=${sessionScope.loginSession.userBirthday} id="userBirthday" name="userBirthday" required></td>
				  </tr>
				  <tr>
				    <th scope="row">성별<i>&radic;</i></th>
				    <td>
				    	<c:if test="${sessionScope.loginSession.userGender == null}">
				    	<label>남자 <input class="grd1" id="userGender" name="userGender" value="man" type="radio" checked></label>&nbsp;&nbsp;&nbsp;
	                    <label>여자 <input class="grd1" id="userGender" name="userGender" value="wom" type="radio"></label>
				    	</c:if>
				    	<c:if test="${sessionScope.loginSession.userGender == 'man'}">
					    	<label>남자 <input class="grd1" id="userGender" name="userGender" value="man" type="radio" checked></label>&nbsp;&nbsp;&nbsp;
	                        <label>여자 <input class="grd1" id="userGender" name="userGender" value="wom" type="radio"></label>
                        </c:if>
                        <c:if test="${sessionScope.loginSession.userGender == 'wom'}">
					    	<label>남자 <input class="grd1" id="userGender" name="userGender" value="man" type="radio"></label>&nbsp;&nbsp;&nbsp;
	                        <label>여자 <input class="grd1" id="userGender" name="userGender" value="wom" type="radio" checked></label>
                        </c:if>
                    </td>
				  </tr>
				  <tr>
				    <th scope="row">이메일<i>&radic;</i></th>
				    <td><input type="text" value=${sessionScope.loginSession.userEmail} id="userEmail" name="userEmail" required></td>
				  </tr>
				  <tr>
				    <th scope="row">휴대폰번호<i>&radic;</i></th>
				    <td><input type="text" value=${sessionScope.loginSession.userTel} id="userTel" name="userTel" required></td>
				  </tr>
				  <tr>
				    <th scope="row">주소<i>&radic;</i></th>
				    <td><input type="text" value=${sessionScope.loginSession.userAddr} id="userAddr" name="userAddr" required></td>
				  </tr>
				  <tr>
				    <td colspan="2"><input type="submit" class="abcButton" id="modify" name="modify" value="회원정보 수정">&nbsp;&nbsp;<input type="reset" class="abcButton" value="다시 쓰기"></td>
				  </tr>
				  <tr>
				    <td colspan="2" align="right"><a href="deleteCustomer.do?userID=${sessionScope.loginSession.userID}"><input type="button" class="abcButton" name="userDrop" value="회원탈퇴"></a></td>
				  </tr>
			  </tbody>
			</table>
       	</form>
      </div>
     </li>
<%-- 탭팬 : 내 정보 관리 종료 --%>  
<!-- ==================================================================================== -->


<!-- ==================================================================================== -->
<%-- 탭팬 : 구독정보보기 시작--%>       
     <li>
      <div>
      <h2>구독정보보기</h2>
      
<!-- 구독중이 아니라면 -->      
	  	<c:if test="${sessionScope.loginSession.subGrade == null}">
	  		<br><br>
	  		<h2>${sessionScope.loginSession.userName}님은 현재 구독중이 아닙니다.</h2><br>
	  		<h4>구독을 하시면 더 많은 혜택을 누리실 수 있습니다. </h4>
	  	</c:if>


<!-- 구독중이라면 -->      
		<c:if test="${sessionScope.loginSession.subGrade != null}">
       	<form>
       		<table class="type09">
			  <thead>
			  	<tr>
			    	<th scope="cols" colspan="2">${sessionScope.loginSession.userName}님의 구독정보</th>
			  	</tr>
			  </thead>
				  <tbody>
<%--			      <tr>
					    <th scope="row">구독유뮤</th>
					    <td><input type="text" value=${sessionScope.loginSession.userGrade} id="userGrade" name="userGrade" readonly></td>
					  </tr>       --%>
					  <tr>
					    <th scope="row">내 등급</th>
					    <td><input type="text" value=${sessionScope.loginSession.subGrade} id="subGrade" name="subGrade" readonly></td>
					  </tr>
					  <tr>
					    <th scope="row">구독시작날짜</th>
					    <td><input type="text" value=${sessionScope.loginSession.subStartDate} id="subStartDate" name="subStartDate" readonly></td>
					  </tr>
					  <tr>
					    <th scope="row">구독남은일수</th>
					    <td><input type="text" value=${sessionScope.loginSession.subRemainDate} id="subRemainDate" name="subRemainDate" readonly></td>
					  </tr>
                 <%----------------------------------------------------------%>
                 <c:if test="${sessionScope.loginSession.userCar == null}">
                    <tr>
                      <th scope="row">현재 이용중인 차량</th>
                      <td><input type="text" value="현재 구독중인 차량없음" id="userCar" name="userCar" readonly></td>
                    </tr>
                 </c:if>
                 <%----------------------------------------------------------%>
                 <%----------------------------------------------------------%>                 
                 <c:if test="${sessionScope.loginSession.userCar != null}">
                    <tr>
                      <th scope="row">현재 구독중인 차량</th>
                      <td><input type="text" value=${sessionScope.loginSession.userCar} id="userCar" name="userCar" readonly></td>
                    </tr>
                 </c:if>
                 <%----------------------------------------------------------%>   
					  <tr>
					    <td colspan="2" align="right"><a href="cancleSUB.do?userID=${sessionScope.loginSession.userID}"><input type="button" class="abcButton" name="cancleSUB" value="구독취소"></a></td>
					  </tr>				  
				  </tbody>
			</table>
       	</form>
				</c:if>
      </div>
     </li>
<%-- 탭팬 : 구독정보보기 종료 --%>  
<!-- ==================================================================================== -->


<!-- ==================================================================================== -->
<%-- 탭팬 : 찜 목록보기 (장바구니) 시작 --%>       
     <li>
     </li>     
<%-- 탭팬 : 찜 목록보기 (장바구니) 종료--%>  
<!-- ==================================================================================== -->


<!-- ==================================================================================== -->
<%-- 탭팬 : 내 쿠폰 시작 --%>       
     <li>
      <div>
       가지고 있는 쿠폰이 1도 없습니다.
      </div>
     </li>     
<%-- 탭팬 : 내 쿠폰 종료 --%>   
<!-- ==================================================================================== -->


<!-- ==================================================================================== -->
<%-- 탭팬 : 내가 작성한 글 보기 시작 --%>       
     <li>
     </li>
<%-- 탭팬 : 내가 작성한 글 보기 종료 --%>   
<!-- ==================================================================================== -->


    </ul>
   </div>
   
   
  </div>
 </div>













<!-- 고객 종료-->
	</c:if>
<!-- ============================================ -->


<br>
<br>
<br>
<br>
<br>
<br>



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
    
    

    <script type="text/javascript">
	// 실시간 시간
	
        var Target = document.getElementById("clock");
        var Target_apm = document.getElementById("apm");
        function clock() {
            var time = new Date();
            var hours = time.getHours();
            var minutes = time.getMinutes();
            var seconds = time.getSeconds();
            var AmPm ="AM";
            if(hours > 12){   
                var AmPm ="PM";
                hours %= 12;
            }

            if(hours < 10){   
               hours = "0" + hours;
            } 

            if(minutes < 10){   
            	minutes = "0" + minutes;
            } 

            if(seconds < 10){   
            	seconds = "0" + seconds;
            } 
            
            Target.innerText = hours + ' : ' + minutes + ' : ' + seconds;
            // Target.innerText = if(hours<10){'0'+hours}else{hours}  ' : '  if(minutes<10){'0'+minutes}else{minutes}  ' : '  if(seconds<10){'0'+seconds}else{seconds}seconds;

            Target_apm.innerText = AmPm;

        }
        clock();
        setInterval(clock, 1000); // 1초마다 실행
    
    </script>


</body>
</html>