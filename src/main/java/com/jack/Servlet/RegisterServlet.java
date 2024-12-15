package com.jack.Servlet;

import com.jack.Dao.UserDao;
import com.jack.Entity.User;
import com.jack.conn.HibernateUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/userSignUp")
public class RegisterServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("fullName");
        String email=req.getParameter("email");
        String about=req.getParameter("about");
        String password=req.getParameter("password");

        User user= new User(1,name,email,about,password);
        UserDao userDao= new UserDao(HibernateUtil.getSessionfactory());
        boolean b= userDao.saveUser(user);
        if(b){
            System.out.println("Registration successful!");

        }
        else{
            System.out.println("not registered!");
        }


        HttpSession httpSession= req.getSession();

        if(b){
            httpSession.setAttribute("msg","registered!");
            resp.sendRedirect("signup.jsp");

        }
        else{
            httpSession.setAttribute("msg","not registered!");
            resp.sendRedirect("signup.jsp");

        }


       
    }
}
