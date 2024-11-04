package D20241104.dao;

import D20241104.dto.OrderDto;
import D20241104.dto.OrderListDto;
import D20241104.dto.ProductListDto;
import D20241104.dto.ShopOrderListDto;
import db.DBConn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDaoImpl implements OrderDao {
    Connection conn = null;

    public OrderDaoImpl() {
        conn = DBConn.getInstance().getConnection();
    }

    @Override
    public int order(OrderDto order) {
        String sql = "insert into tbl_order_202101 values(?,?,?,?,?)";
        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, order.getOrderNo());
            ps.setString(2, order.getShopNo());
            ps.setString(3, order.getOrderDate());
            ps.setString(4, order.getPCode());
            ps.setInt(5, order.getAmount());
            return ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<OrderListDto> orderList() {
        String sql =
                """
                SELECT a.shopNo,b.shopName,a.orderNo,a.orderDate,a.pCode,c.pname,a.amount,c.cost,
                       (c.cost*a.amount) AS consumerPrice,
                       ROUND((c.cost * a.amount) - (c.cost * a.amount * (b.discount / 100))) AS discountPrice
                FROM tbl_order_202101 a
                LEFT JOIN tbl_shop_202101 b ON a.SHOPNO = b.SHOPNO
                LEFT JOIN tbl_product_202101 c ON a.PCODE = c.PCODE;
                """;
        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ResultSet rs = ps.executeQuery();
            List<OrderListDto> list = new ArrayList<>();
            while (rs.next()) {
                list.add(new OrderListDto(
                        rs.getString("shopNo"),
                        rs.getString("shopName"),
                        rs.getString("orderNo"),
                        rs.getString("orderDate"),
                        rs.getString("pCode"),
                        rs.getString("pName"),
                        rs.getInt("amount"),
                        rs.getInt("cost"),
                        rs.getInt("consumerPrice"),
                        rs.getInt("discountPrice")
                ));
            }
            return list;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<ShopOrderListDto> shopOrderList() {
        String sql =
                """
                SELECT a.shopNo,a.pCode,c.pName,a.amount
                FROM tbl_order_202101 a
                LEFT JOIN tbl_product_202101 c ON a.PCODE = c.PCODE
                GROUP BY shopNo ,pCode;
                """;

        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ResultSet rs = ps.executeQuery();
            List<ShopOrderListDto> list = new ArrayList<>();
            while (rs.next()) {
                list.add(new ShopOrderListDto(
                        rs.getString("shopNo"),
                        rs.getString("pCode"),
                        rs.getString("pName"),
                        rs.getInt("amount")
                ));
            }
            return list;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<ProductListDto> productList() {
        String sql =
                """
                SELECT  c.pCode,c.pName,c.cost,
                        FORMAT(c.COST * 0.9, 3) AS discountTen,
                        FORMAT(c.COST * 0.85, 3) AS discountFifteen
                FROM    tbl_product_202101 c;
                """;
        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ResultSet rs = ps.executeQuery();
            List<ProductListDto> list = new ArrayList<>();
            while (rs.next()) {
                list.add(new ProductListDto(
                        rs.getString("pCode"),
                        rs.getString("pName"),
                        rs.getInt("cost"),
                        rs.getString("discountTen"),
                        rs.getString("discountFifteen")
                ));
            }
            return list;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
