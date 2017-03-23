<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String result = request.getParameter("RESULT"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
	<h2>회원 가입 결과</h2>
	<%
		if(result.equals("SUCCESS")) {
			out.println("환영합니다. 회원가입이 정상적으로 처리되었습니다.");
		} else {
			out.println("회원가입에 실패했습니다.");
		}
	%>

</body>
</html>