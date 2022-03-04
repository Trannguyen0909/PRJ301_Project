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
public class DetailDao {

    public List<MemberDetail> getAllMember() {

        List<MemberDetail> listMember = new ArrayList<>();
        try {
            String sql = "SELECT [id]\n"
                    + "      ,[memberid]\n"
                    + "      ,[Membername]\n"
                    + "      ,[gmail]\n"
                    + "      ,[phone]\n"
                    + "      ,[price]\n"
                    + "  FROM [Project].[dbo].[detail]";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                MemberDetail member = MemberDetail.builder()
                        .id(rs.getInt(1))
                        .memberId(rs.getInt(2))
                        .memberName(rs.getString(3))
                        .gmail(rs.getString(4))
                        .phone(rs.getString(5))                      
                        .price(rs.getInt(6))
                        .build();
                listMember.add(member);
            }
        } catch (Exception ex) {
            Logger.getLogger(DetailDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listMember;
    }
    
}