package pl.przechowajzwierzaka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FrontController {
    @RequestMapping(value = "/", produces = "text/html; charset=utf-8")
    public String home() {
        return "index";
    }
}

