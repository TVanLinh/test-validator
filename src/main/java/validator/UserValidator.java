package validator;

import entities.User;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 * Created by linhtran on 31/03/18.
 */

@Component
public class UserValidator implements Validator {
    public boolean supports(Class<?> aClass) {
        return true;
    }

    public void validate(Object o, Errors errors) {
            User user = (User)o;
            if(user.getPassWord().length() < 10) {
                errors.rejectValue("passWord","passWord","PassWord not valid");
            }
    }
}
