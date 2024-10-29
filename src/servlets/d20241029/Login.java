package servlets.d20241029;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class Login {
    public void setSession(HttpServletRequest req) {
        HttpSession session = req.getSession();
        session.setAttribute("userId", req.getParameter("userId"));
        session.setAttribute("age", req.getParameter("age"));
    }

    public void goRedirect(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        if (req.getParameter("userId").equals("green") && req.getParameter("userPw").equals("p1234")) {
            setSession(req);
            resp.sendRedirect((Integer.parseInt(req.getParameter("age")) >= 20) ? "success2.jsp" : "success.jsp");
        } else {
            resp.sendRedirect("fail.jsp");
        }
    }
}
