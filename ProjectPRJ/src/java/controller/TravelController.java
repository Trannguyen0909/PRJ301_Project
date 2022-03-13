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

import model.Group;
import model.MemberDetail;

/**
 *
 * @author FPTSHOP-ACER
 */
public class TravelController extends HttpServlet {

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
        
        int page = 1;
        final int PAGE_SIZE = 10;
        String pageStr = request.getParameter("page");
        if (pageStr != null) {
            page = Integer.parseInt(pageStr);
        }
        int totalGroup = new GroupDAO().getTotalGroup();
        int totalPage = totalGroup / PAGE_SIZE;
        if (totalGroup % PAGE_SIZE != 0) {
            totalPage += 1;
        }
        List<Group> listGroupByGroupValue = new GroupDAO().getAllGroupByGroupValue();

        List<Group> listGroupDetails = new GroupDAO().getGroupWithPagging(page, PAGE_SIZE);
//        List<Group>listGroups = new GroupDAO().getAllGroups();

        //session for GroupValue
        session.setAttribute("listGroupByGroupValue", listGroupByGroupValue);

        //Request for GroupDetails
        request.setAttribute("listGroupDetails", listGroupDetails);

        //Paging value
        request.setAttribute("page", page);
        request.setAttribute("totalPage", totalPage);
        
        request.getRequestDispatcher("travel.jsp").forward(request, response);
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
