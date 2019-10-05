package com.web;

import com.web.Util.Md5Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author cyq-xn
 * @ClassName SignlnServlet
 * @Description TODO
 * @Date 2019/9/25
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/sign_in")
public class SignlnServlet extends HttpServlet {
    protected void  doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        String account =req.getParameter("account");
        String password =req.getParameter("password");
        Userservice userService = new Userservice();
        User user = userService.sigln(account, Md5Util.crypt(password));
        if (user != null) {
            HttpSession session = req.getSession();
            session.setAttribute("user", user);
            resp.sendRedirect("/index");
        } else {
            resp.setContentType("text/html;charset=UTF-8");
            resp.setCharacterEncoding("UTF-8");
            PrintWriter out=resp.getWriter();
            out.print("<script>alert('账号或密码错误');location.href='/login.html';</script>");
        }

    }
}
