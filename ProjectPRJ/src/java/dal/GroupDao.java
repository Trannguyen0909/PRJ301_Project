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
public class GroupDao { // thao tac voi bang dia diem du lich

    public List<Group> getAllGroups() {
        List<Group> list = new ArrayList<>();
        try {
            String sql = "SELECT [id]\n"
                    + "      ,[groupname]\n"
                    + "      ,[from_date]\n"
                    + "      ,[to_date]\n"
                    + "      ,[img]\n"
                    + "      ,[price]\n"
                    + "  FROM [Project].[dbo].[Group]";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Group group = Group.builder()
                        .id(rs.getInt(1))
                        .groupName(rs.getString(2))
                        .from_date(rs.getString(3))
                        .to_date(rs.getString(4))
                        .img(rs.getString(5))
                        .price(rs.getInt(6))
                        .build();
                list.add(group);
            }
        } catch (Exception ex) {
            Logger.getLogger(GroupDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

}
