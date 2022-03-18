/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import dal.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author FPTSHOP-ACER
 */
@WebServlet(name = "SearchAccountController", urlPatterns = {"/SearchAccountController"})
public class SearchAccountController extends HttpServlet {

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
        String msg = "";
        try {
            HttpSession session = request.getSession();
            String keyword = request.getParameter("keyword");
            Account account = (Account) session.getAttribute("account");
            if (account != null && account.getRole().equals("ADMIN")) {
                AccountDAO accountDAO = new AccountDAO();

                //Paging
                int page = 1;
                final int PAGE_SIZE = 10;
                String pageStr = request.getParameter("page");
                if (pageStr != null) {
                    page = Integer.parseInt(pageStr);
                }
                int totalGroup = new AccountDAO().getTotalAccount();
                int totalPage = totalGroup / PAGE_SIZE;
                if (totalGroup % PAGE_SIZE != 0) {
                    totalPage += 1;
                }

                List<Account> list = null;
//                list = accountDAO.getAccounts(keyword);
                list = accountDAO.getAccountsPaging(keyword, page, PAGE_SIZE);

                request.setAttribute("LIST_ACCOUNT", list);

                msg = "Search Success!!";
                request.setAttribute("SEARCH_ADMIN_MSG", msg);
                //Paging value

                request.setAttribute("page", page);
                request.setAttribute("totalPage", totalPage);

                request.getRequestDispatcher("dashboard.jsp").forward(request, response);

            } else {
                msg = "Something not right!";
                request.setAttribute("SEARCH_ADMIN_MSG", msg);
                request.getRequestDispatcher("Notfound.jsp").forward(request, response);
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
