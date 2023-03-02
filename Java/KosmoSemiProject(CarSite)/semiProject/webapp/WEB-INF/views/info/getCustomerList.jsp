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


	<div class="content">

		<div class="container">
			<h2 class="mb-5">전체회원 목록</h2>
			

			<div class="table-responsive">

				<table class="table table-striped custom-table">
					<thead>
						<tr>

							<th scope="col">아이디</th>
							<th scope="col">비밀번호</th>
							<th scope="col">이름</th>
							<th scope="col">주소</th>
							<th scope="col">전화번호</th>
							<th scope="col">이메일</th>
							<th scope="col">성별</th>
							<th scope="col">생일</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${customerList}" var="list">
					<tr>
								<td>${list.userID}</td>
								<td>${list.userPW}</td>
								<td>${list.userName}</td>
								<td>${list.userAddr}</td>
								<td>${list.userTel}</td>
								<td>${list.userEmail}</td>
								<td>${list.userGender}</td>
								<td>${list.userBirthday}</td>
								<td><a href="updateForm.do?userID=${list.userID}">수정</a></td>
								<td><a href="deleteForm.do?userID=${list.userID}">탈퇴</a></td>
						</tr>		
						</c:forEach>		
					</tbody>
				</table>
			</div>


		</div>

	</div>



	<script src="resources/board/js/jquery-3.3.1.min.js"></script>
	<script src="resources/board/js/popper.min.js"></script>
	<script src="resources/board/js/bootstrap.min.js"></script>
	<script src="resources/board/js/main.js"></script>
</body>
</html>