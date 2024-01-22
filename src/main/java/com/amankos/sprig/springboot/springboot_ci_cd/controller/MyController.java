package com.amankos.sprig.springboot.springboot_ci_cd.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class MyController {
    @GetMapping("/")
    public String testEndpoint() {
        return "That's a test endpoint";
    }
}
