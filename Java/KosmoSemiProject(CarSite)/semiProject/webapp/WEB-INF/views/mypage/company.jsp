<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Own Many Car</title>
  	<!-- 성연 폰트 -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gugi&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gugi&family=Poor+Story&display=swap" rel="stylesheet">
    <!-- 성연 폰트 -->
  <!-- Favicon -->
  <link rel="shortcut icon" href="resources/mypage/img/svg/logo.svg" type="image/x-icon">
  <!-- Custom styles -->
  <link rel="stylesheet" href="resources/mypage/css/style.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>  
<script>

$(function(){
	var todayVisitCustomer = "${todayVisitCustomer}";
	todayVisitCustomer = parseInt(todayVisitCustomer);

	let today = new Date();
	let year = today.getFullYear();
	let month = today.getMonth();
	let day = today.getDay();
	
	var options = {
			exportEnabled: true,
			animationEnabled: true,
			title:{
				text: "최근 1주일 방문자 수 및 멤버쉽 가입자 수"
			},
			axisY: {
				title: "방문자수(명)",
				titleFontColor: "#4F81BC",
				lineColor: "#4F81BC",
				labelFontColor: "#4F81BC",
				tickColor: "#4F81BC"
			},
			axisY2: {
				title: "멤버쉽 가입자(명)",
				titleFontColor: "#C0504E",
				lineColor: "#C0504E",
				labelFontColor: "#C0504E",
				tickColor: "#C0504E"
			},
			toolTip: {
				shared: true
			},
			legend: {
				cursor: "pointer",
				itemclick: toggleDataSeries
			},
			data: [{
				type: "spline",
				name: "하루 방문자수",
				showInLegend: true,
				xValueFormatString: "MM DD",
				yValueFormatString: "#,##0 (명)",
				dataPoints: [
					{ x: new Date(year,month,day),  y: todayVisitCustomer },
					{ x: new Date(year,month,day-1), y: parseInt("${VisitCustomer1}") },
					{ x: new Date(year,month,day-2), y: parseInt("${VisitCustomer2}") },
					{ x: new Date(year,month,day-3),  y: parseInt("${VisitCustomer3}") },
					{ x: new Date(year,month,day-4),  y: parseInt("${VisitCustomer4}") },
					{ x: new Date(year,month,day-5),  y: parseInt("${VisitCustomer5}") },
					{ x: new Date(year,month,day-6), y: parseInt("${VisitCustomer6}") }
				]
			},
			{
				type: "spline",
				name: "멤버쉽 가입자",
				axisYType: "secondary",
				showInLegend: true,
				xValueFormatString: "MM DD",
				yValueFormatString: "#,##0 (명)",
				dataPoints: [
					{ x: new Date(year,month,day),  y: parseInt("${MemberShipCustomer0}") },
					{ x: new Date(year,month,day-1), y: parseInt("${MemberShipCustomer1}") },
					{ x: new Date(year,month,day-2), y: parseInt("${MemberShipCustomer2}") },
					{ x: new Date(year,month,day-3),  y: parseInt("${MemberShipCustomer3}") },
					{ x: new Date(year,month,day-4),  y: parseInt("${MemberShipCustomer4}") },
					{ x: new Date(year,month,day-5),  y: parseInt("${MemberShipCustomer5}") },
					{ x: new Date(year,month,day-6), y: parseInt("${MemberShipCustomer6}") }

				]
			}]
		};
		$("#chartContainer").CanvasJSChart(options);

		function toggleDataSeries(e) {
			if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
				e.dataSeries.visible = false;
			} else {
				e.dataSeries.visible = true;
			}
			e.chart.render();
		}
}) // end of function

</script>

</head>

<body>
<!-- ============================================ -->
	<c:if test='${sessionScope.loginSession.userGrade == "업체" }'>
<!-- 관리자 시작-->
  <div class="layer"></div>
<!-- ! Body -->
<a class="skip-link sr-only" href="#skip-target">Skip to content</a>
<div class="page-flex">
  <!-- ! Sidebar -->
  <aside class="sidebar">
    <div class="sidebar-start">
        <div class="sidebar-head">
            <a href="index.jsp" class="logo-wrapper" title="Home" target="_blank">
                <span class="sr-only">Home</span>
                <img src="resources/mypage/img/logo.png">
                
                <div class="logo-text">
                    <span class="logo-title">업체 전용</span>
                    <span class="logo-subtitle">관리자 페이지</span>
                </div>

            </a>
            <button class="sidebar-toggle transparent-btn" title="Menu" type="button">
                <span class="sr-only">Toggle menu</span>
                <span class="icon menu-toggle" aria-hidden="true"></span>
            </button>
        </div>
        <div class="sidebar-body">
            <ul class="sidebar-body-menu">
                <li>
                    <a class="active" href="mypage.do"><span class="icon home" aria-hidden="true"></span>업체 관리자 메인페이지</a>
                    <a class="active" href="showAddProduct.do"><span class="icon document" aria-hidden="true"></span>내가 등록한 상품 보기</a>
                    <a class="active" href="addProduct.do"><span class="icon document" aria-hidden="true"></span>새로운 상품 등록하기</a>
                </li>
        </div>
    </div>
    <div class="sidebar-footer">
        <a href="contact.do" class="sidebar-user">
            <span class="sidebar-user-img">
                <picture><source srcset="resources/mypage/img/avatar/avatar-illustrated-01.webp" type="image/webp"><img src="resources/mypage/img/avatar/avatar-illustrated-01.png" alt="User name"></picture>
            </span>
            <div class="sidebar-user-info">

                <span class="sidebar-user__title">OwnManyCar</span>
                <span class="sidebar-user__subtitle">Support Center</span>
            </div>
        </a>
    </div>
</aside>
  <div class="main-wrapper">
    <!-- ! Main nav -->
    <nav class="main-nav--bg">
  <div class="container main-nav">   
    <!-- ============================================================= -->
    <!-- 프로필, 다크모드 등 우측 상단 메뉴 시작-->
    <div class="main-nav-end">
      <button class="sidebar-toggle transparent-btn" title="Menu" type="button">
        <span class="sr-only">Toggle menu</span>
        <span class="icon menu-toggle--gray" aria-hidden="true"></span>
      </button>

      <button class="theme-switcher gray-circle-btn" type="button" title="Switch theme">
        <span class="sr-only">Switch theme</span>
        <i class="sun-icon" data-feather="sun" aria-hidden="true"></i>
        <i class="moon-icon" data-feather="moon" aria-hidden="true"></i>
      </button>
    </div>
    <!-- 프로필, 다크모드 등 우측 상단 메뉴 종료-->
    <!-- ============================================================= -->
  </div>
</nav>
	<!-- ============================================================= -->
    <!-- 관리자 메인 페이지 -->
    <main class="main users chart-page" id="skip-target">
      <div class="container">
        <h2 class="main-title">업체전용 관리자 페이지</h2>
        <div class="row stat-cards">
          <div class="col-md-6 col-xl-3">
            <article class="stat-cards-item">
              <div class="stat-cards-icon primary">
                <i data-feather="bar-chart-2" aria-hidden="true"></i>
              </div>
              <div class="stat-cards-info">
                <p class="stat-cards-info__num">총 ${todayVisitCustomer}명</p>
                <p class="stat-cards-info__title">금일 방문자 수</p>
              </div>
            </article>
          </div>
          <div class="col-md-6 col-xl-3">
            <article class="stat-cards-item">
              <div class="stat-cards-icon warning">
                <i data-feather="file" aria-hidden="true"></i>
              </div>
              <div class="stat-cards-info">
                <p class="stat-cards-info__num">총 ${todayNewCustomer} 명</p>
                <p class="stat-cards-info__title">신규 회원자수</p>

              </div>
            </article>
          </div>
          <div class="col-md-6 col-xl-3">
            <article class="stat-cards-item">
              <div class="stat-cards-icon purple">
                <i data-feather="file" aria-hidden="true"></i>
              </div>
              <div class="stat-cards-info">
                <p class="stat-cards-info__num">평균 ${avgAge} 세</p>
                <p class="stat-cards-info__title">회원들 평균 나이</p>

              </div>
            </article>
          </div>
          <div class="col-md-6 col-xl-3">
            <article class="stat-cards-item">
              <div class="stat-cards-icon success">
                <i data-feather="feather" aria-hidden="true"></i>
              </div>
              <div class="stat-cards-info">
                <p class="stat-cards-info__num">${genderRate}</p>
                <p class="stat-cards-info__title">남녀 성비</p>
                </p>
              </div>
            </article>
          </div>
        </div>
        <div class="row">
    <!-- ============================================================= -->
    <!-- 차트 시작 -->
          <div class="col-lg-9">
			<div id="chartContainer" style="height: 370px; width: 100%;"></div>
			<br>
	<!-- 차트 종료 -->
    <!-- ============================================================= -->
            <div class="users-table table-wrapper">
            	 <h2 class="main-title">가장 최근에 등록된 자동차</h2>
              <table class="posts-table">
                <thead>
                  <tr class="users-table-info">
                    <th>사진</th>
                    <th>차량명(클릭 시 세부보기)</th>
                    <th>등록업체</th>
                    <th>차량등급</th>
                    <th>상품 등록일</th>
                    
                  </tr>
                </thead>
                <tbody>
                  	<c:forEach items="${dbRecentProductList}" var="RecentProductList">
                  <tr>
                    <td>
                          <img src="${RecentProductList.productImageSrc}" alt="사진 x" width="50" height="50">
                    </td>
                    
                    <td>
                      <a href="viewPoint.do?productID=${RecentProductList.productID }">${RecentProductList.productName}</a>
                    </td>
                    <td>
                      ${RecentProductList.productCompanyName}
                    </td>
                    <td><span class="badge-pending">${RecentProductList.productGrade}</span></td>
                    <td>${RecentProductList.productRegdate}</td>
                  </tr>
                    </c:forEach>
                 
                </tbody>
              </table>
            </div>
          </div>
          
          <div class="col-lg-3">
            <article class="white-block">
              <div class="top-cat-title">
                <h3>좋아요 많이 받은 게시글</h3>
              </div>
              <ul class="top-cat-list">
              <c:forEach items="${dbBestBoardList}" var="BestBoard">
                <li>
                  <a href="##">
                    <div class="top-cat-list__title">
                    <img src="resources/upload/${BestBoard.boardFname}" width="30" height="30"><br>
                      게시글번호:${BestBoard.boardID} <span>좋아요 수 :${BestBoard.boardLike } </span>
                    </div>
                    <div class="top-cat-list__subtitle">
                     작성자:${BestBoard.userID} <span class="purple">작성일:${BestBoard.boardRegdate}</span>
                    </div>
                  </a>
                </li>
              </c:forEach>
              </ul>
            </article>
          </div>
        </div>
      </div>
    </main>
    <!-- 관리자 메인 페이지 종료 -->
    <!-- ============================================================= -->
    
    <!-- ============================================================= -->
    <!-- Footer 시작 -->
    <footer class="footer">
	  <div class="container footer--flex">
	    <div class="footer-start">
	      <p>Own Many Car - <a href="index.jsp" target="_blank"
	          rel="noopener noreferrer">www.ownmanycar.com</a></p>
	    </div>
	    <ul class="footer-end">
	      <li><a href="##">About</a></li>
	      <li><a href="##">Support</a></li>
	      <li><a href="##">Puchase</a></li>
	    </ul>
	  </div>
	</footer>
    <!-- Footer 종료 -->
    <!-- ============================================================= -->
  </div>
</div>
<!-- Chart library -->
<script src="resources/mypage/plugins/chart.min.js"></script>
<!-- Icons library -->
<script src="resources/mypage/plugins/feather.min.js"></script>
<!-- Custom scripts -->
<script src="resources/mypage/js/script.js"></script>
<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
<!-- 관리자 종료-->
	</c:if>
<!-- ============================================ -->
</body>

</html>