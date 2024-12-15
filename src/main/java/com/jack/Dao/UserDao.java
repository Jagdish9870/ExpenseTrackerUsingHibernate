package com.jack.Dao;

import com.jack.Entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

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
}
