<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
</head>
<body>
	<center>
	<table width="800" cellpadding="10" cellspacing="10" border="1">
	<tr align="center"><td>
	<table>
		<tr align="center"><td><h3>동호회 회원 관리</h3></td></tr>
	</table></td></tr>
	<tr align="center"><td>
	<table width="700">
		<tr align="left"><td>
		총인원수 :	<c:set var="count" value="0" />
				<c:set var="count" value="0" />
				<c:forEach items="${list }" var="list">
				<c:set var="count" value="${count+1}" />
				</c:forEach>
			 	<c:out value="${count }" />
			 	</td>
		 	</tr>
 	</table>
	<table width="700" cellpadding="0" cellspacing="0" border="1" align="center">				
		<tr align="center" bgcolor="grey">
			<td>번호</td>
			<td>이름</td>
			<td>전화번호</td>
			<td>주소</td>	
			<td>가입일</td>
		</tr>
		<c:forEach items="${list}" var="dto">
		<tr align="center">
			<td >${dto.id}</td>
			<td><a href="modify_view?id=${dto.id}">${dto.uname}</a></td>
			<td>${dto.uphone1}-${dto.uphone2}-${dto.uphone3}</td>
			<td>${dto.uaddr}</td>
			<td>${dto.udate}</td>
		</tr>
		</c:forEach>
	</table></center>
	<table width="700">
		<tr align="right">
			<td colspan="5"><a href="writeForm"><button>회원정보입력</button></a>
			<button type="button" onclick="location.href='index'">처음으로</button>
			</td>
		</tr>
	</table>
</body>
</html>