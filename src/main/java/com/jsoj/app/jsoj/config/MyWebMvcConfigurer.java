package com.jsoj.app.jsoj.config;

import com.jsoj.app.jsoj.web.interceptor.LoginInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

//MVC配置
@Configuration
public class MyWebMvcConfigurer implements WebMvcConfigurer {

    //拦截器配置
    @Override
    public void addInterceptors(InterceptorRegistry registry) {

        registry.addInterceptor(new LoginInterceptor()).excludePathPatterns("/static/**","/login","/api/auLogin","/api/reg","/reg");

    }


}
