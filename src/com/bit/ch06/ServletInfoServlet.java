package com.bit.ch06;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletInfo")
public class ServletInfoServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext context = getServletContext();
		String serverInfo = context.getServerInfo();
		int majorVersion = context.getMajorVersion();
		int minorVersion = context.getMinorVersion();
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>웹 서버의 정보</title></head>");
		out.println("<body>");
		out.printf("웹 서버의 종류 : %s <p>", serverInfo);
		out.printf("지원하는 서블릿 버전 : %d.%d <p>", majorVersion, minorVersion);
		out.println("</body>");
		out.println("</html>");
		//System.out.println(context);
	}

}
