    create table tb_actors (
       id INTEGER not null auto_increment,
        name varchar(255),
        primary key (id)
    ) ;
    
    create table tb_directors (
       id INTEGER not null auto_increment,
        name varchar(255),
        primary key (id)
    ) ;
    
    create table tb_movies (
       id INTEGER not null auto_increment,
        active bit,
        genre varchar(255) not null,
        title varchar(255) not null,
        primary key (id)
    ) ;
    
    create table tb_rate (
       id INTEGER not null auto_increment,
        comment varchar(255),
        rate double precision,
        id_movie INTEGER,
        id_user INTEGER,
        primary key (id)
    ) ;

    create table tb_users (
        id INTEGER not null auto_increment,
        active bit,
        name varchar(255) not null,
        login varchar(255) not null,
        password varchar(255) not null,
        type varchar(255) not null,
        primary key (id)
    ) ;
    
    create table tb_movies_actor (
        id INTEGER not null auto_increment,
        id_movie INTEGER,
        id_actor INTEGER,
        primary key (id)
    ) ;
    
   create table tb_movies_director (
        id INTEGER not null auto_increment,
        id_movie INTEGER,
        id_director INTEGER,
        primary key (id)
    ) ;

    
    alter table tb_rate 
       add constraint fk_rate_movies 
       foreign key (id_movie) 
       references tb_movies (id);
    
    alter table tb_rate 
       add constraint fk_rate_user
       foreign key (id_user) 
       references tb_users (id);
        
    alter table tb_movies_actor 
       add constraint fk_movies_actor_actor
       foreign key (id_actor) 
       references tb_actors (id);

    alter table tb_movies_actor 
       add constraint fk_movies_actor_movie 
       foreign key (id_movie) 
       references tb_movies (id);

    alter table tb_movies_director 
       add constraint fk_movies_director_director
       foreign key (id_director) 
       references tb_directors (id);
       
    alter table tb_movies_director 
       add constraint fk_movies_director_movies
       foreign key (id_movie) 
       references tb_movies (id);