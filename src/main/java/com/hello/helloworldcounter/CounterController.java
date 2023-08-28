package com.hello.helloworldcounter;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CounterController {
    private int counter = 0;

    @GetMapping("/")
    public String helloWorld(Model model) {
        counter++;
        String message = "hello-world-" + counter;
        model.addAttribute("message", message);
        return "hello";
    }
}

