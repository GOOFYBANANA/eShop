package com.henanhist.Servlet;

import javax.imageio.ImageIO;
import javax.net.ssl.HttpsURLConnection;
import javax.servlet.ServletContext;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

public class CheckCodeServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws IOException {
        HttpSession session = req.getSession();
        BufferedImage img = this.getImage(session);
        ServletOutputStream out = resp.getOutputStream();
        ImageIO.write(img, "jpg", out);
        out.flush();
        out.close();
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {

    }
    private BufferedImage getImage(HttpSession session){
        int j = 1;
        int width = 70;
        int height = 30;
        StringBuffer check = new StringBuffer();
        if (check.length() != 0){
            check.delete(0,check.length());
        }
        BufferedImage img = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        Graphics2D g = img.createGraphics();
        g.setColor(getRandColor(100, 200));
        g.fillRect(0, 0, width, height);
        Font font = new Font("宋体", Font.HANGING_BASELINE, 25);
        g.setFont(font);
        Random random = new Random();
        String base = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        int size = base.length();
        for (int i = 0;i < 4; i++){
            int start = random.nextInt(size);
            String s = base.substring(start, start+1);
            g.setColor(new Color(20+random.nextInt(110),
                    20+random.nextInt(110),20+random.nextInt(110)));
            g.drawString(s, i*15+6, 24);
            check.append(s);
        }
        String s = null;
        if (check.length() == 4){
            s = check.toString();
            session.setAttribute("checkword", s);
        }else {
            s = check.substring(4*j, check.length());
            session.setAttribute("checkword", s);
        }
        g.dispose();
        return img;
    }
    private Color getRandColor(int fc, int bc){
        Random random = new Random();
        if (fc > 225){
            fc = 225;
        }
        if (bc > 225){
            bc = 225;
        }
        int r = fc + random.nextInt(bc - fc);
        int g = fc + random.nextInt(bc - fc);
        int b = fc + random.nextInt(bc - fc);

        return new Color(r, g, b);
    }
}
