package mvc;

import mvc.components.Sayer;
import mvc.dao.UserDao;
import mvc.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.InternalResourceView;
import org.springframework.web.servlet.view.JstlView;

import java.util.List;
import java.util.Map;

/**
 * Created by anmi0217 on 25/7/2019.
 */
@Controller
@RequestMapping("/")
public class TestController {
    @Autowired
    private Sayer sayer;


    @Autowired
    @Qualifier("jsonUserMock")
    private UserDao userDao;

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public ModelAndView services(ModelAndView modelAndView) {
        modelAndView.setViewName("/about/about");
        List<User> users = userDao.getAllUsers();
        modelAndView.getModel().put("users", users);
        return modelAndView;
    }

    @RequestMapping(value = "/jstlHTML", method = RequestMethod.GET)
    public ModelAndView returnHTML() {

        System.out.println(userDao.getAllUsers());
        return new ModelAndView("/jstl/jstl", "resultHTML", "<font color='red'><b>+" + sayer.saySomething() + "</b></font>");
    }

    @RequestMapping(value = "/users/{id}",method = RequestMethod.GET)
    public ModelAndView returnUser(@PathVariable long id, Map<String,Object> model) {
        View view = new InternalResourceView("/WEB-INF/view/users/user.jsp");
        System.out.println(id + " - id of User");
        model.put("user",userDao.getUser(id));
        return new ModelAndView(view, model);

    }

}
