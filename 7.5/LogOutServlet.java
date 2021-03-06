package com.study.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LogOutServlet")
public class LogOutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getSession(false)!=null&&request.getSession().getAttribute("user")!=null){
            request.getSession().invalidate();
            response.sendRedirect(request.getContextPath()+"/index.jsp");
        }
    }

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}