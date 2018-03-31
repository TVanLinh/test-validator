package controller;

import entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import validator.UserValidator;

/**
 * Created by linhtran on 29/06/2017.
 */

@Controller
public class HelloController extends  BaseController {

    @Autowired
    private UserValidator userValidator;

    @ModelAttribute("userForm")
    public User initUser() {
        return new User();
    }

    @RequestMapping(value = "/")
    public  String displayHello(@ModelAttribute(value = "userForm") User user){
        System.out.println("user - "+ user);
        return "hello";
    }

    @RequestMapping(value = "/form")
    public String displayForm() {
        return "form";
    }

    @RequestMapping(value = "/form",method = RequestMethod.POST)
    public String actionForm( @ModelAttribute(value = "userForm") User userForm,
                             RedirectAttributes redirectAttributes ,BindingResult bindingResult
                             ) {
        userValidator.validate(userForm,bindingResult);
        if(bindingResult.hasErrors()) {
            return  "/form";
        }
        redirectAttributes.addFlashAttribute("userForm",userForm);
        return "redirect:/";
    }

}
