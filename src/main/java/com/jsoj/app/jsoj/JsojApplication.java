package com.jsoj.app.jsoj;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@SpringBootApplication
@MapperScan("com.jsoj.app.jsoj.dao")
@EnableCaching
public class JsojApplication {

    public static void main(String[] args) {
        SpringApplication.run(JsojApplication.class, args);
    }

}