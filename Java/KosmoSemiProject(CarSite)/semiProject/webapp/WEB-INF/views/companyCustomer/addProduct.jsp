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
	
	<!-- ==================================== -->
	<!-- 템플릿 CSS 시작 -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="resources/product/table05_cssfonts/icomoon/style.css">

    <link rel="stylesheet" href="resources/product/table05_csscss/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="resources/product/table05_csscss/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="resources/product/table05_csscss/style.css">
	<!-- 템플릿 CSS 종료 -->
	<!-- ==================================== -->
		<!-- 성연 폰트 -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gugi&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gugi&family=Poor+Story&display=swap" rel="stylesheet">
    <!-- 성연 폰트 -->

</head>
<body>
<br><br><br>
		<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">상품 등록하기</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">

	<form action="addProductOK.do" method="post">
		<table class="table table-responsive-xl" >
			<tr align="center">
				<td>차량 명</td>
				<td><input type="text" name="productName" placeholder="ex)2021 BMW 7시리즈" required></td>
			</tr>
			<tr align="center">
				<td>차량 브랜드</td>
				<td><input type="text" name="productBrand" placeholder="ex)현대" required></td>
			</tr>
			<tr align="center">
				<td>차량 가격</td>
				<td><input type="text" name="productPrice" placeholder="숫자만 입력 가능" pattern="[0-9]+" required></td>
			</tr>
			<tr align="center">
				<td>차량 엔진 종류</td>
				<td><input type="text" name="productEngine" placeholder="ex)가솔린, 전기" required></td>
			</tr>
			<tr align="center">
				<td>차량 재고</td>
				<td><input type="text" name="productStock" placeholder="숫자만 입력 가능" pattern="[0-9]+" required></td>
			</tr>
			<tr align="center">
				<td>차량 연비</td>
				<td><input type="text" name="productMileage" placeholder="숫자만 입력 가능" pattern="[0-9]+" required></td>
			</tr>
			<tr align="center">
				<td>차량 특성</td>
				<td><input type="text" name="productChar" placeholder="ex)풀옵션 기본 장착" required></td>
			</tr>
			<tr align="center">
				<td>차량 인승</td>
				<td><input type="text" name="productSeatCapacity" placeholder="숫자만 입력 가능" pattern="[0-9]+" required></td>
			</tr>
			<tr align="center">
				<td>차량 이미지</td>
				<td><input type="text" name="productImageSrc"></td>
			</tr>
			<tr align="center">
				<td>차량 360도 파노라마 사진</td>
				<td><input type="text" name="productViewPoint"></td>
			</tr>
			<tr align="center">
				<td>차량 설명</td>
				<td><textarea name="productContent"></textarea></td>
			</tr>
			<tr align="center">
				<td colspan="2"><input type="submit" value="등록하기"></td>
			</tr>
		</table>
	</form>
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
    <script src="resources/product/table05_css/js/jquery-3.3.1.min.js"></script>
    <script src="resources/product/table05_css/js/popper.min.js"></script>
    <script src="resources/product/table05_css/js/bootstrap.min.js"></script>
    <script src="resources/product/table05_css/js/main.js"></script>
</body>
</html>