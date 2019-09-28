package com.web;

/**
 * @author cyq-xn
 * @ClassName student
 * @Description TODO
 * @Date 2019/9/28
 * @Version 1.0
 **/
public class student {
    private String name;
    private Integer number;
    private String  grade;
    private String xueyuan;
    public student(){

    }
    public student(String name,Integer number,String grade, String xueyuan){
        this.name=name;
        this.number=number;
        this.grade=grade;
        this.xueyuan=xueyuan;
    }

    public Integer getNumber() {
        return number;
    }

    public String getGrade() {
        return grade;
    }

    public String getName() {
        return name;
    }

    public String getXueyuan() {
        return xueyuan;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public void setXueyuan(String xueyuan) {
        this.xueyuan = xueyuan;
    }

    @Override
    public String toString() {
        return "student{" +
                "name=" + name +
                ", number='" + number + '\'' +
                ", grade='" + grade + '\'' +
                ",  xueyuan=" + xueyuan +
                '}';
    }
}
