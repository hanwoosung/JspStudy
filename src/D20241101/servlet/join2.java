package D20241101.servlet;

import D20241101.dao.CustmerDaoImpl;
import D20241101.dto.CustmerDto;
import D20241101.type.StatusType;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@WebServlet("/join2")
public class join2 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");


        int custNo = Integer.parseInt(request.getParameter("custno"));
        String custname = request.getParameter("custname");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String grade = request.getParameter("grade");
        String city = request.getParameter("city");
        CustmerDaoImpl dao = new CustmerDaoImpl();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
        LocalDate joindate = LocalDate.parse(request.getParameter("joindate"), formatter);

        CustmerDto custmer = new CustmerDto();
        custmer.setCustno(custNo);
        custmer.setCustname(custname);
        custmer.setPhone(phone);
        custmer.setAddress(address);
        custmer.setJoinDate(joindate);
        custmer.setGrade(grade.charAt(0));
        custmer.setCity(city.charAt(0));

        PrintWriter writer = response.getWriter();
        System.out.println(custmer.getCustname());

        StatusType result;

        if (dao.phoneCheck(phone,custNo)) {
            boolean check = dao.setCust(custmer);
            result = check ? StatusType.SUCCESS : StatusType.FAILURE;
        } else {
            result = StatusType.DUPLICATE_PHONE;
        }

        writer.println(result);
        writer.close();
    }
}