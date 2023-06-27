package com.codingdojo.loginregistration.controllers;

import com.codingdojo.loginregistration.models.Login;
import com.codingdojo.loginregistration.models.User;
import com.codingdojo.loginregistration.services.UserService;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MainController {
    @Autowired
    UserService userService;


    @GetMapping("/")
    public String index(@ModelAttribute("newUser") User user,
                        @ModelAttribute("newLogin") Login loginUser,
                        HttpSession session) {
        session.setAttribute("loggedInUserID", null);
        return "index";
    }

    //REGISTERING THE USER
    @PostMapping("/register")
    public String registerIndex(@Valid @ModelAttribute("newUser") User user,
                                BindingResult result, Model model, HttpSession session) {
        userService.register(user, result);

        if (result.hasErrors()) {
            model.addAttribute("newLogin", new Login());
            return "index";
        }
        session.setAttribute("loggedInUserID", user.getId());

        return "redirect:/home";
    }

    //LOGGING IN THE USER
    @PostMapping("/login")
    public String loginIndex(@Valid @ModelAttribute("newLogin") Login loginUser,
                             BindingResult result, Model model, HttpSession session) {
        User user = userService.login(loginUser, result);

        if (result.hasErrors()) {
            model.addAttribute("newUser", new User());
            return "index";
        }

        session.setAttribute("loggedInUserID", user.getId());

        return "redirect:/home";
    }
}
