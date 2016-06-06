package pharmacy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import pharmacy.entity.Drug;
import pharmacy.service.DrugService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class HomeController {

  @Autowired
  public DrugService drugService;

  @RequestMapping("/")
  public String homePage(Map<String, Object> map, HttpServletRequest request) {
//    HttpSession session = request.getSession();
//    session.setAttribute("user", "ololo");
    map.put("hello", "Hello World!");
    map.put("drugs", drugService.listDrugs());
    return "home";
  }
  
  @RequestMapping("/drug/{id}")
  public String singleDrugPage(@PathVariable("id") String id, Map<String, Object> map) {
    Drug drug = drugService.retrieveArticle(id);
    map.put("drug", drug);
    return "drug";
  }
  
  @RequestMapping("/contact")
  public String contactPage(Map<String, Object> map) {
    //map.put("drugs", drugService.listDrugs());
    return "contact";
  }
}
