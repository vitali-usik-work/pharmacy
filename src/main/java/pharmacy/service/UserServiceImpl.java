package pharmacy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pharmacy.dao.UserDAO;
import pharmacy.entity.User;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;

    @Transactional
    public User login(String name, String password) {
        User user = null;
        user = userDAO.login(name, password);
        return user;
    }
}
