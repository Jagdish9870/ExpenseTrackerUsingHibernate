package com.jack.Dao;

import com.jack.Entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class UserDao {
    private SessionFactory sessionFactory;
    Session session=null;
    Transaction tx=null;
    public UserDao(SessionFactory sessionFactory){
        super();
        this.sessionFactory=sessionFactory;

    }
    public boolean saveUser(User user){
        boolean value=false;



        try {
           session=sessionFactory.openSession();
            tx= session.beginTransaction();
            session.save(user);
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
    public User login(String email, String password){
        User u=null;
        session=sessionFactory.openSession();
        Query q=session.createQuery("from User where email=:em and password=:ps");
        q.setParameter("em",email);
        q.setParameter("ps",password);
         u=(User)q.uniqueResult();

        return u;






    }
}
