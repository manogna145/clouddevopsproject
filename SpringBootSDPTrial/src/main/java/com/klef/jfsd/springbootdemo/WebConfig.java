
  package com.klef.jfsd.springbootdemo;
  
  import org.springframework.context.annotation.Configuration;
  import org.springframework.web.servlet.config.annotation.CorsRegistry; 
  import org.springframework.web.servlet.config.annotation.EnableWebMvc; 
  import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
  
  @Configuration
  
  @EnableWebMvc public class WebConfig implements WebMvcConfigurer {
  
  @Override public void addCorsMappings(CorsRegistry registry) {
  registry.addMapping("/**") // Allow CORS
  .allowedOrigins("http://localhost:5173") //for allowing urls
  .allowedMethods("GET", "POST", "PUT", "DELETE") .allowedHeaders("*") //typeof data 
  .allowCredentials(true); //for cookies
  } 
  }
 