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
    	<!-- 성연 폰트 -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gugi&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gugi&family=Poor+Story&display=swap" rel="stylesheet">
    <!-- 성연 폰트 -->
<style type="text/css">
		#type09 {
		  border-collapse: collapse;
		  text-align: center;
		  line-height: 1.5;
		}
		#type09 thead th {
		  padding: 10px;
		  font-weight: bold;
		  font-size:30px;
		  height:75px;
		  vertical-align: top;
		  background-color:#f3f6f7;
		  color: #369;
		  border-bottom: 3px solid #036;
		}
		#type09 tbody th {
		  width: 150px;
		  padding: 10px;
		  font-weight: bold;
		  vertical-align: top;
		  border-bottom: 1px solid #ccc;
		  background: #f3f6f7;
		}
		#type09 td {
		  width: 350px;
		  padding: 10px;
		  vertical-align: top;
		  border-bottom: 1px solid #ccc;
		}
		#paging{
		    font-size: 30pt;
		    text-align:center;
}

</style>
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
    <script src="resources/js/board.js"></script>

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
	   <!-- ************************************************************************** -->
   <!-- Modal /insertBoard.do -->
   <div class="modal fade" id="insertBoard" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
         <div class="modal-content">
                  <div class="modal-header tit-up">
               <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
               <h4 class="modal-title">글쓰기</h4>
            </div>
            <div class="modal-body customer-box">
               <!-- Nav tabs -->
               <!-- Tab panes -->
              
                  <div class="tab-pane active" id="inseretBoard">
                     <form role="form" class="form-horizontal" method="post" action="saveBoard.do">
                        <div class="form-group">
                           <div class="col-sm-12">
                                <input class="form-control" id="boardTitle" name="boardTitle" placeholder="제목" type="text" required>
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="col-sm-12">
                                <input class="form-control" id="userID" name="userID" value="${sessionScope.loginSession.userID}" type="hidden" readonly>
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="col-sm-12">
                                 <textarea class="form-control" id="boardContent" name="boardContent"  rows="10" placeholder="내용을 입력해주세요." required></textarea>
                            </div>
                        </div>
                         <div class="form-group">
                        <div class="col-sm-12">
                                       공개 : <input class="form_control" id="boardSecret" name="boardSecret" value="공개" type="radio" checked>&nbsp;&nbsp;&nbsp;&nbsp;
                                       비공개 : <input class="form_control" id="boardSecret" name="boardSecret" value="비공개" type="radio">
                           <input type="hidden" name="boardIP" value="<%=request.getRemoteAddr()%>"> 
                        </div>
                     </div>
                        <div class="row">
                           <div class="col-sm-10">
                              <button type="submit" class="btn btn-light btn-radius btn-brd grd1">
                                  등록하기
                              </button>
                           </div>
                        </div>
                     </form>
                  </div>
            </div>
         </div>
        </div>
      </div>
   

  <!-- ===================================== --> 
   
   <!-- ==================================================================================== -->
   <!-- 배너 사진 나오는 부분 시작 -->
   <div class="all-title-box">
      <div class="container text-center">
         <h1>
              자유 게시판
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
   <!-- 주의사항 -->
    <div class="container" style="align:center;">
                <table border="1">
                   <tr>
                      <td>
                   &nbsp;●&nbsp; 이 게시판은 이용자분들의 의견을 수렴하는 공간으로 공식적인 답변은 하지 않습니다.<br/>
               &nbsp;●&nbsp; 1:1문의 및 각종 불편신고 등 답변이 필요한 사항이나 문의사항은 고객센터를 이용해 주시기 바랍니다.<br/>
               &nbsp;●&nbsp; [삭제대상글] 특정인을 비방하거나 명예훼손의 우려가 있는 경우, 욕설 등 불건전한 내용일 경우, 상업성 광고, 반복 게시물,
                  본 게시판 주제와 부합되지 않는 글, 법령 위반 등의 글은 예고없이 삭제되거나 해당 게시판으로 이동될 수 있으며 명예훼손,
                  주민번호 도용 등 법령위반시 처벌받을 수 있으니 각별히 유의하시기 바랍니다.<br/>
               &nbsp;●&nbsp; 본 게시판은 로그인 후 글을 쓸 수 있습니다.
                      </td>
                   </tr>
                </table>
            </div><!-- end title -->
   <!-- 주의 사항 종료 -->
   <!-- ==================================================================================== -->
   
	<!-- ************************************************************************************ -->
	<!-- 자유 게시판 리스트 출력 -->
	<br/>
				<div class="center" >
                <div class="col-xl-12 col-md-12 col-sm-12">
                    <div class="contact_form" style="background-color:white;" >
                    		
   <!-- ************************************************************************************ -->
   <!-- 자유 게시판 리스트 출력 -->
   <br/>
            <div class="center" >
                <div class="col-xl-12 col-md-12 col-sm-12">
                    <div class="contact_form" style="background-color:white;" >
                          
                     <!-- ************************************************************************************ -->
                        <!-- 자유 게시판 리스트 출력 -->
                                <!-- 로그인 되어있는 상태에서 게시문 쓸 수 있음 -->
                                <c:if test="${sessionScope.loginSession != null}">
                                 <div class="text-center pd col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                 <a class="hover-btn-new log" href="" data-toggle="modal" data-target="#insertBoard">
                                         <button type="submit" id="submit" class="btn btn-light btn-radius btn-brd grd1 btn-block" >
                                            글쓰기</button></a>
                                      </div>
                                </c:if>
                        <!-- 자유 게시판 리스트 출력 -->
                        <!-- ************************************************************************************ -->


					<br/>
					 <br/>
<div id="paging">
<!-- 1~10까지 있는 페이지의 페이징 -->
<c:url var="action" value="/freeBoard.do"/>
<table border="1" align="center" id="type09">
               <tr bgcolor="#9dc15b" align="center" height="80" style="font-size:20px;">
                  <th width="80" style="font-size:28px;">번호</th>
                  <th width="300" style="font-size:28px;">제목</th>
                  <th width="80" style="font-size:28px;">작성자</th>
                  <th width="80" style="font-size:28px;">작성일</th>
                  <th width="80" style="font-size:28px;">조회수</th>               
               </tr>
<c:forEach items = "${boardList}" var="board">
               <input type="hidden" value="${board.boardID }" id="boardID" name="boardID">
                  <tr align="center" bgcolor="white" height="50">
                     <td style="font-size:25px;">${board.boardID}</td>
                     <td style="font-size:25px;"><a href="getBoard.do?boardID=${board.boardID}" id="title">${board.boardTitle }</a></td>
                     <td style="font-size:25px;">${board.userID}</td>
                     <td style="font-size:25px;">${board.boardRegdate}</td>
                     <td style="font-size:25px;">${board.boardCnt}</td>
                  </tr>
               </c:forEach>
</table>
<c:if test="${paging.prev}">
    <a href="${action}?page=${paging.beginPage-1}">prev</a>
</c:if>
<c:forEach begin="${paging.beginPage}" end="${paging.endPage}" step="1" var="index">
    <c:choose>
        <c:when test="${paging.page==index}">
            <a href="${action}?page=${index}">${index}</a>
        </c:when>
        <c:otherwise>
            <a href="${action}?page=${index}">${index}</a>
        </c:otherwise>
    </c:choose>
</c:forEach>
<c:if test="${paging.next}">
    <a href="${action}?page=${paging.endPage+1}">next</a>
</c:if>
</div>
			
   <!-- ************************************************************************************ -->
</div></div></div>
   <!-- ************************************************************************************ -->



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