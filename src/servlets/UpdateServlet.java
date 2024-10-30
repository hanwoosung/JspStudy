package servlets;

import dao.MemberDao;
import dto.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@WebServlet("/modi")
public class UpdateServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        int mno = Integer.parseInt(request.getParameter("mno"));
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String addr = request.getParameter("addr");
        String brith = request.getParameter("brith");

        MemberDao dao = new MemberDao();
        boolean check = dao.modifyMember(new Member(mno, name, phone, addr, LocalDate.parse(brith)));
        response.sendRedirect(check ? "suss.jsp" : "fail.jsp");
    }
}