package servlet;

import dao.OrderDaoImpl;
import dto.OrderDto;
import type.Status;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/order")
public class OrderServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");

        String orderNo = request.getParameter("orderNo");
        String shopNo = request.getParameter("shopNo");
        String orderDate = request.getParameter("orderDate");
        String pCode = request.getParameter("pCode");
        int amount = Integer.parseInt(request.getParameter("amount"));

        OrderDto order = new OrderDto(orderNo, shopNo, orderDate, pCode, amount);
        OrderDaoImpl dao = new OrderDaoImpl();

        PrintWriter out = response.getWriter();
        out.write((dao.order(order) > 0 ? Status.SUCCESS.name() : Status.FAIL.name()));
        out.close();
    }
}
