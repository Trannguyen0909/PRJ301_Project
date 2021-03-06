/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 *
 * @author FPTSHOP-ACER
 */
@Builder
@Getter
@Setter
@ToString
public class Group implements Serializable {
    private int id;
    private int groupValue;
    private String groupName;
    private String from_date;
    private String to_date;
    private int quantity;
    private int price;
    private boolean status;
    
}
