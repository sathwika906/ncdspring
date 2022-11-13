package com.ncdweb;

import java.util.concurrent.TimeUnit;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.CacheControl;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

@SpringBootApplication
public class NcdWebappApplication {
	public void addResourceHandlers(ResourceHandlerRegistry registry) {

	    // Register resource handler for images
	    registry.addResourceHandler("/images/**").addResourceLocations("/WEB-INF/img/")
	            .setCacheControl(CacheControl.maxAge(2, TimeUnit.HOURS).cachePublic());
	}
	public static void main(String[] args) {
		SpringApplication.run(NcdWebappApplication.class, args);
	}

	
	
	
}
