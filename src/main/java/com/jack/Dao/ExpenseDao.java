package com.jack.Dao;

import com.jack.Entity.Expenses;
import com.jack.Entity.User;
import com.jack.Servlet.SaveExpenseServlet;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class ExpenseDao {
    private SessionFactory sessionFactory;
    Session session=null;
    Transaction tx=null;

    public ExpenseDao(SessionFactory sessionFactory){
        super();
        this.sessionFactory=sessionFactory;

    }
    public boolean saveExpense(Expenses expense){
        boolean value=false;



        try {
            session=sessionFactory.openSession();
            tx= session.beginTransaction();
            session.save(expense);
            tx.commit();
            value=true;
        } catch (Exception e) {
            if(tx !=null){
                value=false;
                e.printStackTrace();
            }
        }





        session.close();
        return value;

    }
    public List<Expenses> getAllExpenses(User user){
        List<Expenses> list=null;
        try{
            session=sessionFactory.openSession();
           Query<Expenses> q= session.createQuery("from Expenses where user = :us",Expenses.class);
           q.setParameter("us",user);
           list= q.getResultList();


        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public Expenses getExpenseById(int id){
        Expenses ex= null;

        try{
            session=sessionFactory.openSession();
            Query<Expenses> q= session.createQuery("from Expenses where id=:id");
            q.setParameter("id",id);
            ex=q.uniqueResult();



        } catch (Exception e) {
            e.printStackTrace();
        }
        return ex;
    }
    public boolean UpdateExpense(Expenses expense){
        boolean value=false;



        try {
            session=sessionFactory.openSession();
            tx= session.beginTransaction();
            session.saveOrUpdate(expense);
            tx.commit();
            value=true;
        } catch (Exception e) {
            if(tx !=null){
                value=false;
                e.printStackTrace();
            }
        }





        session.close();
        return value;

    }
    public boolean deleteExpense(int id){
        boolean value=false;
         try {
            session=sessionFactory.openSession();
            tx= session.beginTransaction();
            Expenses ex=session.get(Expenses.class,id);
            session.delete(ex);
            tx.commit();
            value=true;
        } catch (Exception e) {
            if(tx !=null){
                value=false;
                e.printStackTrace();
            }
        }

        session.close();
        return value;

    }
}
