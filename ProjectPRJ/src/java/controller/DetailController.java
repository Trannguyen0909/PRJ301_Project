/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.DetailDAO;
import dal.GroupDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Group;
import model.MemberDetail;

/**
 *
 * @author FPTSHOP-ACER
 */
public class DetailController extends HttpServlet {

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
        HttpSession session = request.getSession();
        String url = "";
        try {
            
            Account account = (Account) session.getAttribute("account");

            //get groupid
            if (account != null) {
                int groupId = Integer.parseInt(request.getParameter("groupId"));
                    
                //get 72 tr
                float totalMoney= 0 ;
                
                
                
                List<MemberDetail> listMember = new DetailDAO().getMemberByGroupId(groupId);
                //get total member
                // 72tr / member = each meber
                
                for (MemberDetail memberDetail : listMember) {
//                    memberDetail.setPrice(each meber);
                }
                
                
                request.setAttribute("listMember", listMember);
                request.setAttribute("groupId", groupId);
                request.setAttribute("userId", account.getId());
                url = "detailmember.jsp";
            } else {
                url = "login.jsp";
            }

        } catch (Exception e) {
            log("ERROR AT DETAIL CONTROLLER:" + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
        
       
        request.getRequestDispatcher("detailmember.jsp").forward(request, response);
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
