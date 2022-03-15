/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Group;
import model.MemberDetail;

/**
 *
 * @author FPTSHOP-ACER
 */
public class DetailDAO {

    //getMemberByGroupValue
    public List<MemberDetail> getMemberByGroupId(int groupId) {

        List<MemberDetail> listMember = new ArrayList<>();
        try {
            String sql = "select d.id , d.userId, g.groupValue, a.displayName, a.email, a.phone, g.price,a.role \n"
                    + "from dbo.Details d\n"
                    + "inner join dbo.[Group] g\n"
                    + "on d.groupId = g.id\n"
                    + "inner join dbo.Account a\n"
                    + "on a.id = d.userId\n"
                    + "where g.id = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, groupId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                MemberDetail memberDetail = MemberDetail.builder()
                        .id(rs.getInt(1))
                        .userId(rs.getInt(2))
                        .groupValue(rs.getInt(3))
                        .memberName(rs.getString(4))
                        .gmail(rs.getString(5))
                        .phone(rs.getString(6))
                        .price(rs.getInt(7))
                        .role(rs.getString(8))
                        .build();
                listMember.add(memberDetail);
            }
        } catch (Exception ex) {
            Logger.getLogger(DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listMember;
    }

    //Count member by GroupId
    public int countMemberByGroupId(int groupId) {
        try {
            String sql = "select COUNT(*) as numberMember\n"
                    + "from dbo.details\n"
                    + "where groupId = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, groupId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(GroupDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    //SearchDetails
    public List<MemberDetail> searchDetails(String keyword, int groupId) {
        List<MemberDetail> list = new ArrayList<>();
        try {
            String sql = "select d.id, d.userId ,g.groupValue, a.displayName, a.email, a.phone, g.price,a.role\n"
                    + "from dbo.Details d\n"
                    + "inner join dbo.[Group] g\n"
                    + "on d.groupId = g.id\n"
                    + "inner join dbo.Account a\n"
                    + "on a.id = d.userId\n"
                    + "where a.displayName like ? and g.id = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + keyword + "%");
            ps.setInt(2, groupId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                MemberDetail memberDetail = MemberDetail.builder()
                        .id(rs.getInt(1))
                        .userId(rs.getInt(2))
                        .groupValue(rs.getInt(3))
                        .memberName(rs.getString(4))
                        .gmail(rs.getString(5))
                        .phone(rs.getString(6))
                        .price(rs.getInt(7))
                        .role(rs.getString(8))
                        .build();
                list.add(memberDetail);
            }
        } catch (Exception ex) {
            Logger.getLogger(DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public boolean checkMemberExistInGroup(int userId, int groupId) throws SQLException, Exception {
        Connection conn = new DBContext().getConnection();
        if (conn != null) {

            String sql = "select d.id, g.groupValue, a.displayName, a.email, a.phone, g.price\n"
                    + "from dbo.Details d\n"
                    + "inner join dbo.[Group] g\n"
                    + "on d.groupId = g.id\n"
                    + "inner join dbo.Account a\n"
                    + "on a.id = d.userId\n"
                    + "where a.id = ? and d.groupId = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, userId);
            ps.setInt(2, groupId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        }

        return false;
    }
    
    public void addMember(int userId, int groupId) {
        try {
            String sql = "insert into dbo.Details values(?,?,1)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, userId);
            ps.setInt(2, groupId);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void deleteMemberWithDetailId(int detailsId) {
        try {
            String sql = "delete from dbo.Details where id = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, detailsId);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void UpdateMember(int id, int memberId, String memberName, String gmail, String phone, String price) {
        try {
            String sql = "UPDATE [Project].[dbo].[detail]\n"
                    + "   SET [id] = ?    \n"
                    + "      ,[Membername] = ?\n"
                    + "      ,[gmail] = ?\n"
                    + "      ,[phone] = ?\n"
                    + "      ,[price] = ?\n"
                    + " WHERE memberid= ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setInt(2, memberId);
            ps.setString(3, memberName);
            ps.setString(4, gmail);
            ps.setString(5, phone);
            ps.setString(6, price);
            ps.executeUpdate();

        } catch (Exception ex) {
            Logger.getLogger(GroupDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
