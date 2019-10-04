package com.web.entity;

/**
 * @author cyq-xn
 * @ClassName SignlnServlet
 * @Description TODO
 * @Date 2019/10/2
 * @Version 1.0
 **/

import com.web.Util.Md5Util;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

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
        resp.setContentType("text/html;charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter out=resp.getWriter();

        String account =req.getParameter("account");
        String password =req.getParameter("password");

        UserService userService = new UserService();
        User user = userService.sigln(account, Md5Util.crypt(password));
        if (user != null) {
            HttpSession session = req.getSession();
            session.setAttribute("user", user);
            resp.sendRedirect("/index");
        } else {

            out.print("<script>alert('账号或密码错误');location.href='/login.html';</script>");
        }
//        ServletContext sc=this.getServletContext();
//        List<User> userList=(List<User>) sc.getAttribute("userList");
//        userService.setUserList(userList);
//
//        User user=userService.sigln(account,password);
//        if(user!=null){
//            HttpSession session=req.getSession();
//            session.setAttribute("user",user);
//            resp.sendRedirect("/index");
//        }
//        else{
//            out.print("<scrip>alert('账号或密码错误');location.href='/login';</script>");
//        }
    }
}
