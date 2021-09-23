package ioasys.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import ioasys.model.Movie;
import ioasys.service.MovieService;

@RestController
@RequestMapping("/movie")
public class MovieController {

	@Autowired
	MovieService movieService;

	@PostMapping()
	public ResponseEntity<Movie> save(@RequestBody Movie movie, HttpServletRequest req) throws Exception {        
		return ResponseEntity.ok().body(movieService.save(movie));
	}

	@GetMapping("/search")
	public ResponseEntity<Page<Movie>> findMovies(@RequestParam(required = false) String author, @RequestParam(required = false) String title,
			@RequestParam(required = false) String genre,@RequestParam(required = false) String actors, 
			@RequestParam("page") int page, @RequestParam("size") int size) {
		return ResponseEntity.ok().body(movieService.findMovies(author,title, genre,actors, page, size));
	}
	
	@GetMapping("/searchs")
	public String teste(@RequestParam(required = false)  String author,@RequestParam String title) {
		return "ok";
	}

}
