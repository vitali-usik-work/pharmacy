package pharmacy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * Created by v.usik on 6/3/2016.
 */
@Controller
public class HomeController {

    @RequestMapping("/")
    public String homePage(Map<String, Object> map) {

        map.put("hello", "Hello World!");
        System.out.println("Hello World!");
        return "home";
    }
}
