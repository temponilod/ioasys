INSERT INTO `ioasys`.`tb_movies`(`genre`,`title`)VALUES('COMEDY','MOVIE 01');
INSERT INTO `ioasys`.`tb_movies`(`genre`,`title`)VALUES('COMEDY','MOVIE 02');
INSERT INTO `ioasys`.`tb_movies`(`genre`,`title`)VALUES('COMEDY','MOVIE 03');
INSERT INTO `ioasys`.`tb_movies`(`genre`,`title`)VALUES('ROMANCE','MOVIE 04');
INSERT INTO `ioasys`.`tb_movies`(`genre`,`title`)VALUES('ROMANCE','MOVIE 05');
INSERT INTO `ioasys`.`tb_movies`(`genre`,`title`)VALUES('ROMANCE','MOVIE 06');
INSERT INTO `ioasys`.`tb_movies`(`genre`,`title`)VALUES('DYSTOPIA','MOVIE 07');
INSERT INTO `ioasys`.`tb_movies`(`genre`,`title`)VALUES('DYSTOPIA','MOVIE 08');
INSERT INTO `ioasys`.`tb_movies`(`genre`,`title`)VALUES('DYSTOPIA','MOVIE 09');
INSERT INTO `ioasys`.`tb_movies`(`genre`,`title`)VALUES('CONTEMPORARY','MOVIE 10');

INSERT INTO `ioasys`.`tb_directors`(`name`)VALUES('DIRECTOR 01');
INSERT INTO `ioasys`.`tb_directors`(`name`)VALUES('DIRECTOR 02');
INSERT INTO `ioasys`.`tb_directors`(`name`)VALUES('DIRECTOR 03');
INSERT INTO `ioasys`.`tb_directors`(`name`)VALUES('DIRECTOR 04');
INSERT INTO `ioasys`.`tb_directors`(`name`)VALUES('DIRECTOR 05');
INSERT INTO `ioasys`.`tb_directors`(`name`)VALUES('DIRECTOR 06');
INSERT INTO `ioasys`.`tb_directors`(`name`)VALUES('DIRECTOR 07');
INSERT INTO `ioasys`.`tb_directors`(`name`)VALUES('DIRECTOR 08');
INSERT INTO `ioasys`.`tb_directors`(`name`)VALUES('DIRECTOR 09');
INSERT INTO `ioasys`.`tb_directors`(`name`)VALUES('DIRECTOR 10');

INSERT INTO `ioasys`.`tb_actors`(`name`)VALUES('ACTOR 01');
INSERT INTO `ioasys`.`tb_actors`(`name`)VALUES('ACTOR 02');
INSERT INTO `ioasys`.`tb_actors`(`name`)VALUES('ACTOR 03');
INSERT INTO `ioasys`.`tb_actors`(`name`)VALUES('ACTOR 04');
INSERT INTO `ioasys`.`tb_actors`(`name`)VALUES('ACTOR 05');
INSERT INTO `ioasys`.`tb_actors`(`name`)VALUES('ACTOR 06');
INSERT INTO `ioasys`.`tb_actors`(`name`)VALUES('ACTOR 07');
INSERT INTO `ioasys`.`tb_actors`(`name`)VALUES('ACTOR 08');
INSERT INTO `ioasys`.`tb_actors`(`name`)VALUES('ACTOR 09');
INSERT INTO `ioasys`.`tb_actors`(`name`)VALUES('ACTOR 10');


INSERT INTO `ioasys`.`tb_movies_actor`(`id_movie`,`id_actor`)VALUES(1,1);
INSERT INTO `ioasys`.`tb_movies_actor`(`id_movie`,`id_actor`)VALUES(1,2);
INSERT INTO `ioasys`.`tb_movies_actor`(`id_movie`,`id_actor`)VALUES(1,3);
INSERT INTO `ioasys`.`tb_movies_actor`(`id_movie`,`id_actor`)VALUES(2,4);
INSERT INTO `ioasys`.`tb_movies_actor`(`id_movie`,`id_actor`)VALUES(2,5);
INSERT INTO `ioasys`.`tb_movies_actor`(`id_movie`,`id_actor`)VALUES(3,6);
INSERT INTO `ioasys`.`tb_movies_actor`(`id_movie`,`id_actor`)VALUES(3,7);
INSERT INTO `ioasys`.`tb_movies_actor`(`id_movie`,`id_actor`)VALUES(4,8);
INSERT INTO `ioasys`.`tb_movies_actor`(`id_movie`,`id_actor`)VALUES(5,9);
INSERT INTO `ioasys`.`tb_movies_actor`(`id_movie`,`id_actor`)VALUES(5,10);
INSERT INTO `ioasys`.`tb_movies_actor`(`id_movie`,`id_actor`)VALUES(6,5);
INSERT INTO `ioasys`.`tb_movies_actor`(`id_movie`,`id_actor`)VALUES(6,4);
INSERT INTO `ioasys`.`tb_movies_actor`(`id_movie`,`id_actor`)VALUES(7,1);
INSERT INTO `ioasys`.`tb_movies_actor`(`id_movie`,`id_actor`)VALUES(7,2);
INSERT INTO `ioasys`.`tb_movies_actor`(`id_movie`,`id_actor`)VALUES(8,1);
INSERT INTO `ioasys`.`tb_movies_actor`(`id_movie`,`id_actor`)VALUES(8,4);
INSERT INTO `ioasys`.`tb_movies_actor`(`id_movie`,`id_actor`)VALUES(9,1);
INSERT INTO `ioasys`.`tb_movies_actor`(`id_movie`,`id_actor`)VALUES(9,5);
INSERT INTO `ioasys`.`tb_movies_actor`(`id_movie`,`id_actor`)VALUES(9,6);
INSERT INTO `ioasys`.`tb_movies_actor`(`id_movie`,`id_actor`)VALUES(10,5);

INSERT INTO `ioasys`.`tb_movies_director`(`id_movie`,`id_director`)VALUES(1,1);
INSERT INTO `ioasys`.`tb_movies_director`(`id_movie`,`id_director`)VALUES(1,2);
INSERT INTO `ioasys`.`tb_movies_director`(`id_movie`,`id_director`)VALUES(1,3);
INSERT INTO `ioasys`.`tb_movies_director`(`id_movie`,`id_director`)VALUES(2,4);
INSERT INTO `ioasys`.`tb_movies_director`(`id_movie`,`id_director`)VALUES(2,5);
INSERT INTO `ioasys`.`tb_movies_director`(`id_movie`,`id_director`)VALUES(3,6);
INSERT INTO `ioasys`.`tb_movies_director`(`id_movie`,`id_director`)VALUES(3,7);
INSERT INTO `ioasys`.`tb_movies_director`(`id_movie`,`id_director`)VALUES(4,8);
INSERT INTO `ioasys`.`tb_movies_director`(`id_movie`,`id_director`)VALUES(5,9);
INSERT INTO `ioasys`.`tb_movies_director`(`id_movie`,`id_director`)VALUES(5,10);
INSERT INTO `ioasys`.`tb_movies_director`(`id_movie`,`id_director`)VALUES(6,3);
INSERT INTO `ioasys`.`tb_movies_director`(`id_movie`,`id_director`)VALUES(6,5);
INSERT INTO `ioasys`.`tb_movies_director`(`id_movie`,`id_director`)VALUES(6,4);
INSERT INTO `ioasys`.`tb_movies_director`(`id_movie`,`id_director`)VALUES(7,1);
INSERT INTO `ioasys`.`tb_movies_director`(`id_movie`,`id_director`)VALUES(7,2);
INSERT INTO `ioasys`.`tb_movies_director`(`id_movie`,`id_director`)VALUES(8,1);
INSERT INTO `ioasys`.`tb_movies_director`(`id_movie`,`id_director`)VALUES(8,4);
INSERT INTO `ioasys`.`tb_movies_director`(`id_movie`,`id_director`)VALUES(9,1);
INSERT INTO `ioasys`.`tb_movies_director`(`id_movie`,`id_director`)VALUES(9,5);
INSERT INTO `ioasys`.`tb_movies_director`(`id_movie`,`id_director`)VALUES(9,6);
INSERT INTO `ioasys`.`tb_movies_director`(`id_movie`,`id_director`)VALUES(10,5);

INSERT INTO `ioasys`.`tb_users`(`active`,`name`,`login`,`password`,`type`)VALUES(true,'Adm','Adm','123456','ADMINISTRATOR');
INSERT INTO `ioasys`.`tb_users`(`active`,`name`,`login`,`password`,`type`)VALUES(true,'User 01','user1','123456','USER');
INSERT INTO `ioasys`.`tb_users`(`active`,`name`,`login`,`password`,`type`)VALUES(false,'User 03','user2','123456','USER');
INSERT INTO `ioasys`.`tb_users`(`active`,`name`,`login`,`password`,`type`)VALUES(true,'User 04','user3','123456','USER');
INSERT INTO `ioasys`.`tb_users`(`active`,`name`,`login`,`password`,`type`)VALUES(true,'User 05','user4','123456','USER');
INSERT INTO `ioasys`.`tb_users`(`active`,`name`,`login`,`password`,`type`)VALUES(true,'User 06','user5','123456','USER');
INSERT INTO `ioasys`.`tb_users`(`active`,`name`,`login`,`password`,`type`)VALUES(false,'User 07','user6','123456','USER');
INSERT INTO `ioasys`.`tb_users`(`active`,`name`,`login`,`password`,`type`)VALUES(true,'User 07','user7','123456','USER');



