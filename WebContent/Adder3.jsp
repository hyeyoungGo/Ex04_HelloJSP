<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String str1 = request.getParameter("NUM1");
	String str2 = request.getParameter("NUM2");
	int num1 = Integer.parseInt(str1);
	int num2 = Integer.parseInt(str2);
	int result = num1 + num2;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>덧셈 프로그램</title>
</head>
<body>
	<h2><%=num1 %> + <%=num2 %> = <%=result %></h2>
</body>
</html>