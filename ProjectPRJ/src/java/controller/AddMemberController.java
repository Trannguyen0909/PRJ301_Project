/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.MemberDetail;
import dal.DetailDAO;

/**
 *
 * @author FPTSHOP-ACER
 */
public class AddMemberController extends HttpServlet {

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
            String url = "";
            String msg = "";
            try {

                HttpSession session = request.getSession();
                DetailDAO detailDAO = new DetailDAO();

                int groupId = Integer.parseInt(request.getParameter("groupId"));

                Account account = (Account) session.getAttribute("account");

                if (account == null) {
                    url = "login.jsp";
                    msg = "Bạn phải đăng nhập !!!";
                } else {
                    
                    //check groupId countMember = 10
                    //groupId get quanity (VD: 10)
                    // countmember == quanity (da du so luong)
                    //=> ko cho e dang ki
                    //else if(countmember < quantity) {  }
                    
                    
                    

                    if (detailDAO.checkMemberExistInGroup(account.getId(), groupId)) {
                        url = "detail?groupId=" + groupId;
                        msg = "Bạn đã đăng ký rồi mà!";
                    } else {
                        detailDAO.addMember(account.getId(), groupId);
                        url = "detail?groupId=" + groupId;
                        msg = "Đăng ký thành công!";
                    }
                }

                request.setAttribute("ADDMEMBER_MSG", msg);

            } catch (Exception e) {
                log("ERROR AT ADD MEMBER CONTROLLER :" + e.toString());
            } finally {
                request.getRequestDispatcher(url).forward(request, response);
            }
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
