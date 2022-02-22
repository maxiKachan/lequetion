package com.andersen.authenticationregistrationservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class AuthenticationRegistrationServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(AuthenticationRegistrationServiceApplication.class, args);
    }

}
