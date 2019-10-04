package com.web.entity;

/**
 * @author cyq-xn
 * @ClassName UserService
 * @Description TODO
 * @Date 2019/10/2
 * @Version 1.0
 **/
import com.web.Util.Md5Util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class UserService {
    private List<User> userList;
    public UserService(){
        init();
    }
    public List<User> init(){
        userList=new ArrayList<>(3);
        User[] users={
                new User("13019999714","81dc9bdb52d04dc20036dbd8313ed055","王大","1.jpg"),
                new User("13020000714","b626870cbf36f5f9559dd94f6032251f","小张","2.jpg"),
        };
        userList = Arrays.asList(users);
        return userList;

    }
    public  void setUserList(List<User> userList){
        this.userList=userList;
    }

    public  User sigln(String account,String password){
        for(User user:userList){
//            if (user.getAccount().equals(account)&&user.getPassword().equals((Md5Util.crypt(password)))){
//                return user;
            if(user.getAccount().equals(account)&&user.getPassword().equals(password)){
               return  user;

            }
        }
        return  null;
    }

    public static  void  main(String[] args){
        User user = new UserService().sigln("13019999714", Md5Util.crypt("1234"));
        if (user != null) {
            System.out.println(user);
        }else {
            System.out.println("not found");
        }
    }

}
