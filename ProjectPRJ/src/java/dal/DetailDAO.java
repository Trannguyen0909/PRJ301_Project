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
import model.MemberDetail;

/**
 *
 * @author FPTSHOP-ACER
 */
public class DetailDAO {

    public List<MemberDetail> getMemberById(int id) {

        List<MemberDetail> listMember = new ArrayList<>();
        try {
            String sql = "select dbo.[Group].groupid,memberid,Membername,gmail,phone,dbo.detail.price\n"
                    + " from dbo.[Group]  inner join dbo.detail on dbo.[Group].id = dbo.detail.id\n"
                    + " where  dbo.[Group].id =?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                MemberDetail member = MemberDetail.builder()
                        .groupId(rs.getInt(1))
                        .memberId(rs.getInt(2))
                        .memberName(rs.getString(3))
                        .gmail(rs.getString(4))
                        .phone(rs.getString(5))                       
                        .price(rs.getInt(6))
                        .build();
                listMember.add(member);
            }
        } catch (Exception ex) {
            Logger.getLogger(DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listMember;
    }

    public List<MemberDetail> getNumberMemBer() {
         List<MemberDetail> list = new ArrayList<>();
        try {
            String sql = "select COUNT(*) as quantity from dbo.detail group by id where id = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                MemberDetail member = MemberDetail.builder()
                        .groupId(rs.getInt(1))
                        .memberId(rs.getInt(2))
                        .memberName(rs.getString(3))
                        .gmail(rs.getString(4))
                        .phone(rs.getString(5))
                        .quantity(rs.getInt(6))
                        .price(rs.getInt(7))                       
                        .build();
                list.add(member);
            }
        } catch (Exception ex) {
            Logger.getLogger(DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

}
