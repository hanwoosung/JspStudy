package D20241031.servlets;

import D20241031.dao.MemberDao;
import D20241031.dto.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;

@WebServlet("/join")
public class JoinServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String addr = request.getParameter("addr");
        String brith = request.getParameter("brith");

        MemberDao dao = new MemberDao();
        boolean check = dao.regMember(new Member(name, phone, addr, LocalDate.parse(brith)));
        response.sendRedirect(check ? "suss.jsp" : "fail.jsp");
    }
}