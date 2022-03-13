/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package filter;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author FPTSHOP-ACER
 */
@WebFilter(filterName = "AuthorizationFillter", urlPatterns = {"/admin/*"})
public class AuthorizationFillter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession();
        //Kiểm tra đăng nhập
        Account account = (Account) session.getAttribute("account");
        if (account != null) {
            if (account.getRole().equals("ADMIN")) {
                //cho qua
                chain.doFilter(request, response);
                return;
            } else {
//                chain.doFilter(request, response);
                req.getRequestDispatcher("home.jsp").forward(request, response);
            }
        } else {
            req.getRequestDispatcher("login.jsp").forward(request, response);
        }

    }

    @Override
    public void destroy() {
    }

    @Override
    public void init(FilterConfig filterConfig) {

    }

}
