package com.jack.Entity;


import javax.persistence.*;

@Entity
@Table(name="UserDetails")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private String email;
    private String about;
    private String password;
    public User(int id,String name, String email, String about, String password) {
        this.id=id;
        this.name = name;
        this.email = email;
        this.about = about;
        this.password = password;
    }
    public User(){
        super();

    }

    public User(String title, String date, String time, String description, String price, User user) {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", about='" + about + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
