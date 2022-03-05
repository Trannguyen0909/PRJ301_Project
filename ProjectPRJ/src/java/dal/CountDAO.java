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
import model.CountMember;
import model.MemberDetail;

/**
 *
 * @author FPTSHOP-ACER
 */
public class CountDAO {

    public static abstract class getNumberMemBer implements List<CountMember> {

        public getNumberMemBer() {
            List<MemberDetail> list = new ArrayList<>();
            try {
                String sql = "select COUNT(*) as quantity from dbo.detail group by id where id = ?";
                Connection conn = new DBContext().getConnection();
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(0, sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    MemberDetail member = MemberDetail.builder()
                            .id(rs.getInt(1))
                            .groupId(rs.getInt(2))
                            .memberId(rs.getInt(3))
                            .memberName(rs.getString(4))
                            .gmail(rs.getString(5))
                            .phone(rs.getString(6))
                            .quantity(rs.getInt(7))
                            .price(rs.getInt(8))
                            .quantity(rs.getInt(9))
                            .build();
                    list.add(member);
                }
            } catch (Exception ex) {
                Logger.getLogger(DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}


