<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  	String agree = request.getParameter("agree");
	String result = null;
	
	if(agree.equals("yes")) {
		String id = (String)session.getAttribute("id");
		String pw = (String)session.getAttribute("pw");
		String name = (String)session.getAttribute("name");
		PrintWriter writer = null;		// File -> DB
		try {
			String filePath = application.getRealPath("/WEB-INF/" + id + ".txt");
			writer = new PrintWriter(filePath);
			writer.println("아이디 : " + id);
			writer.println("패스워드 : " + pw);
			writer.println("이름 : " + name);
			result = "SUCCESS";
		} catch (IOException ioe) {
			result = "FAIL";
		} finally {
			try {
				writer.close();
			} catch (Exception e) {}
		}
		// result = "SUCCESS";
	} else {
		
	}
	session.invalidate();
	response.sendRedirect("Result.jsp?RESULT=" + result);
%>