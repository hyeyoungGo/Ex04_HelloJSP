<%@page import="java.io.FileWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	private PrintWriter logFile;
	public void jspInit() {
		String fileName = "D:\\data\\datetime_log.txt";
		try {
			logFile = new PrintWriter(new FileWriter(fileName, true));
		} catch(IOException e) {
			System.out.printf("%TT - %s 파일을 열 수 없습니다. \n",
					new GregorianCalendar(), fileName);
		}
		
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>현재의 날짜와 시간</title>
</head>
<body>
	<%
		GregorianCalendar now = new GregorianCalendar();
		String date = String.format("현재 날짜 : %TY년 %Tm월 %Te일", now, now, now);
		String time = String.format("현재 시간 : %TI시 %Tm분 %Ts초", now, now, now);
		out.println(date + "<p>");
		out.println(time + "<p>");
		if(logFile != null) {
			logFile.printf("%TF %TT에 호출되었습니다. \n", now, now);
		}
	%>

</body>
</html>
<%!
	public void jspDestroy() {
		if(logFile != null) {
			logFile.close();
		}
	} 
%>