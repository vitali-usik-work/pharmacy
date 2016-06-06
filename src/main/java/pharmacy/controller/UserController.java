package pharmacy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pharmacy.entity.User;
import pharmacy.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    public UserService userService;

    @RequestMapping(value = "/loginPage", method = RequestMethod.GET)
    public String loginPage() {
        System.out.println("login page");
        return "loginPage";
    }

    @RequestMapping("/login")
    public String saveArticle(HttpServletRequest request) {
        String page = null;
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println("NAME: " + name + password);
        User user = userService.login(name, password);

        HttpSession session = request.getSession();
        session.setAttribute("user", user);
        if (user != null) {
            page = "redirect:/";
        } else {
            session.setAttribute("error", "Неверный имя пользователя или пароль. Пожалуйста повторите ввод.");
            page = "/loginPage";
        }

        return page;
    }

    @RequestMapping(value = "/exit")
    public String logOut(HttpServletRequest request) {
        String page = null;
        HttpSession session = request.getSession();

        if (session != null) {
            session.invalidate();
        }

        return "redirect:/";
    }

}
