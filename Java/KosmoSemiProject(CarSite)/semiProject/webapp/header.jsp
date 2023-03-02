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