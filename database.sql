-- Schema hackaton1
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `hackaton1` ;

create table movie
(
    id   int auto_increment
        primary key,
    name varchar(255) null,
    img  text         null
);

INSERT INTO `hackaton1`.`movie` (`name`, `img`) VALUES ('Lord of the rings', '/assets/movies/LOTR_picture.jpg');
INSERT INTO `hackaton1`.`movie` (`name`, `img`) VALUES ('Game of thrones', '/assets/movies/GOT_picture.jpg');
INSERT INTO `hackaton1`.`movie` (`name`, `img`) VALUES ('Star wars', '/assets/movies/star_wars_picture.jpg');
INSERT INTO `hackaton1`.`movie` (`name`, `img`) VALUES ('Avatar', '/assets/movies/avatar_picture.jpg');
INSERT INTO `hackaton1`.`movie` (`name`, `img`) VALUES ('The beach', '/assets/movies/the_beach_picture.jpg');
INSERT INTO `hackaton1`.`movie` (`name`, `img`) VALUES ('Interstellar', '/assets/movies/interstella_picture.jpg');
INSERT INTO `hackaton1`.`movie` (`name`, `img`) VALUES ('Indiana Jones', '/assets/movies/IJ_picture.jpg');
INSERT INTO `hackaton1`.`movie` (`name`, `img`) VALUES ('Into the wild', '/assets/movies/intothewild_picture.jpg');
INSERT INTO `hackaton1`.`movie` (`name`, `img`) VALUES ('127 hours', '/assets/movies/127hours_picture.jpg');
INSERT INTO `hackaton1`.`movie` (`name`, `img`) VALUES ('Planète des singes', '/assets/movies/planet_of_the_apes_picture.jpg');


create table location
(
    id           int auto_increment
        primary key,
    country      varchar(45) null,
    city         varchar(45) null,
    fictive_city varchar(45) null,
    img          text        null,
    movie_id     int         not null,
    constraint fk_location_movie
        foreign key (movie_id) references movie (id)
);

create index fk_location_movie_idx
    on location (movie_id);

create table package
(
    id          int auto_increment
        primary key,
    hotel_name  varchar(255) null,
    inclusive   tinyint      null,
    price       int          null,
    activities  varchar(255) null,
    location_id int          null,
    constraint fk_package_location1
        foreign key (location_id) references location (id)
);

create index fk_package_location1_idx
    on package (location_id);
