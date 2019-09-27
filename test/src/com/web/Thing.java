package com.web;

/**
 * @author cyq-xn
 * @ClassName Thing
 * @Description TODO
 * @Date 2019/9/27
 * @Version 1.0
 **/
public class Thing {
    public Thing(String name, String issue, String writer) {
        this.name = name;
        this.issue = issue;
        this.writer = writer;
    }

    @Override
    public String toString() {
        return "Thing{" +
                "name='" + name + '\'' +
                ", issue='" + issue + '\'' +
                ", writer='" + writer + '\'' +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIssue() {
        return issue;
    }

    public void setIssue(String issue) {
        this.issue = issue;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    private  String name;
    private  String issue;
    private  String writer;

}
