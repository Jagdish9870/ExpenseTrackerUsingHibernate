package com.jack.Entity;

import javax.persistence.*;

@Entity
public class Expenses {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String title, date, time, description, price;
    @ManyToOne
    private User user;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Expenses(String title, String date, String time, String description, String price, User user) {
        this.title = title;
        this.date = date;
        this.time = time;
        this.description = description;
        this.price = price;
        this.user = user;
    }

    public Expenses(){

    }
}
