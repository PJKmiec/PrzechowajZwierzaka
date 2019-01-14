package pl.przechowajzwierzaka.controller;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.przechowajzwierzaka.model.User;
import pl.przechowajzwierzaka.repository.UserRepository;
import pl.przechowajzwierzaka.service.RegisterService;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RegisterService registerService;

    @ModelAttribute("users")
    public List<User> getUsers() {
        return userRepository.findAll();
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginUserGet(Model model) {
        User user = new User();
        model.addAttribute(user);
        return "user-login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginUserPost(Model model, @RequestParam String login, @RequestParam String password) {
        User targetUser = userRepository.findOneByLogin(login);

        if (targetUser.getLogin().equals(login) && BCrypt.checkpw(password, targetUser.getPassword())) {
            targetUser.setLast_login(new java.util.Date());
            userRepository.save(targetUser);
        } else {
            model.addAttribute("user", targetUser);
            model.addAttribute("errorMessage", "Błędny login lub hasło!");
            return "user-login";
        }

        return "redirect:/user/edit";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addUser(Model model) {
        User user = new User();
        model.addAttribute(user);
        return "user-add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addUserPost(@Valid User user, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "user-add";
        }

        String registerResult = registerService.registerUser(user);
        if (registerResult.equals("login")) {
            model.addAttribute("user", user);
            model.addAttribute("errorMessage", "Taki login jest już używany!");
            return "user-add";
        }else if (registerResult.equals("email")) {
            model.addAttribute("user", user);
            model.addAttribute("errorMessage", "Taki email jest już używany!");
            return "user-add";
        }
            return "redirect:/user/edit";
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
