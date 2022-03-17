/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import dal.AccountDAO;
import error.AccountError;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import lombok.Builder;
import model.Account;
import utils.CheckValidation;

/**
 *
 * @author Fang Long
 */
@WebServlet(name = "InsertAccountController", urlPatterns = {"/InsertAccountController"})
public class InsertAccountController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            HttpSession session = request.getSession();
            Account account = (Account) session.getAttribute("account");
            if (account != null || account.getRole().equals("ADMIN")) {

                AccountDAO accountDAO = new AccountDAO();

                String email = request.getParameter("txtemail");
                String fullname = request.getParameter("txtfullname");
                String password = request.getParameter("txtpassword");
                String address = request.getParameter("txtaddress");
                String phone = request.getParameter("txtphone");
                String role = request.getParameter("txtrole");

                boolean check = true;
                String msg = "";
                AccountError accountError = new AccountError("", "", "", "", "", "", "");

                if (!CheckValidation.isValidEmailAddress(email)) {
                    msg = "Emal not match format";
                    accountError.setEmailError(msg);
                    check = false;
                }
                if (!CheckValidation.isValidPassword(password)) {
                    msg = "Password not match Format!";
                    accountError.setPasswordError(password);
                    check = false;
                }
                if (!CheckValidation.isValidStrings(address)) {
                    msg = "String is not valid";
                    accountError.setAddressError(msg);
                    check = false;
                }

                if (!CheckValidation.isValidStrings(fullname)) {
                    msg = "Name is not null";
                    accountError.setDisplayNameError(msg);
                    check = false;
                }
                if (!CheckValidation.isValidPhoneNumber(phone)) {
                    msg = "Phone is not match the format";
                    accountError.setPhoneError(msg);
                    check = false;
                }

                if (check == true) {
                    Account acc = Account.builder()
                            .id(1)
                            .username(email)
                            .password(password)
                            .displayName(fullname)
                            .address(address)
                            .email(email)
                            .phone(phone)
                            .role(role)
                            .status(true)
                            .build();
                    if (accountDAO.insertAccount(acc)) {
                        msg = "Insert Success!";
                        request.setAttribute("INSERT_MSG", msg);

                        request.getRequestDispatcher("admin").forward(request, response);
                    }

                } else {
                    msg = "Insert fail!";
                    request.setAttribute("INSERT_MSG", msg);
                    request.setAttribute("ACCOUNT_ERROR", accountError);
                    request.getRequestDispatcher("MainController?action=insertAdminPage").forward(request, response);
                }

            }

        } catch (Exception e) {
            log("ERROR AT INSERTACCOUNT CONTROLLER:" + e.toString());
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
