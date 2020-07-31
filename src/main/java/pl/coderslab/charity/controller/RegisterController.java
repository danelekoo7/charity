package pl.coderslab.charity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.entity.User;
import pl.coderslab.charity.service.UserService;

import javax.validation.Valid;

@Controller
@RequestMapping("/registration")
public class RegisterController {


    private final UserService userService;

    public RegisterController(UserService userService) {
        this.userService = userService;
    }


    @GetMapping
    public String registration(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }


    @PostMapping
    public String createNewUser(@Valid User user, BindingResult result) {
        User userExists = userService.findByUserName(user.getUsername());
        if (userExists != null) {
            result
                    .rejectValue("username", "istnieje już użytkownik o takiej nazwie");
        }
        if (result.hasErrors()) {
            return "register";
        } else {
            userService.saveUser(user);
        }
        return "redirect:/";
    }

}
