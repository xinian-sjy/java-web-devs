package com.web.entity;

/**
 * @author cyq-xn
 * @ClassName User
 * @Description TODO
 * @Date 2019/10/2
 * @Version 1.0
 **/
public class User {
    private String account;
    private String password;
    private String nickname;
    private String photo;
    @Override
    public String toString() {
        return "User{" +
                "account='" + account + '\'' +
                ", password='" + password + '\'' +
                ", nickname='" + nickname + '\'' +
                ", photo='" + photo + '\'' +
                '}';
    }



    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }


    public User(String account, String password, String nickname, String photo) {
        this.account = account;
        this.password = password;
        this.nickname = nickname;
        this.photo = photo;
    }


}
