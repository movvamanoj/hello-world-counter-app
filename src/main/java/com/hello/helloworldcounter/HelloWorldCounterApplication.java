package com.hello;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloController {
    private int counter = 0;

    @GetMapping("/")
    public String hello(Model model) {
        counter++;
        model.addAttribute("message", "hello-world-" + counter);
        return "hello";
    }
}
