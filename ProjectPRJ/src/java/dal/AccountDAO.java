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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Group;

/**
 *
 * @author FPTSHOP-ACER
 */
public class AccountDAO {

    public Account login(String username, String password) {
        try {
            String sql = "SELECT TOP 1000 [id]\n"
                    + "      ,[username]\n"
                    + "      ,[password]\n"
                    + "      ,[displayName]\n"
                    + "      ,[address]\n"
                    + "      ,[email]\n"
                    + "      ,[phone]\n"
                    + "      ,[isAdmin]\n"
                    + "  FROM [Project].[dbo].[Account]\n"
                    + "  where username = ? and password =?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return Account.builder()
                        .id(rs.getInt(1))
                        .username(rs.getString(2))
                        .password(rs.getString(3))
                        .displayName(rs.getString(4))
                        .address(rs.getString(5))
                        .email(rs.getString(6))
                        .phone(rs.getString(7))
                        .isAdmin(rs.getBoolean(8))
                        .build();
            }
        } catch (Exception ex) {
            Logger.getLogger(GroupDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Account checkAccountExist(String username) {
        try {
            String sql = "select * from Account where username = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return Account.builder()
                        .id(rs.getInt(1))
                        .username(rs.getString(2))
                        .password(rs.getString(3))
                        .displayName(rs.getString(4))
                        .address(rs.getString(5))
                        .email(rs.getString(6))
                        .phone(rs.getString(7))
                        .build();
            }
        } catch (Exception ex) {
            Logger.getLogger(GroupDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void signup(String username, String password,String displayName,String address,String email,String phone,boolean isAdmin) {
        try {
            String sql = "INSERT INTO [Project].[dbo].[Account]([username],[password],[displayName],[address],[email],[phone],[isAdmin])\n"
                    + "VALUES(?,?, ?,?,?,?,0) ";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3,displayName);
            ps.setString(4,address);
            ps.setString(5, email);
            ps.setString(6, phone);           
            ps.executeUpdate();

        } catch (Exception ex) {
            Logger.getLogger(GroupDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
