<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modify_view.jsp</title>
</head>
<body>
	<center>
	<table width="800" cellpadding="10" cellspacing="10" border="1">
	<tr align="center"><td>
	<table>
		<tr align="center"><td><h3>동호회 회원 관리</h3></td></tr>
	</table></td></tr>
	<tr align="center"><td>
	<table width="700" cellpadding="0" cellspacing="0" border="1">
		회원정보 열람
		<form action="modify" method="post">
      <input type="hidden" name="id" value="${modify_view.id}">
			<tr align="center" width="100">
				<td bgcolor="grey" width="120">회원 이름</td>
				<td align="left">${modify_view.uname}</td>
			</tr>
			<tr>
				<td align="center" bgcolor="grey">전화번호</td>
				<td><select name="uphone1">
				<option value="010" selected="selected">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
				</select> - 
				<input type="text" name="uphone2" size="10" value="${modify_view.uphone2}"> - 
           		<input type="text" name="uphone3" size="10" value="${modify_view.uphone3}">
				</td>
			</tr>
			<tr>
				<td bgcolor="grey" align="center">주소</td>
				<td><input type="text" style="height:100px;" name="uaddr" size="90" height="90" value="${modify_view.uaddr}"></td>
			</tr>
			<tr>
				<td bgcolor="grey" align="center">가입일</td>
				<td>${modify_view.udate}</td>
			</tr>			
	</table>
			<tr height="50" align="right">
				<td colspan="3" style="border-left:none; border-top:none; border-right:none; border-bottom:none;"><input type="submit" value="정보수정">&nbsp;&nbsp;
	            <button type="button" onclick="location.href='delete?id=${modify_view.id}'">회원삭제</button>&nbsp;&nbsp;
	            <button type="button" onclick="location.href='list'">회원목록보기</button></td>
			</tr>
		</form>
	</td></tr>
	</table>
	</center>
</body>
</html>