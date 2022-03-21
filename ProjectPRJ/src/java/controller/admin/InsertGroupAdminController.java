/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import dal.GroupDAO;
import error.GroupError;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lombok.Builder;
import model.Group;
import utils.CheckValidation;

/**
 *
 * @author Fang Long
 */
@WebServlet(name = "InsertGroupAdminController", urlPatterns = {"/InsertGroupAdminController"})
public class InsertGroupAdminController extends HttpServlet {

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
            int groupValue = Integer.parseInt(request.getParameter("txtgroupvalue"));
            String GroupName = request.getParameter("txtgroupname");
            String FromDate = request.getParameter("txtfromdate");
            String ToDate = request.getParameter("txttodate");
            int Quantity = Integer.parseInt(request.getParameter("txtquantity"));
            int Price = Integer.parseInt(request.getParameter("txtprice"));

            String msg = "";
            boolean check = true;
            GroupError groupError = new GroupError("", "", "", "", "", "", "", "");

            if (!CheckValidation.isValidStrings(GroupName)) {
                msg = "GroupName not format!";
                check = false;
                groupError.setGroupNameError(msg);
            }

            if (Quantity < 0) {
                msg = "Quantity to Small";
                check = false;
                groupError.setQuantityError(msg);
            }
            if (Price < 0) {
                msg = "Price to Small";
                check = false;
                groupError.setPriceError(msg);
            }

            if (check) {
                Group group = Group.builder()
                        .groupValue(groupValue)
                        .groupName(GroupName)
                        .from_date(FromDate)
                        .to_date(ToDate)
                        .quantity(Quantity)
                        .price(Price)
                        .status(true)
                        .build();

                if (GroupDAO.insertGroup(group)) {
                    request.getRequestDispatcher("MainController?action=searchGroup&keyword=").forward(request, response);
                }

            } else {
                request.setAttribute("GROUP_ERROR", groupError);
                request.getRequestDispatcher("insertGroup.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
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
