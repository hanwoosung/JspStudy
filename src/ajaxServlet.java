import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/demo")
public class ajaxServlet extends HttpServlet {
    ArrayList<String> idList = new ArrayList<>();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");


        PrintWriter out = response.getWriter();
        String id = request.getParameter("id");
        HttpSession session = request.getSession();

        if (idList.contains(id)) {
            out.println("이미 사용 중");
            session.setAttribute("id", id);
        } else {
            session.setAttribute("id", id);
            idList.add(id);
            out.println("통과");
        }
    }

}