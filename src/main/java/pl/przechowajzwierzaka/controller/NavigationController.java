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

    // znajdź opiekuna
    @RequestMapping("/znajdz-opiekuna")
    public String offersForOwner() { return "offers"; }

    // zostan opiekunem
    @RequestMapping("/zostan-opiekunem")
    public String offersForSitter() {
        return "offers";
    }

    // pytania i odpowiedzi
    @RequestMapping("/pytania-i-odpowiedzi")
    public String faq() {
        return "faq";
    }

    // kontakt
    @RequestMapping("/kontakt")
    public String contact() { return "contact"; }




}

