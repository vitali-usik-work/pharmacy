package pharmacy.service;

import pharmacy.entity.User;

public interface UserService {
    public User login(String name, String password);
}
