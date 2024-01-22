package com.amankos.sprig.springboot.shop.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Configuration
@ComponentScan("com.amankos.sprig.springboot.shop")
@EnableWebMvc
public class MyConfig {
}
