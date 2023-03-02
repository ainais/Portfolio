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


	<style>
	
	/* 리뷰 텍스트 CSS */
	#reviewContentWord{
	  color:#CB5FFA;
	  font-weight:bold;
	}
	
	/* 수정 삭제 버튼 CSS 시작*/
	.abcButton{
	  text-align:center;
	  background:#556353;
	  color:#EFFFED;
	  border:none;
	  position:relative;
	  cursor:pointer;
	  transition:800ms ease all;
	  outline:none;
	}
	.abcButton:hover{
	  background:#EFFFED;
	  color:#556353;
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
	  transition:800ms ease all;
	}
	/* 수정 삭제 버튼 CSS 종료*/

	</style>

	<!-- Jquery를 사용하여 boardID 가져오는 부분 시작 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
	$(function(){
	
		
		/* 후기 수정 */
		/* 수정하기 버튼이 클릭된다. */
		/* 제이쿼리 명심! 태그를 잘 찾았는지, 먼저 alert 해본다. */
		$("#JqueryReviewDiv #JqueryForm #abcButton").click(function(){
	
			/* boardID 값을 가져온다. */  /* 변수에 넣어준다. */
			var aa = $(this).parents("#JqueryReviewDiv").find("#JqueryReviewNumber").text();
			/* 유저이름 값을 가져온다. */  /* 변수에 넣어준다. */
			var ab = $(this).parents("#JqueryReviewDiv").find("#JqueryReviewUserName").text();
			
//			alert(aa);
//			alert(ab);
			
			// textarea 의 placeholder 내용 가져오기
			var tete = $(this).parents("#JqueryReviewDivKing").find("#reviewContentWord").text(); 
			$(this).parents("#JqueryReviewDivKing").siblings(0).find("#JqueryboardContent").text(tete); 
			
			/* boardID 값을 가져올 부분을 찾는다. */  /* 제이쿼리는 게터와 세터가 같다. */
			$(this).parents("#JqueryReviewDivKing").siblings(0).find("#JqueryBoardID").val(aa); 
			/* 유저이름 값을 가져올 부분을 찾는다. */  /* 제이쿼리는 게터와 세터가 같다. */
			$(this).parents("#JqueryReviewDivKing").siblings(0).find("#JqueryUserName").text(ab); 
			
		})

		
		

		/* 후기 상세보기 */
		/* 이미지나 아이콘이 클릭된다. */
		/* 제이쿼리 명심! 태그를 잘 찾았는지, 먼저 alert 해본다. */
		$("#JqueryReviewDiv #JqueryViewReview").click(function(){
		
//			alert("짠");
			
			/* boardID 값을 가져온다. */  /* 변수에 넣어준다. */
			var bb = $(this).parents("#JqueryReviewDiv").find("#JqueryReviewNumber").text();
			/* 유저이름 값을 가져온다. */  /* 변수에 넣어준다. */
			var bc = $(this).parents("#JqueryReviewDiv").find("#JqueryReviewUserName").text();
			/* 브랜드 값을 가져온다. */  /* 변수에 넣어준다. */
			var bd = $(this).parents("#JqueryReviewDiv").find("#JqueryReviewBrand").text();
			/* 리뷰 값을 가져온다. */  /* 변수에 넣어준다. */
			var be = $(this).parents("#JqueryReviewDiv").find("#reviewContentWord").text();
			/* 작성일 값을 가져온다. */  /* 변수에 넣어준다. */
			var bf = $(this).parents("#JqueryReviewDiv").find("#JqueryReviewDate").text();
			/* 이미지 값을 가져온다. */  /* 변수에 넣어준다. */
			
			 var bg = $(this).parents("#JqueryReviewDiv").find("#JqueryPic").attr("src");
//			alert(bb);
//			alert(bc);
//			alert(bd);
//			alert(be);
//			alert(bf);
//			alert(bg);
			
			// <img src='resources/upload/imageName' width="100" height="100" id="thePic"/>
			
			/* 값을 가져올 부분을 찾는다. */  /* 제이쿼리는 게터와 세터가 같다. */
			$(this).parents("#JqueryReviewDivKing").siblings(1).find("#whoseReview").text(bc); /* 후기 상세보기 */
			$(this).parents("#JqueryReviewDivKing").siblings(1).find("#whichBrand").text(bd); /* 후기 상세보기 */
			$(this).parents("#JqueryReviewDivKing").siblings(1).find("#theContent").text(be); /* 후기 상세보기 */
			$(this).parents("#JqueryReviewDivKing").siblings(1).find("#theContentDate").text(bf); /* 후기 상세보기 */
			
			if(bg == null){
				$(this).parents("#JqueryReviewDivKing").siblings(1).find("#thePic").attr("alt","사진이 없습니다."); /* 후기 상세보기 */
			}
			else{				
			$(this).parents("#JqueryReviewDivKing").siblings(1).find("#thePic").attr("src",bg); /* 후기 상세보기 */
			}
			
		})
		
		
		
	})
	</script>
	<!-- Jquery를 사용하여 boardID 가져오는 부분 종료 -->
	
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
				후기
				<span class="m_1">OWM MANY CAR를 이용하신 분들의 소중한 의견은 저희에게 큰 힘이 됩니다!</span>
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
	
	
	<!-- ==================================================================================== -->
	<!-- ==================================================================================== -->
	<!-- ==================================================================================== -->
	
	
   <!-- 후기리스트 가져오기 시작-->
   
<%--   
<c:forEach items = "${readReviewList}" var="review">
	${review.productName }
</c:forEach>
--%>
 
    <div id="overviews" class="section lb">
        <div class="container">
        
        <!-- 로그인 되어있는 상태에서 후기 쓸 수 있음 -->
        <c:if test="${sessionScope.loginSession != null}">
        <div class="pricingTable-sign-up">
			<a class="hover-btn-new log" href="#" data-toggle="modal" data-target="#writeReview"><span>후기쓰러가기</span></a> 
		</div>
		</c:if>

		<!-- 후기가 없으면 없다고 나옴 -->
        <c:if test="${readReviewList.size() == 0 }">
            <div class="section-title text-center">
                <h3>후기가 없습니다.</h3>
             </div><!-- end title -->
		</c:if>

       <hr class="invis"> 
       <div class="row"> 
       
       
       <!-- ==================================================================================== -->     
	   <!-- 후기 리스트 가져오기 -->    
	      <c:forEach items="${readReviewList }" var="review" varStatus="sta" step='3'>
                <c:forEach items="${readReviewList }" var="review2" begin="${sta.index}" end="${sta.index+2}" varStatus="ss">
            
	                <div class="col-md-4 col-sm-6 col-xs-12" id="JqueryReviewDivKing">
	                
	                    <div class="icon-wrapper wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s" id="JqueryReviewDiv">
	                        
	                        <!-- ==================================================================================== -->
	                        <!-- 이미지나 아이콘을 클릭하면 이미지 상세보기로 넘어가기 시작 -->
		                        <a href="#" data-toggle="modal" data-target="#viewReviewGoGo" id="JqueryViewReview">
			                        <!-- 업로드한 이미지가 있다면 이미지 가져옴 -->
				                        <c:if test="${review2.boardFname != null }">
				                        	<i><img src='resources/upload/${review2.boardFname}' class="global-radius effect-1 alignleft" id="JqueryPic" alt="" style="width:30%; height:auto;"></i>
				                        </c:if>
			                        <!-- 업로드한 이미지가 없다면 스마일 아이콘 가져옴 (뺄까 고민중) -->
				                        <c:if test="${review2.boardFname == null }">
				                        	<i class="  flaticon-happy global-radius effect-1 alignleft"></i >
				                        </c:if>
		                        </a>
	                        <!-- 이미지나 아이콘을 클릭하면 이미지 상세보기로 넘어가기 종료 -->
	                        <!-- ==================================================================================== -->
	                         
 	                        <p>
	                        게시판 번호 : <span id="JqueryReviewNumber">${review2.boardID }</span><br> 
	                        작성자 : <span id="JqueryReviewUserName">${review2.userID }</span><br> 


	                        브랜드 : <span id="JqueryReviewBrand">${review2.productName }</span><br> 
	                        <!-- 차종&nbsp;&nbsp; : 추후개발예정 <br> --> 
	                        리뷰 : <span id="reviewContentWord">${review2.boardContent }</span><br> 
	                        작성일 : <span id="JqueryReviewDate"> ${review2.boardRegdate }</span><br> 
	                        좋아요 : &nbsp;&nbsp;
	                        	                       
	                        <a href="likeThisReview.do?boardID=${review2.boardID}">
	                          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
								  <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
							  </svg>
							</a>&nbsp;&nbsp;
						  	${review2.boardLike } &nbsp;&nbsp;
						 
							</p>
							
							<!-- ==================================================================================== -->
							<!-- 수정, 삭제 부분 시작 -->
		                        <!-- 내가 쓴 글이 아니면 <br> -->
		                        	<c:if test="${sessionScope.loginSession.userID != review2.userID}"><br></c:if>
		                        <!-- 내가 쓴 글이면 수정, 삭제 버튼 보임 -->
			                        <c:if test="${sessionScope.loginSession.userID == review2.userID}">
				                        <form align="center" id="JqueryForm">
				                        	<!-- 수정 버튼 -->
				                        	<%-- <a href="#" data-toggle="modal" data-target="#modifyReviewGoGo?boardID=${this.boardID}"><input class="abcButton" type="button" value="수정하기"></a>&nbsp;&nbsp; --%>
				                        	<a href="#" data-toggle="modal" data-target="#modifyReviewGoGo"><input id="abcButton" class="abcButton" type="button" value="수정하기"></a>&nbsp;&nbsp;
					                        <!-- 삭제 버튼 1 -->
					                        <!-- <input class="abcButton" type="button" name="deleteReview" value="삭제하기" onclick="location.href='deleteReview.do?boardID=${review.boardID}'"> -->
					                        <!-- 삭제 버튼 2 -->
					                        <a href="deleteReview.do?boardID=${review2.boardID}"><input class="abcButton" type="button" name="deleteReview" value="삭제하기"></a>
					                        <!-- 이게 있어야 가져간다.   ▲  -->
				                        </form>		
			                        </c:if>
							<!-- 수정, 삭제 부분 종료 -->
							<!-- ==================================================================================== -->
							
	                    </div><!-- end icon-wrapper -->
	               	 	<br>
	               	 </div><!-- end col -->       
	               	 
	               	                       
                        <!-- ==================================================================================== -->
                           <!-- 후기수정 시작-->
							   <div class="modal fade" id="modifyReviewGoGo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
							     <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
							      <div class="modal-content">
							         <div class="modal-header tit-up">
							            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							            <h4 class="modal-title">후기 수정하기</h4>
							         </div>
							         
							         <div class="modal-body customer-box">
							         
										<!-- ==================================================================================== -->
										<!-- 현재 페이지에 대한 요청이 들어오면 리스트로 되어있는 readReviewList가 불려진다. 
											 그 중에서 딱 내가 선택한 하나에 대하여 정보를 가져오고 싶다. 
											 어떻게 가져와야 할까나.....?
											 Mapper에서 boardID로 WHERE절을 줬기 때문에 그것도 HIDDEN으로 가져와야 하는데... -->
										<!-- ==================================================================================== -->
							    
										<!-- ==================================================================================== -->
										<form action="modifyReview.do" method="post" id="JqueryForm2">
									        <h4><span id="JqueryUserName"></span>&nbsp;&nbsp;님, 후기를 수정해주세요.</h4><br>
											<!-- boardID -->
							          		<input type="hidden" name="boardID" readonly class="form-control" id="JqueryBoardID" ><br>
							          		
											<textarea class="form-control" name="boardContent" id="JqueryboardContent" rows="6" required></textarea><br>
											<br>
											<input type="submit" class="btn btn-light btn-radius btn-brd grd1" value="수정하기">
										</form>         
										<!-- ==================================================================================== -->
							         </div>
							      </div>
							     </div>
							   </div>
							   <!-- 후기수정 종료-->
                        <!-- ==================================================================================== -->
                        
                        <!-- ==================================================================================== -->
                           <!-- 후기 상세보기 시작-->
							   <div class="modal fade" id="viewReviewGoGo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
							     <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
							      <div class="modal-content">
							         <div class="modal-header tit-up">
							            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							            <h4 class="modal-title">후기 상세보기</h4>
							         </div>
							         
							         <div class="modal-body customer-box">
								<!-- ==================================================================================== -->
								<!-- 현재 페이지에 대한 요청이 들어오면 리스트로 되어있는 readReviewList가 불려진다. 
									 그 중에서 딱 내가 선택한 하나에 대하여 정보를 가져오고 싶다. 
									 어떻게 가져와야 할까나.....?
									 Mapper에서 boardID로 WHERE절을 줬기 때문에 그것도 HIDDEN으로 가져와야 하는데... -->
								<!-- ==================================================================================== -->
							         <h2><span id="whoseReview"></span>님의 후기입니다.</h2>
	         						 <h4>리뷰날짜 : <span id="theContentDate"></span></h4><br>
							         <h4>브랜드 : <span id="whichBrand"></span></h4>
							         <h4>리뷰 : <span id="theContent"></span></h4>
							         <h4>사진 : <img src='resources/upload/imageName' width="100" height="100" id="thePic"/></h4><br>

							    	 <br>
							         <h4>감사합니다.</h4><br>
										
								<!-- ==================================================================================== -->
							         </div>
							      </div>
							     </div>
							   </div>
							   <!-- 후기 상세보기 종료-->
                        <!-- ==================================================================================== -->
                   </c:forEach> 
             </c:forEach>

            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->


   <!-- 후기리스트 가져오기 종료-->
   <!-- ==================================================================================== -->
   
   
   
	<!-- ==================================================================================== -->
	<!-- ==================================================================================== -->
	<!-- ==================================================================================== -->



   <!-- 후기쓰기 시작-->
   <div class="modal fade" id="writeReview" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
     <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
         <div class="modal-header tit-up">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">후기쓰기</h4>
         </div>
         
         <div class="modal-body customer-box">

         <form action="writeReview.do" method="post" enctype="multipart/form-data">
         
         	<!-- IP -->
          	<input class="form-control" type="hidden" name="boardIP" value="<%=request.getRemoteAddr()%>"><br>
          	
          	<!-- userID -->
          	<input class="form-control" type="hidden" name="userID" value="${sessionScope.loginSession.userID}"><br>
          	
 	 	    <select name="productName" id="productName" class="form-control" style="height: 55px" required>
				<option value="brand">브랜드를 선택해주세요</option>
				<option value="Audi">Audi</option>
				<option value="BMW">BMW</option>
				<option value="Chevrolet">Chevrolet</option>
				<option value="Hyundai">Hyundai</option>
				<option value="Jeep">Jeep</option>
				<option value="Kia">Kia</option>
				<option value="Benz">Benz</option>
				<option value="Porsche">Porsche</option>
			</select><br>
			
			<textarea class="form-control" name="boardContent" id="boardContent" rows="6" placeholder="후기를 입력해주세요." required></textarea><br>
			
			<input class="form-control" type="file" maxlength="60" size="40" name="file"> <br>
			
            <button type="submit" class="btn btn-light btn-radius btn-brd grd1">
               후기쓰기
            </button>
         </form>
         
    <%-- 
         <!-- 성연누나 나중에 해보세요 -->     
            <!-- Tab panes -->
            <div class="tab-content">
               <div class="tab-pane active" id="WriteReview">
               
                  <form action="writeReview.do" class="form-horizontal" method="post">
                  
                  <!-- IP -->
                  <div class="form-group">
						<div class="col-sm-12">
							<input type="text" readonly name="boardIP" value="<%=request.getRemoteAddr()%>">
						</div>
				   </div>
                  
                  <!-- 브랜드 -->

                     <div class="form-group">
						<div class="col-sm-12">
							<select name="productName" id="productName" class="form-control" style="height: 55px">
								<option value="brand">브랜드를 선택해주세요</option>
								<option value="Audi">Audi</option>
								<option value="BMW">BMW</option>
								<option value="Chevrolet">Chevrolet</option>
								<option value="Hyundai">Hyundai</option>
								<option value="Jeep">Jeep</option>
								<option value="Kia">Kia</option>
								<option value="Banz">mercedes-Banz</option>
								<option value="Porsche">Porsche</option>
							</select>
						</div>
					</div>
                     
                     <div class="form-group">
                        <div class="col-sm-12" height="auto">
                            <textarea class="form-control" name="boardContent" id="boardContent" rows="6" placeholder="후기를 입력해주세요."></textarea>
                        </div>
                     </div>
                     
                     <div class="row">
                        <div class="col-sm-10">
                        
                           <button type="submit" class="btn btn-light btn-radius btn-brd grd1">
                              후기쓰기
                           </button>
                           
                           <button type="reset" class="btn btn-light btn-radius btn-brd grd1">
                              다시쓰기
                           </button>
                           
                        </div>
                     </div>
                  </form>
               </div>
            </div> 
            
          <!-- 성연누나 나중에 해보세요 -->  
     --%>        
            
         </div>
      </div>
     </div>
   </div>
   <!-- 후기쓰기 종료-->
               
<!-- --------------------------------------------------------------------------------------- -->
<!-- --------------------------------------------------------------------------------------- -->
<!-- --------------------------------------------------------------------------------------- -->               
         


   <!-- 후기 상세보기 시작 (안 씀..) -->
   <div class="modal fade" id="watchReview" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
     <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
         <div class="modal-header tit-up">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">후기보기</h4>
         </div>
         <div class="modal-body customer-box">
         
            
            <!-- Tab panes -->
            <div class="tab-content">
               <div class="tab-pane active" id="WatchReview">
               
                  <form action="#" role="form" class="form-horizontal" method="post">
                                       <div class="form-group">
						<div class="col-sm-12">
							${readReview}
						</div>
					</div>

<%--
                     <div class="form-group">
						<div class="col-sm-12">
							브랜드 : ${readReview.productBrand}
						</div>
					</div>

                     <div class="form-group">
						<div class="col-sm-12">
							차량이름 : ${readReview.productName}
						</div>
					</div>

                     <div class="form-group">
						<div class="col-sm-12">
							사용기간 : ${readReview.purchaseDate}
						</div>
					</div>

                     <div class="form-group">
						<div class="col-sm-12">
							리뷰 : ${readReview.review}
						</div>
					</div>
                     
 --%>
                     
                  </form>
               </div>
            </div>
            
         </div>
      </div>
     </div>
   </div>
   <!-- 후기 상세보기 종료 (안 씀..) -->
   
   
   
	<!-- ==================================================================================== -->
	<!-- ==================================================================================== -->
	<!-- ==================================================================================== -->
   <!-- 후기수정 시작-->

   <!-- 후기수정 종료-->
<!-- --------------------------------------------------------------------------------------- -->
<!-- --------------------------------------------------------------------------------------- -->
<!-- --------------------------------------------------------------------------------------- -->               
            
   
   
               
<!-- --------------------------------------------------------------------------------------- -->
<!-- --------------------------------------------------------------------------------------- -->
<!-- --------------------------------------------------------------------------------------- -->         





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