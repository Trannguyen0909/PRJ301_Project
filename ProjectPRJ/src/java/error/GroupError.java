/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package error;

/**
 *
 * @author Fang Long
 */
public class GroupError {

    private String idError;
    private String groupValueError;
    private String groupNameError;
    private String from_dateError;
    private String to_dateError;
    private String quantityError;
    private String priceError;
    private String statusError;

    public GroupError(String idError, String groupValueError, String groupNameError, String from_dateError, String to_dateError, String quantityError, String priceError, String statusError) {
        this.idError = idError;
        this.groupValueError = groupValueError;
        this.groupNameError = groupNameError;
        this.from_dateError = from_dateError;
        this.to_dateError = to_dateError;
        this.quantityError = quantityError;
        this.priceError = priceError;
        this.statusError = statusError;
    }

    public String getIdError() {
        return idError;
    }

    public void setIdError(String idError) {
        this.idError = idError;
    }

    public String getGroupValueError() {
        return groupValueError;
    }

    public void setGroupValueError(String groupValueError) {
        this.groupValueError = groupValueError;
    }

    public String getGroupNameError() {
        return groupNameError;
    }

    public void setGroupNameError(String groupNameError) {
        this.groupNameError = groupNameError;
    }

    public String getFrom_dateError() {
        return from_dateError;
    }

    public void setFrom_dateError(String from_dateError) {
        this.from_dateError = from_dateError;
    }

    public String getTo_dateError() {
        return to_dateError;
    }

    public void setTo_dateError(String to_dateError) {
        this.to_dateError = to_dateError;
    }

    public String getQuantityError() {
        return quantityError;
    }

    public void setQuantityError(String quantityError) {
        this.quantityError = quantityError;
    }

    public String getPriceError() {
        return priceError;
    }

    public void setPriceError(String priceError) {
        this.priceError = priceError;
    }

    public String getStatusError() {
        return statusError;
    }

    public void setStatusError(String statusError) {
        this.statusError = statusError;
    }
    
    

}
