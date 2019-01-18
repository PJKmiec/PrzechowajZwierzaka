package pl.przechowajzwierzaka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.przechowajzwierzaka.model.Offer;
import pl.przechowajzwierzaka.repository.OfferRepository;

import java.util.List;

@Controller
public class NavigationController {

    @Autowired
    OfferRepository offerRepository;

    // homepage
    @RequestMapping("/")
    public String home(Model model) {
        List<Offer> offers = offerRepository.findFirst6ByTypeOrderByIdDesc("o");
        model.addAttribute("offers", offers);
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

