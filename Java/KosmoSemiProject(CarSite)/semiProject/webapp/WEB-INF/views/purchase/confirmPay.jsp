<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	var cnt=3;
	var membershipMessage = "${membershipMessage}";
	alert(membershipMessage);
	setInterval(function(){
		cnt--;
		document.getElementById("timeOut").innerText = cnt;
		if(cnt == 0){
			location.replace('index.jsp?');
		}
	}, 1000);
</script>
</head>
<body>
<div><h2>거래가 완료되었습니다.</h2> <br>
<span id="timeOut">3</span>초 뒤 메인 페이지로 돌아갑니다.</div>
</body>
</html>