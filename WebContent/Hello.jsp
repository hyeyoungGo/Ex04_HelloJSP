<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인사하기</title>
</head>
<body>
	<h2>안녕하세요. <%=request.getParameter("NAME")  %>님</h2><p>
	<% application.log("[인사하기] JSP 페이지가 호출되었습니다."); %>

</body>
</html>