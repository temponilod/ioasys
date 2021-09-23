package ioasys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import ioasys.JwtResponse;
import ioasys.JwtTokenUtil;
import ioasys.JwtUserDetailsService;
import ioasys.model.User;
import ioasys.service.UserService;

@RestController
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService;
	
	@Autowired
	private JwtTokenUtil jwtTokenUtil;

	@Autowired
	private AuthenticationManager authenticationManager;
	
	@Autowired
	private JwtUserDetailsService userDetailsService;

	@PostMapping("/login")
	public ResponseEntity<?> generateToken(@RequestBody User user) throws Exception {
		try {
			authenticate(user.getLogin(), user.getPassword());
			final UserDetails userDetails = userDetailsService.loadUserByUsername(user.getLogin());
			final String token = jwtTokenUtil.generateToken(userDetails);
			return ResponseEntity.ok(new JwtResponse(token));
		} catch (Exception ex) {
			throw new Exception("inavalid username/password");
		}
	}
	
	private void authenticate(String username, String password) throws Exception {
		try {
			authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password));
		} catch (DisabledException e) {
			throw new Exception("USER_DISABLED", e);
		} catch (BadCredentialsException e) {
			throw new Exception("INVALID_CREDENTIALS", e);
		}
	}

	@PostMapping()
	public User save(@RequestBody User user) {
		return userService.save(user);
	}

	@DeleteMapping("/{id}")
	public ResponseEntity<User> delete(@PathVariable("id") String id) {
		return new ResponseEntity<>(userService.delete(id), HttpStatus.OK);
	}

	@GetMapping()
	public ResponseEntity<Page<User>> findAllUsers(@RequestParam("page") int page, @RequestParam("size") int size) {
		return ResponseEntity.ok().body(userService.findAllUsers(page, size));
	}

}
