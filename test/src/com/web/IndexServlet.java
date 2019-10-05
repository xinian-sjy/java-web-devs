package com.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet(urlPatterns = "/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        Book[] books={
                new Book("地学家的藏书室","1.jpg","乔恩·法斯曼"),
                new Book("北方四岛的呼叫","2.jpg","佐佐木让"),
                new Book("突然亡命天涯","3.jpg","肯.来福特"),
                new Book("春夏然后是冬","4.jpg","歌野昌午"),
                new Book("偷窥者小平次","5.jpg","京极夏炎"),
                new Book("色情电影谋杀案","6.jpg","爱德华.霍克"),
                new Book("福尔摩斯古堡谜案","7.jpg","赤川次郎"),
                new Book("福尔摩斯雪山谜案","8.jpg","赤川次郎"),
                new Book("福尔摩斯幽灵谜案","9.jpg","赤川次郎"),
                new Book("梦之花","10.jpg","东野奎吾"),
        };
        List<Book> bookList= Arrays.asList(books);
        req.setAttribute("bookList" ,bookList);
        req.getRequestDispatcher("/index.jsp").forward(req,resp);

    }
}
