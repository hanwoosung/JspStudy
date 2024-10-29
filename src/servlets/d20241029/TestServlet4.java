package servlets.d20241029;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Arrays;

@WebServlet("/Life")
public class TestServlet4 extends HttpServlet {

    public TestServlet4() {
        super();
    }

    public void init(ServletConfig config) throws ServletException {
        System.out.println("Servlet init");
    }
/*

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("service");
    }
*/

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet");
        //form에서 get 방식으로 입력데이터를 파라미터로 서블릿에 보내왔다.
        //파라미터를 서블릿에서 받으려면...
        //요청을 처리하는 객체 HttpServletRequest 참조 변수 (request)를 사용한다.
        //요청 객체의 파라미터 처리 전용 메소드(getParameter("파라미터이름"))를 사용한다.
        //만약 파라미터를 숫자형 자료형으로 변홚나려면
        //Wrapper Class(래퍼클래스)의 해당 타입 parse 메소드를 사용한다.(parseInt(),parseDouble())
        response.setContentType("text/html; charset=utf-8");
        String name = request.getParameter("username");
        System.out.println("doget" + name);
  /*      PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head><title>LifeCylcer</title></head>");
        out.println("<body>");
        out.println("<h1>LifeCylcer" + name + "</h1>");
        out.println("</body>");
        out.println("</html>");*/

        String encodedName = URLEncoder.encode(name, "UTF-8");
        response.sendRedirect("20241025/lifeResponse.jsp?username=" + encodedName);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=utf-8");
        request.setCharacterEncoding("utf-8");


        String name = request.getParameter("username");
        String gender = request.getParameter("gender");
        String[] hobbies = request.getParameterValues("hobbies");
        String[] jobs = request.getParameterValues("jobs");

        System.out.println("doPost : " + name);
        System.out.println("doPost gender : " + gender);
        System.out.println("doPost jobs : " + Arrays.toString(jobs));
        System.out.println(Arrays.toString(hobbies));

        String encodedName = URLEncoder.encode(name, "UTF-8");
        String encodedName2 = URLEncoder.encode(Arrays.toString(hobbies), "UTF-8");
        String encodedName3 = URLEncoder.encode(Arrays.toString(jobs), "UTF-8");

        response.sendRedirect("20241025/lifeResponse.jsp?username=" + encodedName + "&gender=" + gender + "&hobbies=" + encodedName2 + "&jobs=" + encodedName3);
    }

    public void destroy() {
        System.out.println("destroy");
    }
}