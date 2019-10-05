package com.web.entity;

/**
 * @author cyq-xn
 * @ClassName IndexServlet
 * @Description TODO
 * @Date 2019/10/5
 * @Version 1.0
 **/
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Book> bookList = LeftServlet.init();
//        List<Book> bookList= Arrays.asList(books);
        req.setAttribute("bookList" ,bookList);
//        ServletContext sc = this.getServletContext();
//        sc.setAttribute("bookList", bookList);
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}
