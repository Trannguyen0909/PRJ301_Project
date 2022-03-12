/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author FPTSHOP-ACER
 */
import java.io.Serializable;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Builder
@Getter
@Setter
@ToString
public class MemberDetail implements Serializable {

    private int id;
    private int userId;
    private int groupValue;
    private String memberName;
    private String gmail;
    private String phone;
    private int price;  
}
