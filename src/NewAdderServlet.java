import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/NewAdderServlet")
public class NewAdderServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String str1 = request.getParameter("NUM1");
		String str2 = request.getParameter("NUM2");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		try {
			int num1 = Integer.parseInt(str1);
			int num2 = Integer.parseInt(str2);
			int result = num1 + num2;
			out.println("<html>");
			out.println("<head><title>덧셈 프로그램</title></head>");
			out.println("<body>");
			out.printf("%d + %d = %d", num1, num2, result);
			out.println("</body>");
			out.println("</html>");
		} catch (NumberFormatException e) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("data-error");
			dispatcher.forward(request, response);
		}
	}

}
