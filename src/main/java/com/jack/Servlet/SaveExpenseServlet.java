package com.jack.Servlet;

import com.jack.Dao.ExpenseDao;
import com.jack.Dao.UserDao;
import com.jack.Entity.Expenses;
import com.jack.Entity.User;
import com.jack.conn.HibernateUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/saveExpense")
public class SaveExpenseServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String title=req.getParameter("title");
        String date=req.getParameter("date");
        String time=req.getParameter("time");
        String description=req.getParameter("description");
        String price=req.getParameter("price");




        ExpenseDao ExpenseDao= new ExpenseDao(HibernateUtil.getSessionfactory());
        HttpSession httpSession= req.getSession();
        User user=(User)httpSession.getAttribute("loginUser");
        Expenses expense= new Expenses(title,date,time,description,price,user);
        boolean b= ExpenseDao.saveExpense(expense);

        if(b){
            httpSession.setAttribute("msg","added successfully!!");
            resp.sendRedirect("user/addExpense.jsp");

        }
        else{
            httpSession.setAttribute("msg","not added!");
            resp.sendRedirect("user/addExpense.jsp");

        }


    }
}
