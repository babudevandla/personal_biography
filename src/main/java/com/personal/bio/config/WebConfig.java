package com.personal.bio.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
public class WebConfig extends WebMvcConfigurerAdapter {

	 @Override
	    public void addResourceHandlers(ResourceHandlerRegistry registry) {
	        registry.addResourceHandler(
	                "/cubeportfolio/**",
	                "/icon-fonts/**",
	                "/images/**",
	                "/css/**",
	                "/js/**",
	                "/fonts/**")
	                .addResourceLocations(
	                        "classpath:/static/cubeportfolio/",
	                        "classpath:/static/icon-fonts/",
	                        "classpath:/static/images/",
	                        "classpath:/static/css/",
	                        "classpath:/static/js/",
	                        "classpath:/static/fonts/");
	    }

    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/views/");
        resolver.setSuffix(".jsp");
        resolver.setViewClass(JstlView.class);
        registry.viewResolver(resolver);
    }
}