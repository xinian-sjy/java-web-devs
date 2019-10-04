package com.web.entity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author cyq-xn
 * @ClassName BookDetailServlet
 * @Description TODO
 * @Date 2019/10/4
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/detail/*")
public class BookDetailServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String requestPath = req.getRequestURI().trim();
        int position = requestPath.lastIndexOf("/");
        String id = requestPath.substring(position+1);
//        List<Book> bookList = LeftServlet.getBooklist();
//        for(Book book: bookList){
//            if(Integer.parseInt(id) == book.getId()){
//                req.setAttribute("book",book);
//                req.getRequestDispatcher("/bookdetail.jsp").forward(req,resp);
//            }
//        }
    }
}