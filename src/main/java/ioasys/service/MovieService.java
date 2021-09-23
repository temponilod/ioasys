package ioasys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import ioasys.model.Movie;
import ioasys.model.User;
import ioasys.model.enums.UserType;
import ioasys.repository.MovieRepository;

@Service
public class MovieService {

	@Autowired
	MovieRepository movieRepository;
	
	@Autowired
	AuthService authService;

	public Movie save(Movie movie) throws Exception {
		User currnetUser = authService.getCurrentUser();
		if (currnetUser.getType() == UserType.ADMINISTRATOR) {
			return movieRepository.save(movie);
		}
			throw new Exception("Usuário não possui permissão para cadastrar filmes!");	
	}

	public Page<Movie> findMovies(String author, String title, String genre, String actor, int page, int size) {
		return movieRepository.findMovies(author, title, genre, actor, PageRequest.of(page, size));
	}

	public Movie findById(Long id) {
		return movieRepository.findById(id).get();
	}

}
