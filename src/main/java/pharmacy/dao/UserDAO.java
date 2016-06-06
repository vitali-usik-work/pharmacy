package pharmacy.dao;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import pharmacy.entity.Drug;
import pharmacy.entity.User;

@Repository
public class UserDAO {
    @Autowired
    private SessionFactory sessionFactory;

    public User login(String username, String password) {
        User user = null;
        Query q = sessionFactory.getCurrentSession().createQuery("FROM User WHERE (login = :username) AND (password = :password)");
        q.setString("username", username);
        q.setString("password", password);

        user = (User) q.uniqueResult();
//        System.out.println("User from dao: " + user.getLogin());
        return user;
    }
}
