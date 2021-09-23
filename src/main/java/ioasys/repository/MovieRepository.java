package ioasys.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import ioasys.model.Movie;

public interface MovieRepository extends JpaRepository<Movie, Long> {

	@Query(" SELECT new ioasys.model.Movie(movie, AVG(COALESCE(rate.rate, 0 )) AS average) FROM Movie movie"
			+ " LEFT JOIN movie.rates rate "
			+ " LEFT JOIN movie.directors director "
			+ " LEFT JOIN movie.actors actor "
			+ " WHERE movie.title like %:title% " 
			+ " OR movie.genre like %:genre% "
			+ " OR director.name like %:director% " 
			+ " OR actor.name like %:actor% " 			
			+ " GROUP BY movie.title "
			+ " ORDER BY average DESC, movie.title ASC ")
	Page<Movie> findMovies(@Param("director") String director, @Param("title") String title,
			@Param("genre") String genre, @Param("actor") String actor, Pageable pageable);
}
