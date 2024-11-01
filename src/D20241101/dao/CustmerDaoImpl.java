package D20241101.dao;

import db.DBConn;
import D20241101.dto.CustmerDto;
import D20241101.dto.CustmerSalesDto;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustmerDaoImpl implements CustmerDao {
    Connection conn;
    ResultSet rs;

    public CustmerDaoImpl() {
        conn = DBConn.getInstance().getConnection();
    }

    @Override
    public int getLastCustNo() {
        String sql = "SELECT MAX(custno) FROM member_tbl_02";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {

            try (ResultSet rs = pstmt.executeQuery();) {
                if (rs.next()) {
                    return rs.getInt(1);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public Boolean setCust(CustmerDto cust) {
        String sql = "INSERT INTO member_tbl_02 VALUES (?,?,?,?,?,?,?)";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, cust.getCustno());
            pstmt.setString(2, cust.getCustname());
            pstmt.setString(3, cust.getPhone());
            pstmt.setString(4, cust.getAddress());
            pstmt.setDate(5, Date.valueOf(cust.getJoinDate()));
            pstmt.setString(6, String.valueOf(cust.getGrade()));
            pstmt.setString(7, String.valueOf(cust.getCity()));
            return pstmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public CustmerDto getCustmer(int custNo) {
        String sql = "SELECT * FROM member_tbl_02 WHERE custno = ?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, custNo);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                CustmerDto custDto = new CustmerDto();
                custDto.setCustno(custNo);
                custDto.setCustname(rs.getString("custname"));
                custDto.setPhone(rs.getString("phone"));
                custDto.setAddress(rs.getString("address"));
                custDto.setJoinDate(rs.getDate("joinDate").toLocalDate());
                custDto.setCity(rs.getString("city").charAt(0));
                custDto.setGrade(rs.getString("grade").charAt(0));
                return custDto;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<CustmerDto> getCustmerList() {
        List<CustmerDto> custList = new ArrayList<>();
        String sql = "SELECT * FROM member_tbl_02";
        try (PreparedStatement pstmt = conn.prepareStatement(sql);) {
            rs = pstmt.executeQuery();
            while (rs.next()) {
                CustmerDto custDto = new CustmerDto();
                custDto.setCustno(rs.getInt("custno"));
                custDto.setCustname(rs.getString("custname"));
                custDto.setPhone(rs.getString("phone"));
                custDto.setAddress(rs.getString("address"));
                custDto.setJoinDate(rs.getDate("joinDate").toLocalDate());
                custDto.setCity(rs.getString("city").charAt(0));
                custDto.setGrade(rs.getString("grade").charAt(0));
                custList.add(custDto);
            }
            return custList;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean ModifyCustmer(CustmerDto custmerDto) {
        String sql = "UPDATE member_tbl_02 SET custname = ?, phone = ? ,address =? , joinDate =? ,city =?  ,grade =? WHERE custno = ?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, custmerDto.getCustname());
            pstmt.setString(2, custmerDto.getPhone());
            pstmt.setString(3, custmerDto.getAddress());
            pstmt.setDate(4, Date.valueOf(custmerDto.getJoinDate()));
            pstmt.setString(5, String.valueOf(custmerDto.getCity()));
            pstmt.setString(6, String.valueOf(custmerDto.getGrade()));
            pstmt.setInt(7, custmerDto.getCustno());
            return pstmt.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public List<CustmerSalesDto> getCustmerSales() {
        String sql = """
                SELECT a.custno, a.custname, a.grade, (b.pcost * b.amount) AS salse
                FROM member_tbl_02 a
                LEFT JOIN money_tbl_02 b ON a.custno = b.custno
                GROUP BY a.custno;
                """;
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            List<CustmerSalesDto> custList = new ArrayList<>();
            rs = pstmt.executeQuery();
            while (rs.next()) {
                CustmerSalesDto custDto = new CustmerSalesDto();
                custDto.setCustno(rs.getInt("custno"));
                custDto.setCustname(rs.getString("custname"));
                custDto.setGrade(rs.getString("grade").charAt(0));
                int sales = rs.getInt("salse");
                if (rs.wasNull()) {
                    sales = 0;
                }
                custDto.setSales(sales);
                custList.add(custDto);
            }
            return custList;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean phoneCheck(String phone, int custno) {
        String sql = "SELECT Count(*) FROM member_tbl_02 where phone = ? and custno != ? ";
        try (PreparedStatement psmt = conn.prepareStatement(sql)) {
            psmt.setString(1, phone);
            psmt.setInt(2, custno);
            rs = psmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) == 0;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }
}