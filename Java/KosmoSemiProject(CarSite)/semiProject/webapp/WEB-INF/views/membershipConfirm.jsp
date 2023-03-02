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
    <link rel="stylesheet" href="resources/css/purchase.css">


</head>
<body>
	<c:if test="${sessionScope.loginSession == null}">
    	<h1>세션이 만료되었습니다.</h1>
    </c:if>
    <c:if test="${sessionScope.loginSession != null}">
    <!-- =============================================================== -->
    <!-- 결제페이지 시작 -->
    
    <div class="payment">
    	<div class="bg"></div>
    	<div class="card">
    		<img src="resources/images/purchase/chip.png" class="chip">
    		<div class="logo"></div>
    		<h2 class="bankName" contenteditable="true">${sessionScope.loginSession.userID}님의 결제 페이지</h2>
    		<form>
				<div class="inputBox">
    					<span>선택하신 구독등급</span>
    					<input type="text" placeholder="~외 몇개" value="${grade}" maxlength="19" name="grade">
    				</div>
    			<div class="inputBox">
    				<span>금액</span>
    				<input type="text" value="${totalPrice}" readonly name="totalPrice">(만원)
    			</div>
    			<div class="group">
    				<div class="inputBox">
    					<span>결제 종류</span>
    					<input type="text" placeholder="카드 or 현금" maxlength="5" name="cardOrCash">
    				</div>
    				<div class="inputBox">
    					<span>PW</span>
    					<input type="password" placeholder="****" maxlength="4" name="minPW">
    				</div>
    			</div>
    		</form>
    	</div>
    	<button class="btn" onclick="location.href='membershipConfirmPay.do?grade=${grade}'">Confirm and Pay</button>
    	<button class="btn" onclick="location.href='index.jsp'">취소하기</button>
    </div>
    
    <!-- 결제페이지 종료 -->
    <!-- =============================================================== -->
    </c:if>
</body>
</html>