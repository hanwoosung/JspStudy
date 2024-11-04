import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/loginC")
public class loginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        if (id.equals("aa") && pw.equals("bb")) {
            Cookie cookie = new Cookie("id", id);
            cookie.setMaxAge(60 * 60);
            response.addCookie(cookie);
        }
        response.sendRedirect("cookieResult.jsp");
    }
}