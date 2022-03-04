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
                    + "      ,[groupId]\n"
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
                        .groupId(rs.getInt(2))
                        .groupName(rs.getString(3))
                        .from_date(rs.getString(4))
                        .to_date(rs.getString(5))
                        .quantity(rs.getString(6))
                        .price(rs.getInt(7))
                        .build();
                list.add(group);
            }
        } catch (Exception ex) {
            Logger.getLogger(GroupDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Group> getGroupById() {
        List<Group> list = new ArrayList<>();
        try {
            String sql = "select groupid,groupName from dbo.[Group] group by groupid,groupName  ";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Group group = Group.builder()
                        .groupId(rs.getInt(1))
                        .groupName(rs.getString(2))                       
                        .build();
                list.add(group);
            }
        } catch (Exception ex) {
            Logger.getLogger(GroupDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Group>getGroupsByGroupId(int groupId) {
       List<Group> list = new ArrayList<>();
        try {
            String sql = "select * from dbo.[Group] where groupid =?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, groupId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Group group = Group.builder()
                        .id(rs.getInt(1))
                        .groupId(rs.getInt(2))
                        .groupName(rs.getString(3))
                        .from_date(rs.getString(4))
                        .to_date(rs.getString(5))
                        .quantity(rs.getString(6))
                        .price(rs.getInt(7))
                        .build();
                list.add(group);
            }
        } catch (Exception ex) {
            Logger.getLogger(GroupDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
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
                        .groupId(rs.getInt(1))
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


    

   
}
