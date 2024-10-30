package servlets.d20241029;

import pojo.Human;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/reg")
public class RegServlet2 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

//        폼에서 id, pw, name 파라미터가 전달된다.
        String id = request.getParameter("userid");
        String pw = request.getParameter("pw");
        String name = request.getParameter("name");

//        Memeber 객체에 파라미터를 담자.
        Human member = new Human();
        member.setId(id);
        member.setPw(pw);
        member.setName(name);

        request.setAttribute("member", member);

        request.getRequestDispatcher("member_result.jsp").forward(request, response);
    }
}