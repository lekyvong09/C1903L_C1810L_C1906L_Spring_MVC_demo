package com.ray.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {

    @RequestMapping("/showForm")
    public String showForm(Model theModel) {
        // create an object Student
        Student theStudent = new Student();

        // assign the object Student to Model bean for binding data
        theModel.addAttribute("student", theStudent);
        return "student-form";
    }
}
