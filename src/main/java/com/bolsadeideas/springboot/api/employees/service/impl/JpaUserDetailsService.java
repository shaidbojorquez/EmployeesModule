package com.bolsadeideas.springboot.api.employees.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bolsadeideas.springboot.api.employees.model.EmployeeUser;
import com.bolsadeideas.springboot.api.employees.model.Role;
import com.bolsadeideas.springboot.api.employees.repository.EmployeeUsersRepository;

@Service("jpaUserDetailsService")
public class JpaUserDetailsService implements UserDetailsService{
	
	@Autowired
	private EmployeeUsersRepository employeeUsersRepository;
	
	
	@Override
	@Transactional(readOnly=true)
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Optional<EmployeeUser> optEmployeeUser = employeeUsersRepository.findByUsername(username);
		EmployeeUser user = optEmployeeUser.get();
		List<GrantedAuthority> authorities = new ArrayList<>();
		
		for(Role role: user.getRoles()){
	           authorities.add(new SimpleGrantedAuthority(role.getAuthority()));
	       }
		
		 return new User(user.getUsername(), user.getPassword(), user.getEnabled(), true, true, true, authorities);
	}

}
