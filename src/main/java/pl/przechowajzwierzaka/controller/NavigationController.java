package pl.przechowajzwierzaka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NavigationController {

    // homepage
    @RequestMapping("/")
    public String home() {
        return "index";
    }

    // admin panel
    @RequestMapping("/admin")
    public String adminPanel() {
        return "admin";
    }

    // pytania i odpowiedzi
    @RequestMapping("/pytania-i-odpowiedzi")
    public String faq() {
        return "faq";
    }

    // blog
    @RequestMapping("/blog")
    public String blog() {
        return "blog";
    }

    // kontakt
    @RequestMapping("/kontakt")
    public String contact() { return "contact"; }

}

