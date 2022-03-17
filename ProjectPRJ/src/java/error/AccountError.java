/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package error;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 *
 * @author Fang Long
 */


public class AccountError {
    private String usernameError;
    private String passwordError;
    private String displayNameError;
    private String addressError;
    private String emailError;
    private String phoneError;
    private String roleError;

    public AccountError(String usernameError, String passwordError, String displayNameError, String addressError, String emailError, String phoneError, String roleError) {
        this.usernameError = usernameError;
        this.passwordError = passwordError;
        this.displayNameError = displayNameError;
        this.addressError = addressError;
        this.emailError = emailError;
        this.phoneError = phoneError;
        this.roleError = roleError;
    }

    public String getUsernameError() {
        return usernameError;
    }

    public void setUsernameError(String usernameError) {
        this.usernameError = usernameError;
    }

    public String getPasswordError() {
        return passwordError;
    }

    public void setPasswordError(String passwordError) {
        this.passwordError = passwordError;
    }

    public String getDisplayNameError() {
        return displayNameError;
    }

    public void setDisplayNameError(String displayNameError) {
        this.displayNameError = displayNameError;
    }

    public String getAddressError() {
        return addressError;
    }

    public void setAddressError(String addressError) {
        this.addressError = addressError;
    }

    public String getEmailError() {
        return emailError;
    }

    public void setEmailError(String emailError) {
        this.emailError = emailError;
    }

    public String getPhoneError() {
        return phoneError;
    }

    public void setPhoneError(String phoneError) {
        this.phoneError = phoneError;
    }

    public String getRoleError() {
        return roleError;
    }

    public void setRoleError(String roleError) {
        this.roleError = roleError;
    }

    
    
    
}
