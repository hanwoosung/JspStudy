package D20241031.servlets.d20241029;


import D20241031.pojo.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/regist")
public class RegServlet extends HttpServlet {
    ArrayList<Member> memberList = new ArrayList<>();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");

        Member member = new Member();

        for (String key : request.getParameterMap().keySet()) {
            String value = request.getParameter(key);
            System.out.println(value);
            if (key.equals("userId")) member.setId(value);
            else if (key.equals("userPw")) member.setPw(value);
            else if (key.equals("name")) member.setName(value);

        }

        memberList.add(member);

        request.setAttribute("member", memberList);
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}