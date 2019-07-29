package mvc.dao.impl;

import mvc.dao.UserDao;
import mvc.entities.User;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by anmi0217 on 26/7/2019.
 */
@Component("jsonUserMock")
public class JsonUserDaoMock implements UserDao {

    @PostConstruct
    private void init(){
        System.out.println("Create Users Mock");

        for (int i = 0; i < 10; i++) {
            User user = new User();
            user.setId(i);
            user.setName("UserMock"+i);
            user.setCreationDate(new Date());
            user.setDescription("UserMock Description "+i);
            user.setVersion(1);
            user.setPassword("userMock assword"+i);
            user.setImageLink("/resources/images/userPlaceHolder.JPG");
            users.add(user);
        }
        System.out.println("Created UserMock count"+users.size());
    }

    @Override
    public User getUser(long id) {
        return users.get(0);
    }

    @Override
    public List<User> getAllUsers() {
        return users;
    }

    private List<User> users = new ArrayList<>();
}
