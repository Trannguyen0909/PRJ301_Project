/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author FPTSHOP-ACER
 */
public class LoginController extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {
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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        //kiểm tra cookie
        Cookie[] cookies = request.getCookies();
        String username = null;
        String password = null;
        for (Cookie cooky : cookies) {
            if (cooky.getName().equals("username")) {
                username = cooky.getValue();
            }
            if (cooky.getName().equals("password")) {
                password = cooky.getValue();
            }
            if (username != null && password != null) {
                break;
            }
        }

        if (username != null && password != null) {
            Account account = new AccountDAO().login(username, password);
            if (account != null && account.isStatus()) { //cookie hợp lệ
                request.getSession().setAttribute("account", account);
                response.sendRedirect("Home");
                return;
            }else{
                response.sendRedirect("Home");
            }
        } else {
            HttpSession session = request.getSession();
            Account account = (Account) session.getAttribute("account");
            if (account == null) {
                request.getRequestDispatcher("login.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("home.jsp").forward(request, response);
            }

        }

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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean remember = request.getParameter("remember") != null;
        HttpSession session = request.getSession();
        Account account = null;

        account = (Account) session.getAttribute("account");
        if (account == null) {
            account = new AccountDAO().login(username, password);
            if (account != null && account.isStatus()) {
                if (remember) {
                    Cookie usernameCookie = new Cookie("username", username);
                    usernameCookie.setMaxAge(60 * 60 * 24 * 2);
                    Cookie passwordCookie = new Cookie("password", password);
                    passwordCookie.setMaxAge(60 * 60 * 24 * 2);
                    response.addCookie(usernameCookie);
                    response.addCookie(passwordCookie);
                }
                request.setAttribute("account", account);
                session.setAttribute("account", account);
                //Redirect for user and admin
                if (account.getRole().equals("ADMIN")) {
                    response.sendRedirect("admin");
                } else {
                    response.sendRedirect("Home");

                }

            } else {

                request.setAttribute("classAlert", "alert alert-danger");
                request.setAttribute("strongAlert", "Cảnh báo");
                request.setAttribute("alert", "Bạn đã nhập sai tài khoản hoặc mật khẩu!Xin vui lòng nhập lại!");

                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } else {
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }
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
