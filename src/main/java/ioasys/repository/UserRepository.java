package ioasys.repository;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import ioasys.model.User;
import ioasys.model.enums.UserType;

public interface UserRepository extends JpaRepository<User, Long> {

	@Query("SELECT u FROM User u WHERE login = :login")
	User login(@Param("login") String login);

	Page<User> findByactiveTrueAndTypeEqualsOrderByName(UserType type, Pageable page);

	User findByName(String username);

}
