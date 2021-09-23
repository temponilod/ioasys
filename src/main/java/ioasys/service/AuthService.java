package ioasys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import ioasys.model.User;

@Service
public class AuthService {

	@Autowired
	UserService userService;

	public User getCurrentUser() {
		UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return userService.findByLogin(userDetails.getUsername());
	}
}
