package pl.przechowajzwierzaka.controller;

import org.apache.commons.lang3.StringUtils;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.przechowajzwierzaka.model.User;
import pl.przechowajzwierzaka.repository.UserRepository;
import pl.przechowajzwierzaka.service.LoginService;
import pl.przechowajzwierzaka.service.RegisterService;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private LoginService loginService;

    @Autowired
    private RegisterService registerService;

    @ModelAttribute("users")
    public List<User> getUsers() {
        return userRepository.findAll();
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginUserGet(Model model) {
        model.addAttribute(new User());
        return "user-login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginUserPost(Model model, @RequestParam String login, @RequestParam String password, HttpSession session, @RequestParam(value = "rememberMe", required = false) String rememberMe) {

        if (StringUtils.isNotBlank(login) && StringUtils.isNotBlank(password)) {
            User user = userRepository.findOneByLogin(login);

            if (user == null) {
                model.addAttribute("user", new User());
                model.addAttribute("errorMessage", "Nie znaleziono użytkownika z takim loginem!");
                return "user-login";
            } else {
                String loginResult = loginService.loginUser(user, login, password);

                if (loginResult.equals("ok")) {
                    session.setAttribute("user", user);

                    if(rememberMe != null) {
                        session.setMaxInactiveInterval(120*60); // seconds
                    } else {
                        session.setMaxInactiveInterval(5*60); // seconds
                    }

                    return "redirect:/";
                } else if (loginResult.equals("credentials")) {
                    model.addAttribute("user", user);
                    model.addAttribute("errorMessage", "Błędny login lub hasło!");
                    return "user-login";
                }
            }
        } else {
            model.addAttribute("user", new User());
            model.addAttribute("errorMessage", "Podaj login i hasło!");
            return "user-login";
        }
        return "";
    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest request) {
        HttpSession httpSession = request.getSession();
        httpSession.invalidate();
        return "redirect:/";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String addUser(Model model) {
        User user = new User();
        model.addAttribute(user);
        return "user-add";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String addUserPost(@Valid User user, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "user-add";
        }

        String registerResult = registerService.registerUser(user);
        if (registerResult.equals("login")) {
            model.addAttribute("user", user);
            model.addAttribute("errorMessage", "Taki login jest już używany!");
            return "user-add";
        } else if (registerResult.equals("email")) {
            model.addAttribute("user", user);
            model.addAttribute("errorMessage", "Taki email jest już używany!");
            return "user-add";
        }
        return "redirect:/user/login";
    }

    @RequestMapping("/edit")
    public String editUser() {
        return "users";
    }

    @RequestMapping("/edit/{id}")
    public String editUser2(@PathVariable long id, Model model) {
        User user = userRepository.findOne(id);
        model.addAttribute(user);
        return "user-add";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String editUser3(@PathVariable long id, @Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "user-add";
        }
        user.setId(id);
        userRepository.save(user);
        return "redirect:/user/edit";
    }

    @RequestMapping("/delete/{id}")
    public String deleteUser(@PathVariable long id) {
        userRepository.delete(id);
        return "redirect:/user/edit";
    }


}
