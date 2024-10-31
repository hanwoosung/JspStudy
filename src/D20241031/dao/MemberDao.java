package D20241031.dao;

import db.DBConn;
import D20241031.dto.Member;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MemberDao implements IMemberDao {
    private final Connection conn;

    public MemberDao() {
        this.conn = DBConn.getInstance().getConnection();
    }

    @Override
    public boolean regMember(Member member) {
        String sql = "INSERT INTO member_table VALUES (null,?, ?, ?, ?)";

        try (PreparedStatement psmt = conn.prepareStatement(sql)) {
            psmt.setString(1, member.getName());
            psmt.setString(2, member.getPhone());
            psmt.setString(3, member.getAddr());
            psmt.setDate(4, Date.valueOf(member.getBirth()));
            return psmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Member getMember(int mno) {
        String sql = "SELECT * FROM member_table WHERE mno = ?";

        try (PreparedStatement psmt = conn.prepareStatement(sql)) {
            psmt.setInt(1, mno);
            try (ResultSet rs = psmt.executeQuery()) {
                if (rs.next()) {
                    return new Member(
                            rs.getInt("mno"),
                            rs.getString("name"),
                            rs.getString("phone"),
                            rs.getString("addr"),
                            rs.getDate("birth").toLocalDate()
                    );
                }
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public List<Member> getMemberList() {
        String sql = "SELECT * FROM member_table";
        List<Member> memberList = new ArrayList<>();

        try (PreparedStatement psmt = conn.prepareStatement(sql);
             ResultSet rs = psmt.executeQuery()) {
            while (rs.next()) {
                memberList.add(new Member(
                        rs.getInt("mno"),
                        rs.getString("name"),
                        rs.getString("phone"),
                        rs.getString("addr"),
                        rs.getDate("birth").toLocalDate()
                ));
            }
            return memberList;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return memberList;
    }

    @Override
    public boolean modifyMember(Member member) {
        String sql = "UPDATE member_table SET name = ?, phone = ?, addr = ? WHERE mno = ?";

        try (PreparedStatement psmt = conn.prepareStatement(sql)) {
            psmt.setString(1, member.getName());
            psmt.setString(2, member.getPhone());
            psmt.setString(3, member.getAddr());
            psmt.setInt(4, member.getMno());
            return psmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public void deleteMember(int mno) {
        String sql = "DELETE FROM member_table WHERE mno = ?";

        try (PreparedStatement psmt = conn.prepareStatement(sql)) {
            psmt.setInt(1, mno);
            psmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
