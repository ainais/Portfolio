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
<div align="center"><font size=5> 회원정보 수정하기 </font></div>
<div align="center">
<br><br>
<form action="updateCustomer.do">
	<table border=1 >
		<tr>
			<td  align=center> 회원 이름 </td>
			<td> <input  type=text  name=custname size=20  value= ${customerDetail.userName } ></td>
		</tr>
		<tr>
			<td  align=center> 회원 비밀번호 </td>
			<td><input  type=text  name=custPW size=20 value= ${customerDetail.userPW }></td>
		</tr>
		<tr>
			<td  align=center> 회원 주소 </td>
			<td><input  type=text  name=phone size=20 value= ${customerDetail.userAddr }></td>
		</tr>
		<tr>
			<td  align=center>회원 전화번호 </td>
			<td><input  type=text  name=address size=40 value= ${customerDetail.userTel } ></td>
		</tr>
		<tr>
			<td  align=center>회원 이메일</td>
			<td><input  type=text  name=grade size=40 value= ${customerDetail.userEmail }></td>
		</tr>
		<tr>
			<td colspan=2  align=center>
				<input  type=submit  value="수정"> 
			</td>
		</tr>
	</table>
</form>
</div>
</section>
</body>
</html>