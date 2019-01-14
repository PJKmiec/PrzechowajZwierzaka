package pl.przechowajzwierzaka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.przechowajzwierzaka.model.User;
import pl.przechowajzwierzaka.repository.UserRepository;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @ModelAttribute("users")
    public List<User> getUsers() {
        return userRepository.findAll();
    }


    @RequestMapping(value = "/add" , method = RequestMethod.GET)
    public String addUser(Model model) {
        User user = new User();
        model.addAttribute(user);
        return "user-add";
    }

    @RequestMapping(value = "/add" , method = RequestMethod.POST)
    public String addUserPost(@Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "user-add";
        }
        java.util.Date now = new java.util.Date();
        user.setCreated(now);
        userRepository.save(user);
        return "redirect:/user/edit";
    }



    @RequestMapping("/edit")
    public String editUser() { return "users"; }

    @RequestMapping("/delete/{id}")
    public String deleteUser(@PathVariable long id) {
        userRepository.delete(id);
        return "redirect:/user/edit";
    }


}
