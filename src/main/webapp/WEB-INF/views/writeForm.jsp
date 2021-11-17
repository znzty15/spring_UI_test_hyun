<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>writeForm.jsp</title>
<script type="text/javascript">
   function check() {
      if (writeForm.uname.value == "") {
         alert("이름을 입력해 주세요.");
         writeForm.uname.focus();
         return false;
      } else if (writeForm.uphone1.value == "") {
         alert("번호를 전부 입력해 주세요.");
         writeForm.uphone1.focus();
         return false;
      } else if (writeForm.uphone2.value == "") {
          alert("번호를 전부 입력해 주세요.");
          writeForm.uphone2.focus();
          return false;
      } else if (writeForm.uphone3.value == "") {
          alert("번호를 전부 입력해 주세요.");
          writeForm.uphone1.focus();
          return false;
      } else if(writeForm.uaddr.value ==""){
         alert("주소를 입력해주세요.")
         writeForm.uaddr.focus();
         return false;
      } else
         return true;
   }
</script>
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
		회원정보 입력
		<form id="writeForm" action="write" method="post" onsubmit="return check()">
			<tr align="center" width="100">
				<td bgcolor="grey" width="120">회원 이름</td>
				<td><input type="text" name="uname" size="90"></td>
			</tr>
			<tr>
				<td align="center" bgcolor="grey">전화번호</td>
				<td>&nbsp;<select name="uphone1">
					<option value="010" selected="selected">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="019">019</option>
					</select> - 
					<input type="text" name="uphone2" size="30"> - 
					<input type="text" name="uphone3" size="30">
					</td>
			</tr>
			<tr align="center" height="90" padding="30">
				<td bgcolor="grey">주소</td>
				<td><input type="text" style="height:100px;" name="uaddr" size="90" height="90"></td>
			</tr>			
	</table>
	<table width="700">
			<tr align="right" >
				<td colspan="2"><input type="submit" value="회원입력완료">&nbsp;&nbsp;
				<input type="reset" value="취소">&nbsp;&nbsp;
				<button type="button" onclick="location.href='list'">회원목록보기</button>
				<br></td>
			</tr>
	</table>
		</form>
	</td></tr>
	</table>
	</center>
</body>
</html>