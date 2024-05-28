package com.example.ntt;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@OpenAPIDefinition
public class NttApplication {

    public static void main(String[] args) {
        SpringApplication.run(NttApplication.class, args);
    }

}
