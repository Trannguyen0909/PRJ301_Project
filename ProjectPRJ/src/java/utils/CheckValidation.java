/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CheckValidation {

    public static boolean isValidPassword(String password) {
        String regex = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).{8,}$";
        Pattern p = Pattern.compile(regex);
        if (password == null) {
            return false;
        }
        Matcher m = p.matcher(password);
        return m.matches();
    }

    public static boolean isValidEmailAddress(String email) {
        String ePattern = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$";
        java.util.regex.Pattern p = java.util.regex.Pattern.compile(ePattern);
        java.util.regex.Matcher m = p.matcher(email);
        return m.matches();
    }

    public static boolean isValidPhoneNumber(String phone) {
        String regex = "^[0-9]{10}$";
        Pattern p = Pattern.compile(regex);
        if (phone == null) {
            return false;
        }
        Matcher m = p.matcher(phone);
        return m.matches();
    }

    public static boolean isValidName(String name) {
        String ePattern = "^[a-zA-Z0-9\\s]*$";
        java.util.regex.Pattern p = java.util.regex.Pattern.compile(ePattern);
        java.util.regex.Matcher m = p.matcher(name);
        return m.matches();
    }

    public static boolean isValidURL(String url) {
        String regex = "((http|https)://)(www.)?"
                + "[a-zA-Z0-9@:%._\\+~#?&//=]"
                + "{2,256}\\.[a-z]"
                + "{2,6}\\b([-a-zA-Z0-9@:%"
                + "._\\+~#?&//=]*)";
        Pattern p = Pattern.compile(regex);
        if (url == null) {
            return false;
        }
        Matcher m = p.matcher(url);
        return m.matches();
    }

    public static boolean isValidStrings(String text) {
        String ePattern = "^[a-zA-Z0-9\\s]*$";
        boolean match;
        boolean isValid = true;
        text = text.trim().toUpperCase();
        match = text.matches(ePattern);
        if (text.length() == 0 || text.isEmpty() || match == false) {
            isValid = false;
        } else {
            isValid = true;
        }
        return isValid;
    }

}
