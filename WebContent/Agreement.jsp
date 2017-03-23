<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	session.setAttribute("id", id);
	session.setAttribute("pw", pw);
	session.setAttribute("name", name);
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
	<h2>약관</h2>
	--------------------------------------------------------------------------------------<p>
	1. 회원 정보는 웹 사이트의 운영을 위해서만 사용됩니다.<p>
	2. 웹 사이트의 정상 운영을 방해하는 회원은 탈퇴 처리합니다.<p>
	--------------------------------------------------------------------------------------<p>
	<form action="SubScribe.jsp" method="post">
		위의 약관에 동의합니까?
		<input type = "radio" name="agree" value="yes">동의함
		<input type = "radio" name="agree" value="no">동의하지 않음<p>
		<input type ="submit" value="확인">
	</form>

</body>
</html>