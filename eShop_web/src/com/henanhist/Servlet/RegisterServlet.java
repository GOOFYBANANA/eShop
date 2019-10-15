package com.henanhist.Servlet;

import com.henanhist.domain.User;
import com.henanhist.service.EshopService;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class RegisterServlet extends HttpServlet {
    static EshopService service = new EshopService();
    protected void doGet(HttpServletRequest req, HttpServletResponse resp){

    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter out = resp.getWriter();
        String uname = req.getParameter("uname");
        String uemail = req.getParameter("uemail");
        String upassword = req.getParameter("upassword");
        String usex = req.getParameter("usex");
        User user = new User();
        user.setUname(uname);
        user.setUemail(uemail);
        user.setUpassword(upassword);
        user.setUsex(usex);
//        out.print(uname+uemail+upassword+usex);
        int registerState = service.register(user);
        out.print(registerState);
        if (registerState == 1) {
            resp.sendRedirect(this.getServletContext().getContextPath()+"/login.html");
        }else {
            resp.sendRedirect(this.getServletContext().getContextPath()+"/register.html");
        }
    }
}
