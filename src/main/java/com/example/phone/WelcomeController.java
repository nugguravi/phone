package com.example.phone;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class WelcomeController {

        @GetMapping("/welcome")
        public String welcome(@RequestParam String name) {

            return "Welcome:"+name;
        }

    @GetMapping("/hello")
    public String hello() {

        return "hello:";
    }
}
