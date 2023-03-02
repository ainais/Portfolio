<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="resources/board/fonts/icomoon/style.css">

<link rel="stylesheet" href="resources/board/css/owl.carousel.min.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="resources/board/css/bootstrap.min.css">

<!-- Style -->
<link rel="stylesheet" href="resources/board/css/style.css">

<title>회원 목록 리스트</title>
</head>
<body>


<!-- ============================================================= -->
<!-- 등록한 상품 목록 시작 -->
	<div class="content">
		<div class="container">
			<div class="table-responsive">
			<h2 class="mb-5">전체 상품 목록</h2>
		<a href="allProduct.do">전체 상품 보러가기</a>
				<table class="table table-striped custom-table">
					<thead>
						<tr>
							<th scope="col">차량아이디</th>
							<th scope="col">차량사진</th>
							<th scope="col">차량명</th>
							<th scope="col">차량브랜드</th>
							<th scope="col">차량 구독 등급<br>
								<button type="button" name="carGrade" id="carGradeASC" class="btn btn-default">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-up-fill" viewBox="0 0 16 16">
								<path d="m7.247 4.86-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z"/></svg>
								</button>
								<button type="button" name="carGrade" id="carGradeDESC" class="btn btn-default">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
								<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/></svg>
								</button>
							</th>
							<th scope="col">차량 가격(만원)<br>
								<button type="button" name="carPriceASC" id="carPriceASC" class="btn btn-default">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-up-fill" viewBox="0 0 16 16">
								<path d="m7.247 4.86-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z"/></svg>
								</button>
								<button type="button" name="carPriceDESC" id="carPriceDESC" class="btn btn-default">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
								<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/></svg>
								</button>
							</th>
							<th scope="col">차량 엔진 종류</th>
							<th scope="col">차량 연비</th>
							<th scope="col">수정하기</th>
						</tr>
					</thead>
					<tbody>
						<tr scope="row">
						<c:forEach items = "${productList}" var="product">
							<tr align="center">
								<td>${product.productID}</td>
								<td><img src="${product.productImageSrc }" width="100" height="100"/></td>
								<td>${product.productName }</td>
								<td>${product.productBrand}</td>
								<td>${product.productGrade}</td>
								<td>${product.productPrice}</td>
								<td>${product.productEngine}</td>
								<td>${product.productMileage}</td>
								<td><a href="companyViewPoint.do?productID=${product.productID}"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
								<path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
								<path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
								</svg></a></td>
							</tr>
						</c:forEach>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
<!-- 등록한 상품 목록 종료 -->
<!-- ============================================================= -->
	<script src="resources/board/js/jquery-3.3.1.min.js"></script>
	<script src="resources/board/js/popper.min.js"></script>
	<script src="resources/board/js/bootstrap.min.js"></script>
	<script src="resources/board/js/main.js"></script>
</body>
</html>
