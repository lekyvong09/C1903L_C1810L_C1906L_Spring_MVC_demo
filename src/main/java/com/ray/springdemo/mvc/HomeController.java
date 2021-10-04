package com.ray.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//@Controller is an extend of @Component
@Controller
public class HomeController {

    @RequestMapping("/")
    public String showPage() {
        return "main-menu";
    }
}
