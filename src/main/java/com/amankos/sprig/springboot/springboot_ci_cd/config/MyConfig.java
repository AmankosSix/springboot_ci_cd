package com.amankos.sprig.springboot.springboot_ci_cd.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Configuration
@ComponentScan("com.amankos.sprig.springboot.springboot_ci_cd")
@EnableWebMvc
public class MyConfig {
}
