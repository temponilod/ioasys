package ioasys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ioasys.model.Movie;
import ioasys.model.Rate;
import ioasys.model.User;
import ioasys.repository.RateRepository;

@Service
public class RateService {

	@Autowired
	MovieService movieService;

	@Autowired
	UserService userService;

	@Autowired
	RateRepository rateRepository;

	public Rate save(Rate rate) {
		Movie movie = movieService.findById(rate.getMovie().getId());
		User user = userService.findById(rate.getUser().getId());

		rate.setMovie(movie);
		rate.setUser(user);
		return rateRepository.save(rate);
	}

}