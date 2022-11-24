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
INSERT INTO `hackaton1`.`movie` (`name`, `img`) VALUES ('Planet of the Apes', '/assets/movies/planet_of_the_apes_picture.jpg');


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

INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `img`, `movie_id`) VALUES ('New Zealand', 'Hobbits Village', 'Hobbiton', '/assets/location/hobitton.jpg', '1');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `img`, `movie_id`) VALUES ('New Zealand', 'Tongariro National Park', 'Mount Doom', '/assets/location/hobitton.jpg', '1');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `img`, `movie_id`) VALUES ('Croatia', 'Dubrovnik', 'King’s Landing', '/assets/location/tongariro.jpg', '2');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `img`, `movie_id`) VALUES ('Iceland', 'Thingvellir National Park', 'Behind the wall', '/assets/location/dubrovnik.jpg', '2');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `img`, `movie_id`) VALUES ('Tunisia', 'Tataouine', 'Tatooine', '/assets/location/tataouine.jpg', '3');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `img`, `movie_id`) VALUES ('Italia', 'Etna volcano', 'Mustafar Planet', '/assets/location/etna.jpg', '3');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `img`, `movie_id`) VALUES ('Croatia', 'Plitvice lakes', 'Pandora Lake', '/assets/location/plitvice.jpg', '4');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `img`, `movie_id`) VALUES ('China', 'Zhangjiajie forest', 'Pandora mountains', '/assets/location/zhangjiajie.jpg', '4');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `img`, `movie_id`) VALUES ('Thailand', 'Maya bay, Koh Phi Phi island', 'Unknown', '/assets/location/kophipphi.jpg', '5');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `img`, `movie_id`) VALUES ('Iceland', 'Svínafellsjökull glacier', 'Planet Mann', '/assets/location/iceland.jpg', '6');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `img`, `movie_id`) VALUES ('Jordania', 'Khazneh, Petra', 'Temple of Doom', '/assets/location/khazneh.jpg', '7');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `img`, `movie_id`) VALUES ('South America', 'Iguazu falls', 'Kingdom of Crystal Skull', '/assets/location/iguazu.jpg', '7');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `img`, `movie_id`) VALUES ('US', 'National park of Denali', 'National park of Denali', '/assets/location/denali.jpg', '8');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `img`, `movie_id`) VALUES ('US', 'Canyonlands National park', 'Canyonlands National park', '/assets/location/canyonlands.jpg', '9');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `img`, `movie_id`) VALUES ('US', 'Powell lake', 'Powell lake', '/assets/location/lac_powell.jpg', '10');


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
