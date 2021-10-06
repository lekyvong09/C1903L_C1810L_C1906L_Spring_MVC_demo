package com.ray.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

    @RequestMapping("/processHelloFormVer2")
    public String sayHello(@RequestParam("studentName") String theName, Model model) {
        //String theName = request.getParameter("studentName");
        theName = theName.toUpperCase();

        String result = "Hello " + theName;
        model.addAttribute("message", result);

        return "helloworld";
    }
}
