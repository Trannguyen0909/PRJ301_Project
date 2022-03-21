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
import model.Group;

/**
 *
 * @author FPTSHOP-ACER
 */
public class GroupDAO {

// thao tac voi bang dia diem du lich
    public List<Group> getAllGroups() {
        List<Group> list = new ArrayList<>();
        try {
            String sql = "SELECT [id]\n"
                    + "      ,[groupValue]\n"
                    + "      ,[groupname]\n"
                    + "      ,[from_date]\n"
                    + "      ,[to_date]\n"
                    + "      ,[quantity]\n"
                    + "      ,[price]\n"
                    + "  FROM [Project].[dbo].[Group]";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Group group = Group.builder()
                        .id(rs.getInt(1))
                        .groupValue(rs.getInt(2))
                        .groupName(rs.getString(3))
                        .from_date(rs.getString(4))
                        .to_date(rs.getString(5))
                        .quantity(countMemberId(rs.getInt(1)))
                        .price(rs.getInt(7))
                        .build();
                list.add(group);
            }
        } catch (Exception ex) {
            Logger.getLogger(GroupDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public List<Group> searchGroupByValueWithPaggingAdmin(int page, int PAGE_SIZE, String groupValue) {
        List<Group> list = new ArrayList<>();
        try {
            String sql = "with t as (select ROW_NUMBER() over (order by g.id asc) as r ,* from dbo.[Group] as g "
                    + " where groupValue like ?)\n"
                    + "select* from t where r between ?*?-(?-1) and ?*?";

            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + groupValue + "%");
            ps.setInt(2, page);
            ps.setInt(3, PAGE_SIZE);
            ps.setInt(4, PAGE_SIZE);
            ps.setInt(5, page);
            ps.setInt(6, PAGE_SIZE);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Group group = Group.builder()
                        .id(rs.getInt(2))
                        .groupValue(rs.getInt(3))
                        .groupName(rs.getString(4))
                        .from_date(rs.getString(5))
                        .to_date(rs.getString(6))
                        .quantity(rs.getInt(7))
                        .price(rs.getInt(8))
                        .status(rs.getBoolean(9))
                        .build();
                list.add(group);
            }
        } catch (Exception ex) {
            Logger.getLogger(GroupDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    
    
    public static boolean insertGroup(Group group) throws SQLException, Exception {
        Connection cn = null;
        try {
            cn = new DBContext().getConnection();
            if (cn != null) {
                String sql = "INSERT INTO [dbo].[Group]\n"
                        + "           ([groupValue]\n"
                        + "           ,[groupName]\n"
                        + "           ,[fromDate]\n"
                        + "           ,[toDate]\n"
                        + "           ,[quantity]\n"
                        + "           ,[price]\n"
                        + "           ,[status])\n"
                        + "     VALUES\n"
                        + "           (?,?,?,?,?,?,?)\n";

                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, group.getGroupValue());
                pst.setString(2, group.getGroupName());
                pst.setString(3, group.getFrom_date());
                pst.setString(4, group.getTo_date());
                pst.setInt(5, group.getQuantity());
                pst.setInt(6, group.getPrice());
                pst.setBoolean(7, group.isStatus());

                if (pst.executeUpdate() > 0) {
                    return true;
                }
            }

        } finally {
            if (cn != null) {
                cn.close();
            }
        }
        return false;
    }
    
    
    public static boolean updateGroupStatus(int groupid, boolean status) throws SQLException, Exception {
        Connection cn = null;
        try {
            cn = new DBContext().getConnection();
            if (cn != null) {
                String sql = "update dbo.[Group]\n"
                        + "set status = ?\n"
                        + "where id = ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setBoolean(1, status);
                pst.setInt(2, groupid);
                if (pst.executeUpdate() > 0) {
                    return true;
                }
            }
        } finally {
            if (cn != null) {
                cn.close();
            }
        }
        return false;
    }

    //GetGroupByGroupValue
    public List<Group> getAllGroupByGroupValue() {
        List<Group> list = new ArrayList<>();
        try {
            String sql = "select groupValue,groupName from dbo.[Group] group by groupValue,groupName ";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Group group = Group.builder()
                        .groupValue(rs.getInt(1))
                        .groupName(rs.getString(2))
                        .build();
                list.add(group);
            }
        } catch (Exception ex) {
            Logger.getLogger(GroupDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Group> getGroupsByGroupValue(int groupValue) {
        List<Group> list = new ArrayList<>();
        try {
            String sql = "select * from dbo.[Group] where groupValue = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, groupValue);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Group group = Group.builder()
                        .id(rs.getInt(1))
                        .groupValue(rs.getInt(2))
                        .groupName(rs.getString(3))
                        .from_date(rs.getString(4))
                        .to_date(rs.getString(5))
                        .quantity(countMemberId(rs.getInt(1)))
                        .price(rs.getInt(7))
                        .build();
                list.add(group);
            }
        } catch (Exception ex) {
            Logger.getLogger(GroupDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public int countMemberId(int id) {
        try {
            String sql = "select COUNT(*) from detail where id =?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(GroupDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public List<Group> getGroupByIdGroup(int id) {
        List<Group> list = new ArrayList<>();
        try {
            String sql = " select * from dbo.[Group] where dbo.[Group].id =?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Group group = Group.builder()
                        .groupValue(rs.getInt(1))
                        .groupName(rs.getString(2))
                        .id(rs.getInt(3))
                        .build();
                list.add(group);
            }
        } catch (Exception ex) {
            Logger.getLogger(GroupDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    DetailDAO detailDAO = new DetailDAO();

    public List<Group> getGroupByValueWithPagging(int page, int PAGE_SIZE, int groupValue) {
        List<Group> list = new ArrayList<>();
        try {
            String sql = "with t as (select ROW_NUMBER() over (order by g.id asc) as r ,* from dbo.[Group] as g "
                    + " where groupValue = ? and status = 1)\n"
                    + "select* from t where r between ?*?-(?-1) and ?*?";

            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, groupValue);
            ps.setInt(2, page);
            ps.setInt(3, PAGE_SIZE);
            ps.setInt(4, PAGE_SIZE);
            ps.setInt(5, page);
            ps.setInt(6, PAGE_SIZE);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Group group = Group.builder()
                        .id(rs.getInt(2))
                        .groupValue(rs.getInt(3))
                        .groupName(rs.getString(4))
                        .from_date(rs.getString(5))
                        .to_date(rs.getString(6))
                        .quantity(detailDAO.countMemberByGroupId(rs.getInt(2)))
                        .price(rs.getInt(8))
                        .build();
                list.add(group);
            }
        } catch (Exception ex) {
            Logger.getLogger(GroupDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Group> getGroupWithPagging(int page, int PAGE_SIZE) {
        List<Group> list = new ArrayList<>();
        try {
            String sql = "with t as (select ROW_NUMBER() over (order by g.id asc) as r ,* from dbo.[Group] as g where status = 1)\n"
                    + "select* from t where r between ?*?-(?-1) and ?*?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, page);
            ps.setInt(2, PAGE_SIZE);
            ps.setInt(3, PAGE_SIZE);
            ps.setInt(4, page);
            ps.setInt(5, PAGE_SIZE);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Group group = Group.builder()
                        .id(rs.getInt(2))
                        .groupValue(rs.getInt(3))
                        .groupName(rs.getString(4))
                        .from_date(rs.getString(5))
                        .to_date(rs.getString(6))
                        .quantity(new DetailDAO().countMemberByGroupId(rs.getInt(2)))
                        .price(rs.getInt(8))
                        .build();             
                list.add(group);
            }

        } catch (Exception ex) {
            Logger.getLogger(GroupDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public int getTotalGroupByGroupValue(int groupValue) {
        try {
            String sql = "select count(id) from dbo.[group] where groupValue = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, groupValue);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                return rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(GroupDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public int getTotalGroup() {
        try {
            String sql = "select count(id) from dbo.[group]";
            Connection conn = new DBContext().getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(GroupDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

}
