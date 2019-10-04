//package com.web.listen;
//
//import com.web.entity.Book;
//import com.web.entity.User;
//
//import javax.servlet.ServletContext;
//import javax.servlet.ServletContextEvent;
//import javax.servlet.ServletContextListener;
//import javax.servlet.annotation.WebListener;
//import javax.servlet.http.HttpSession;
//import java.util.ArrayList;
//import java.util.Arrays;
//import java.util.List;
//
///**
// * @author cyq-xn
// * @ClassName ContextLoaderListener
// * @Description TODO
// * @Date 2019/10/2
// * @Version 1.0
// **/
//@WebListener
//public class ContextLoaderListener implements ServletContextListener {
////
////    /*
////    * @param sce
//
//    @Override
//    public void contextInitialized(ServletContextEvent sce) {
//        List<User> userList=new ArrayList<>(2);
//        User[] users={
//                new User("13019999714","81dc9bdb52d04dc20036dbd8313ed055","王大","1.jpg"),
//                new User("13020000714","b626870cbf36f5f9559dd94f6032251f","小张","2.jpg"),
//        };
//        userList = Arrays.asList(users);
//    }
//    List<Book> booklist=new ArrayList<>(10);
//    Book[] books={
//            new Book("地学家的藏书室","1.jpg","乔恩·法斯曼"),
//            new Book("北方四岛的呼叫","2.jpg","佐佐木让"),
//            new Book("突然亡命天涯","3.jpg","肯.来福特"),
//            new Book("春夏然后是冬","4.jpg","歌野昌午"),
//            new Book("偷窥者小平次","5.jpg","京极夏炎"),
//            new Book("色情电影谋杀案","6.jpg","爱德华.霍克"),
//            new Book("福尔摩斯古堡谜案","7.jpg","赤川次郎"),
//            new Book("福尔摩斯雪山谜案","8.jpg","赤川次郎"),
//            new Book("福尔摩斯幽灵谜案","9.jpg","赤川次郎"),
//            new Book("梦之花","10.jpg","东野奎吾"),
//    };
//
////    ServletContext servletContext=sce.getServletContext();
////    servletContext.setAttribute("userlist",UserList);
////
//    @Override
//    public void contextDestroyed(ServletContextEvent sce) {
//        System.out.println("容器销毁");
//    }
////    * @Description 容器初始化方法
////    *
////    * */
////    public void contextInitialized(ServletContextEvent sce){
////        System.out.println("容器启动");
////
////    }
//}
