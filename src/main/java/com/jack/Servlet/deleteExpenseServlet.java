
package com.jack.Servlet;

import com.jack.Dao.ExpenseDao;
import com.jack.conn.HibernateUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/deleteExpense")
public class deleteExpenseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id=Integer.parseInt(req.getParameter("id"));
        String title=req.getParameter("title");
        String date=req.getParameter("date");
        String time=req.getParameter("time");
        String description=req.getParameter("description");
        String price=req.getParameter("price");

        ExpenseDao expenseDao= new ExpenseDao(HibernateUtil.getSessionfactory());

        HttpSession httpSession= req.getSession();
        boolean b= expenseDao.deleteExpense(id);

        if(b){
            httpSession.setAttribute("msg","deleted successfully!!");
            resp.sendRedirect("user/viewExpense.jsp");

        }
        else{
            httpSession.setAttribute("msg","not deleted!");
            resp.sendRedirect("user/viewExpense.jsp");

        }


    }
}
