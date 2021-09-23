package ioasys.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import ioasys.model.User;
import ioasys.model.enums.UserType;
import ioasys.repository.UserRepository;

@Service
public class UserService implements UserDetailsService {

	@Autowired
	UserRepository userRepository;

	@Autowired
	AuthService authService;

	public User save(User user) {
		if(user.getId() != null) {
			User currentUser = authService.getCurrentUser();
			if(user.equals(currentUser) || currentUser.getType() == UserType.ADMINISTRATOR) {
				return userRepository.save(user);		
			}
			return user;
		}else {
			return userRepository.save(user);	
		}		
	}

	public User delete(String id) {
		User user = userRepository.findById(Long.valueOf(id)).get();
		if (user != null) {
			user.setActive(false);
			return save(user);
		}
		return user;
	}

	public Page<User> findAllUsers(int page, int size) {
		return userRepository.findByactiveTrueAndTypeEqualsOrderByName(UserType.USER, PageRequest.of(page, size));
//		return userRepository.findByactiveTrueOrderByName();

	}

	public User findById(Long id) {
		return userRepository.findById(id).get();
	}

	public User login(String username) {
		return userRepository.login(username);
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userRepository.login(username);
		return new org.springframework.security.core.userdetails.User(user.getPassword(), user.getPassword(),
				new ArrayList<>());
	}

	public User findByLogin(String username) {
		return userRepository.findByName(username);
	}

}
