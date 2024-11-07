package D20241106;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/login11")
public class LoginSevlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        PrintWriter out = response.getWriter();
        System.out.println(id+"ㅁㅁㅁ");
        System.out.println(pw);
        if(id.equals("aaaa")&& pw.equals("1234")){
            HttpSession session = request.getSession();
            session.setAttribute("id", id);
            out.println("성공");
        }else{
            out.println("실패");
        }
    }
}