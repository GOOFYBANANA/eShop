package com.henanhist.Servlet;

import com.henanhist.domain.Product;
import com.henanhist.service.EshopService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public class ProductsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> productList = null;
        EshopService service = new EshopService();
        productList = service.findAllproducts();
        req.setAttribute("productList",productList);
        req.getRequestDispatcher("jsp地址").forward(req,resp);
    }
}
