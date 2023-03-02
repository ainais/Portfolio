<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section>
<br><br>
<div align="center"><font size=5> 회원 탈퇴하기 </font></div>
<div align="center">
<br><br>
<form action="deleteCustomer2.do" method="post">
	<table border=1 >
	      <tr>
			<td align=center> 회원 아이디 </td>
			<td><input type="text" readonly value="${customerDetail}" name="userID"></td>
		</tr>
         <tr>
			<td align=center> 회원 비밀번호 </td>
			<td><input  type="password"  name="userPW" size=20></td>
		</tr>			
		<tr>
			<td colspan=2  align=center>
			<input  type="submit"  value="탈퇴"> 
			</td>
		</tr>
	</table>
</form>
</div>
</section>
</body>
</html>