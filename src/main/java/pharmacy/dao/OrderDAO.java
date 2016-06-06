package pharmacy.dao;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import pharmacy.entity.Order;
import pharmacy.entity.User;

import java.sql.Connection;

@Repository
public class OrderDAO {
    @Autowired
    private SessionFactory sessionFactory;

    public void makeOrder(Order order) {
//        Query q = sessionFactory.getCurrentSession().createQuery("FROM User WHERE (login = :username) AND (password = :password)");
//        q.setString("username", username);
//        q.setString("password", password);

//        user = (User) q.uniqueResult();
        Query q = sessionFactory.getCurrentSession().createQuery("INSERT INTO Order (drugid, loginid) VALUES (7, 1)");
        //q.setInteger("drugId", order.getDrugId());
        q.executeUpdate();
    }
}
