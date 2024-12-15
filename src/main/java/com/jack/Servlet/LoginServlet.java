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


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email=req.getParameter("email");

        String password=req.getParameter("password");

        UserDao userDao= new UserDao(HibernateUtil.getSessionfactory());
        User u=userDao.login(email,password);
        System.out.println(u);



        HttpSession httpSession= req.getSession();

        if(u==null){
            httpSession.setAttribute("msg","invalid entries!");
            resp.sendRedirect("login.jsp");

        }
        else{
            httpSession.setAttribute("loginUser",u);
            resp.sendRedirect("user/Home.jsp");

        }



    }
}
