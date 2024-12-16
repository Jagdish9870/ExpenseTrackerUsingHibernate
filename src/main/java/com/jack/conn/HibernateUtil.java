package com.jack.conn;
// if dont want to use xml file...... we can use this java file.....
import com.jack.Entity.Expenses;
import com.jack.Entity.User;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;
import java.util.Properties;

public class HibernateUtil {
    private static SessionFactory sessionfactory;
    public static SessionFactory getSessionfactory(){
        if(sessionfactory==null){
            Configuration configuration =new Configuration();
            Properties properties = getProperties();
            configuration.setProperties(properties);


            // adding classes
            configuration.addAnnotatedClass(User.class);
            configuration.addAnnotatedClass(Expenses.class);

            ServiceRegistry serviceRegistry=new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
            sessionfactory= (SessionFactory)configuration.buildSessionFactory(serviceRegistry);
        }
        return sessionfactory;
    }

    private static Properties getProperties() {
        Properties properties= new Properties();
        properties.put(Environment.DRIVER,"com.mysql.cj.jdbc.Driver");
        properties.put(Environment.URL,"jdbc:mysql://localhost:3306/online_expense_tracker");
        properties.put(Environment.USER,"root");
        properties.put(Environment.PASS,"987068@Vjack");
        properties.put(Environment.DIALECT,"org.hibernate.dialect.MySQL8Dialect");
        properties.put(Environment.HBM2DDL_AUTO,"update");
        properties.put(Environment.SHOW_SQL,true);

        return properties;
    }


}
