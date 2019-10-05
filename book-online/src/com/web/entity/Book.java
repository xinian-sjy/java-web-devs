package com.web.entity;

public class Book {
    public Book(String name, String cover, String author, Integer number) {
        this.name = name;
        this.cover = cover;
        this.author = author;
        this.number = number;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    @Override
    public String toString() {
        return "Book{" +
                "name='" + name + '\'' +
                ", cover='" + cover + '\'' +
                ", author='" + author + '\'' +
                ", number=" + number +
                '}';
    }

    private  String name;
    private  String cover;
    private  String author;
    private Integer number;




}
