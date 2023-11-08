package com.opbank.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.thymeleaf.spring6.view.ThymeleafViewResolver;

@EnableAutoConfiguration
@SpringBootApplication
public class OpbankApplication {

	public static void main(String[] args) {
		SpringApplication.run(OpbankApplication.class, args);

	}
}
