package com.web;

//import com.sun.security.auth.module.Crypt;

import Util.Md5Util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author cyq-xn
 * @ClassName Userservice
 * @Description TODO
 * @Date 2019/9/26
 * @Version 1.0
 **/
public class Userservice {
    private List<User> userList;
    public Userservice(){
        init();
    }
    public List<User> init(){
        userList=new ArrayList<>(3);
        User[] users={
                new User("13019999714","81dc9bdb52d04dc20036dbd8313ed055","小号","1.jpg"),
                new User("13020000714","b626870cbf36f5f9559dd94f6032251f","小张","2.jpg"),
        };
        userList = Arrays.asList(users);
        return userList;


    }

    public  User sigln(String account,String password){
        for(User user:userList){
            if(user.getAccount().equals(account)&&user.getPassword().equals(password)){
                return  user;
            }
        }
        return  null;
    }
    public static  void  main(String[] args){
        User user = new Userservice().sigln("aaa", Md5Util.crypt("111"));
        System.out.println();
    }

}
