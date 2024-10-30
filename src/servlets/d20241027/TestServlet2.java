package servlets.d20241027;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/test")
public class TestServlet2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");

        // String userName = request.getParameter("userName");

        //System.out.println("TestServlet  실행 ....." + userName);
        PrintWriter out = response.getWriter();
/*        out.println("<html>");
        out.println("<head>");
        out.println("<title>test</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>TestServlet 응답 화면</h1>");
        out.println("<hr>");
        out.println("<p>이렇게 까지 해야 됩니까?</p>");
        out.println("</body>");
        out.println("</html>");*/
        response.sendRedirect("forth.jsp?result=" + (Integer.parseInt(request.getParameter("a")) + Integer.parseInt(request.getParameter("b"))));
    }
}