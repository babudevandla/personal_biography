package com.personal.bio.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	@Qualifier("customUserDetailsService")
	UserDetailsService userDetailsService;

	@Autowired
	CustomSuccessHandler customSuccessHandler;

	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	};

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
	}

//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
//	  http.authorizeRequests()
//	  	//.antMatchers("/", "/home").permitAll()
//	  	.antMatchers("/*", "/login").access("hasRole('USER')")
//	  	//.antMatchers("/admin/**").access("hasRole('ADMIN')")
//	  	//.antMatchers("/db/**").access("hasRole('ADMIN') and hasRole('DBA')")
//	  	//.and().formLogin().loginPage("/login")
//	  	.and().formLogin().loginPage("/login").successHandler(customSuccessHandler)
//	  	.usernameParameter("username").passwordParameter("password")
//	  	.and().csrf()
//	  	.and().exceptionHandling().accessDeniedPage("/Access_Denied");
//	}`

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().and().authorizeRequests()
		.antMatchers("/*", "/login").permitAll()
		.antMatchers("/personal/*").access("hasRole('USER')")
		.and().formLogin().loginPage("/login").successHandler(customSuccessHandler).permitAll()
		.and().logout().logoutSuccessUrl("/login").permitAll()
		.and().csrf().disable();
	}

}