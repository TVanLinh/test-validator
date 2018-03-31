package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import validator.UserValidator;

/**
 * Created by linhtran on 31/03/18.
 */

@Controller
public class BaseController {

    @Autowired
    private UserValidator userValidator;

//    @InitBinder
//    public void initBinder(WebDataBinder binder) {
////        binder.setValidator(userValidator);
//        binder.addValidators(userValidator);
//    }
}
