package com.henanhist.Servlet;

import com.henanhist.service.EshopService;
import com.mysql.cj.Session;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp){

    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        EshopService service = new EshopService();
        String ID = req.getParameter("myID");
        String PASSWORD = req.getParameter("myPASSWORD");
        String checkword = req.getParameter("checkword");
        HttpSession session = req.getSession();
        String login_state = service.login(ID, PASSWORD);
        try {
            if (!login_state.equals("1") && session.getAttribute("checkword").equals(checkword)){
                session.setAttribute("loginState","0");
                session.setAttribute("userName", login_state);
                resp.sendRedirect(this.getServletContext().getContextPath()+"/index.html");
            }else {
                session.setAttribute("loginState", "1");
                resp.sendRedirect(this.getServletContext().getContextPath()+"/login.html");
            }
        }catch (IOException e){
            e.printStackTrace();
        }
    }
}
