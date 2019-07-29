package mvc.dao;

import mvc.entities.User;

import java.util.List;

/**
 * Created by anmi0217 on 26/7/2019.
 */
public interface UserDao {
    User getUser(long id);
    List<User> getAllUsers();
}
