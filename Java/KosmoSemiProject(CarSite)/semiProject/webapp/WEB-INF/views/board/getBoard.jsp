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
    
    <!-- Mapsed.css -->
    <link href="resources/mapsed.css" rel="stylesheet">
    
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
	
	<link rel="stylesheet" href="resources/getBoard/CSS.css">
    <link rel="stylesheet" href="resources/getBoard/media.css">
    <link rel="stylesheet" href="resources/getBoard/style.css">
    
    <!-- Modernizer for Portfolio -->
    <script src="resources/js/modernizer.js"></script>

</head>
<body class="host_version"> 
  <!-- ===================================== --> 
<!-- Header Input시작 -->
<jsp:include page="../../../header.jsp"/>
<!-- Header Input종료 -->
<!-- ===================================== --> 
   
   <!-- ==================================================================================== -->
   
   <div class="all-title-box">
      <div class="container text-center">
         <h1>게시글 확인<span class="m_1"></span></h1>
      </div>
   </div>
   <!-- ==================================================================================== -->
   
	
    <!-- ==================================================================================== -->
    <!-- 게시글 상세보기 시작-->
   <div class="board_wrap" >
        <div class="board_title" style="width:auto">
            <strong style="font-size:30px;">자유게시판</strong>
            <p style="font-size:20px;">자유롭게 소통하는 공간입니다.</p>
        </div>
      <form id="contactform" class="" action="updateBoard.do" name="contactform" method="post">
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">                
                <input name="boardID" type="hidden" value="${boardView.boardID}" />
                    <dl>
                        <dt style="font-size:20px;">제목</dt>
                        <dd style="font-size:20px;"><input name="boardTitle" type="text" value="${boardView.boardTitle}"/></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt style="font-size:20px;">작성자</dt>
                        <dd style="font-size:20px;">${boardView.userID }</dd>
                    </dl>
                    <dl>
                        <dt style="font-size:20px;">등록일</dt>
                        <dd style="font-size:20px;">${boardView.boardRegdate }</dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt style="font-size:20px;">조회수</dt>
                        <dd style="font-size:20px;">${boardView.boardCnt }</dd>
                    </dl>
                    <dl>
                        <dt style="font-size:20px;">공개여부</dt>
                        <dd style="font-size:20px;">${boardView.boardSecret }</dd>
                    </dl>
                </div>
                <div class="cont"  style="font-size:23px;">
                    <textarea name="boardContent" placeholder="내용 입력해주세요.">${boardView.boardContent }</textarea>
                </div>
            </div>
            <br/><br/>
            <div class="text-center pd" align="center">
            	<c:if test="${sessionScope.loginSession != null }">
                <button type="submit" class="btn btn-light btn-radius btn-brd grd1">
		                	수정하기
		        </button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		        <button type="button" class="btn btn-light btn-radius btn-brd grd1" onclick="location.href='deleteBoard.do?boardID=${boardView.boardID}'">
		                                             삭제하기
		        </button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		        </c:if>
		        <button type="button" class="btn btn-light btn-radius btn-brd grd1" onclick="location.href='freeBoard.do'">
		                                            목록보기
		        </button>
            </div>
        </div>
     </form>
    </div>
	<!-- 게시글 상세보기 종료-->
	<!-- ==================================================================================== -->

	<!-- ==================================================================================== -->
	<!-- logo input 시작 -->
	<jsp:include page="../../../logo.jsp" />
	<!-- logo input 종료 -->
    <!-- ==================================================================================== -->
    	
    <!-- ==================================================================================== -->
	<!-- footer Input 시작 -->
	<jsp:include page="../../../footer.jsp" />
	<!-- footer Input 종료 -->
	<!-- ==================================================================================== -->

    <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>

    <!-- ALL JS FILES -->
    <script src="resources/js/all.js"></script>
   <script src="https://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyD94viOxupZ3CTbBiVNCKBR4ieqasJ0bOA"></script>
   <!-- Mapsed JavaScript -->
   <script src="resources/js/mapsed.js"></script>
   <script src="resources/js/01-custom-places-example.js"></script>
    <!-- ALL PLUGINS -->
    <script src="resources/js/custom.js"></script>

</body>
</html>