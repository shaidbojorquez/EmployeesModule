package com.bolsadeideas.springboot.api.employees.security;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

//import com.bolsadeideas.springboot.api.employees.service.impl.JpaUserDetailsService;

@EnableGlobalMethodSecurity(securedEnabled = true)
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	/*@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@Autowired
	private JpaUserDetailsService userDetailsService;

	
	  @Override protected void configure(AuthenticationManagerBuilder
	  builder)throws Exception{ builder.userDetailsService(userDetailsService)
	  .passwordEncoder(passwordEncoder); }*/
	 

	protected void configure(AuthenticationManagerBuilder builder) throws Exception {
		builder.inMemoryAuthentication()
			.withUser("Shaid")
				.password("{noop}123")
				.roles("ADMIN")
				.and()
				.withUser("Guillermo")
				.password("{noop}123")
				.roles("USER");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable().authorizeRequests().antMatchers("/").permitAll()
				// .antMatchers("/api/get-employee/**", "/api/add-employee",
				// "/api/edit-employe**", "/api/delete-employees/**")
				// .hasRole("ADMIN")
				.anyRequest().authenticated().and().httpBasic();
		// .anyRequest().authenticated();

	}

}
