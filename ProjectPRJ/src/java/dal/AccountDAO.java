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
                    + "      ,[role]\n"
                    + "       ,[status]\n"
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
                        .role(rs.getString(8))
                        .status(rs.getBoolean(9))
                        .build();
            }
        } catch (Exception ex) {
            Logger.getLogger(GroupDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Account> getAccountsPaging(String keyword, int page, int PAGE_SIZE) throws Exception {
        ArrayList<Account> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = new DBContext().getConnection();
            if (cn != null) {
                String sql = "with t as (select ROW_NUMBER() over (order by a.id asc) as r ,* from dbo.[Account] as a "
                        + "                     where displayName like ?)\n"
                        + "                    select* from t where r between ?*?-(?-1) and ?*?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, "%" + keyword + "%");
                pst.setInt(2, page);
                pst.setInt(3, PAGE_SIZE);
                pst.setInt(4, PAGE_SIZE);
                pst.setInt(5, page);
                pst.setInt(6, PAGE_SIZE);

                ResultSet rs = pst.executeQuery();
                while (rs.next()) {
                    Account acc = Account.builder()
                            .id(rs.getInt(2))
                            .username(rs.getString(3))
                            .password(rs.getString(4))
                            .displayName(rs.getString(5))
                            .address(rs.getString(6))
                            .email(rs.getString(7))
                            .phone(rs.getString(8))
                            .role(rs.getString(9))
                            .status(rs.getBoolean(10))
                            .build();
                    list.add(acc);
                }
            }
        } finally {
            if (cn != null) {
                cn.close();
            }
        }
        return list;
    }

    public int getTotalAccount() {
        try {
            String sql = "select count(id) from dbo.[Account]";
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

    public void signup(String username, String password, String displayName, String address, String email, String phone, String role) {
        try {
            String sql = "INSERT INTO [Project].[dbo].[Account]\n"
                    + "           ([username]\n"
                    + "           ,[password]\n"
                    + "           ,[displayName]\n"
                    + "           ,[address]\n"
                    + "           ,[email]\n"
                    + "           ,[phone]\n"
                    + "           ,[role])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?,?,?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, displayName);
            ps.setString(4, address);
            ps.setString(5, email);
            ps.setString(6, phone);
            ps.setString(7, role);
            ps.executeUpdate();

        } catch (Exception ex) {
            Logger.getLogger(GroupDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void UpdateAccount(int accountId, String username, String password, String displayName, String address, String email, String phone) {
        try {
            String sql = "UPDATE [Project].[dbo].[Account]\n"
                    + "   SET [username] =?\n"
                    + "      ,[password] = ?\n"
                    + "      ,[displayName] = ?\n"
                    + "      ,[address] = ?\n"
                    + "      ,[email] = ?\n"
                    + "      ,[phone] = ?\n"
                    + " WHERE id= ? ";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, displayName);
            ps.setString(4, address);
            ps.setString(5, email);
            ps.setString(6, phone);
            ps.setInt(7, accountId);

            ps.executeUpdate();

        } catch (Exception ex) {
            Logger.getLogger(GroupDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean insertAccount(Account newAccount) throws Exception {
        Connection cn = null;
        try {
            cn = new DBContext().getConnection();
            if (cn != null) {
                String sql = "INSERT INTO [dbo].[Account]\n"
                        + "           ([username] ,[password],[displayName],[address],[email],[phone],[role],[status])\n"
                        + "     VALUES (?,?,?,?,?,?,?,?)";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, newAccount.getUsername());
                pst.setString(2, newAccount.getPassword());
                pst.setString(3, newAccount.getDisplayName());
                pst.setString(4, newAccount.getAddress());
                pst.setString(5, newAccount.getEmail());
                pst.setString(6, newAccount.getPhone());
                pst.setString(7, newAccount.getRole());
                pst.setBoolean(8, newAccount.isStatus());

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

    public Account getAccountDetail(int userId) throws Exception {
        Account account = null;
        Connection cn = null;
        try {
            cn = new DBContext().getConnection();
            if (cn != null) {
                String sql = "Select id, username, password, displayName, address, email, phone, role, status\n"
                        + "from Account\n"
                        + "Where id = ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, userId);
                ResultSet rs = pst.executeQuery();
                if (rs.next()) {
                    account = Account.builder()
                            .id(rs.getInt(1))
                            .username(rs.getString(2))
                            .password(rs.getString(3))
                            .displayName(rs.getString(4))
                            .address(rs.getString(5))
                            .email(rs.getString(6))
                            .phone(rs.getString(7))
                            .role(rs.getString(8))
                            .status(rs.getBoolean(9))
                            .build();

                }

            }

        } finally {
            if (cn != null) {
                cn.close();
            }

        }
        return account;
    }

    //Update again status of account
    public boolean updateAccountStatus(int userId, int status) throws SQLException, Exception {
        Connection cn = null;
        try {
            cn = new DBContext().getConnection();
            if (cn != null) {
                String sql = "update Account\n"
                        + "set status = ?\n"
                        + "where id = ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, status);
                pst.setInt(2, userId);
                if (pst.executeUpdate() > 0) {
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (cn != null) {
                cn.close();
            }
        }
        return false;
    }

    public ArrayList<Account> getAccounts(String keyword) throws Exception {
        ArrayList<Account> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = new DBContext().getConnection();
            if (cn != null) {
                String sql = "select id, username, password, displayName, address, email, phone, role, status\n"
                        + "from Account\n"
                        + "where displayName like ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, "%" + keyword + "%");
                ResultSet rs = pst.executeQuery();
                while (rs.next()) {
                    Account acc = Account.builder()
                            .id(rs.getInt(1))
                            .username(rs.getString(2))
                            .password(rs.getString(3))
                            .displayName(rs.getString(4))
                            .address(rs.getString(5))
                            .email(rs.getString(6))
                            .phone(rs.getString(7))
                            .role(rs.getString(8))
                            .status(rs.getBoolean(9))
                            .build();
                    list.add(acc);
                }
            }
        } finally {
            if (cn != null) {
                cn.close();
            }
        }
        return list;
    }

    public ArrayList<Account> getAllUserAccount(int status) throws Exception {
        ArrayList<Account> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = new DBContext().getConnection();
            if (cn != null) {
                String sql = "Select id, username, password, displayName, address, email, phone, role, status\n"
                        + "from Account\n"
                        + "Where status = ? and role = 'USER'";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, status);
                ResultSet rs = pst.executeQuery();
                while (rs.next()) {
                    Account acc = Account.builder()
                            .id(rs.getInt(1))
                            .username(rs.getString(2))
                            .password(rs.getString(3))
                            .displayName(rs.getString(4))
                            .address(rs.getString(5))
                            .email(rs.getString(6))
                            .phone(rs.getString(7))
                            .role(rs.getString(8))
                            .status(rs.getBoolean(9))
                            .build();
                    list.add(acc);
                }

            }

        } finally {
            if (cn != null) {
                cn.close();
            }

        }
        return list;
    }

}
