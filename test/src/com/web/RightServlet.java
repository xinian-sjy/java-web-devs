package com.web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/**
 * @author cyq-xn
 * @ClassName RightServlet
 * @Description TODO
 * @Date 2019/9/27
 * @Version 1.0
 **/
public class RightServlet extends HttpServlet {
    public  void doGet(HttpServletRequest req, HttpServletResponse resp) throws SecurityException, IOException, ServletException {
        req.setCharacterEncoding("UTF-8");
        Thing[] things={
                new Thing("","",""),
                new Thing("","",""),
                new Thing("","",""),
        };
        List<Thing> thingList= Arrays.asList(things);
        req.setAttribute("thingList",thingList);
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}
