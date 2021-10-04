package com.ray.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloWorldController {

    @RequestMapping("/hello")
    public String showForm() {
        return "helloworld-form";
    }

    @RequestMapping("/processHelloForm")
    public String processHelloForm() {
        return "helloworld";
    }
}
