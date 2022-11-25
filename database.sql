-- Schema hackaton1
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `hackaton1`;

CREATE DATABASE `hackaton1`;

USE `hackaton1`;

create table movie
(
    movie_id  int auto_increment
        primary key,
    name      varchar(255) null,
    movie_img text         null
);

INSERT INTO `hackaton1`.`movie` (`name`, `movie_img`)
VALUES ('Lord of the rings', '/assets/movies/TLOTR_picture.jpg');
INSERT INTO `hackaton1`.`movie` (`name`, `movie_img`)
VALUES ('Game of thrones', '/assets/movies/GOT_picture.jpg');
INSERT INTO `hackaton1`.`movie` (`name`, `movie_img`)
VALUES ('Star wars', '/assets/movies/star_wars_picture.jpg');
INSERT INTO `hackaton1`.`movie` (`name`, `movie_img`)
VALUES ('Avatar', '/assets/movies/avatar_picture.jpg');
INSERT INTO `hackaton1`.`movie` (`name`, `movie_img`)
VALUES ('The beach', '/assets/movies/the_beach_picture.jpg');
INSERT INTO `hackaton1`.`movie` (`name`, `movie_img`)
VALUES ('Indiana Jones', '/assets/movies/IJ_picture.jpg');
INSERT INTO `hackaton1`.`movie` (`name`, `movie_img`)
VALUES ('Into the wild', '/assets/movies/intothewild_picture.jpg');
INSERT INTO `hackaton1`.`movie` (`name`, `movie_img`)
VALUES ('127 hours', '/assets/movies/127hours_picture.jpg');
INSERT INTO `hackaton1`.`movie` (`name`, `movie_img`)
VALUES ('Planet of the Apes', '/assets/movies/planet_of_the_apes_picture.jpg');
INSERT INTO `hackaton1`.`movie` (`name`, `movie_img`)
VALUES ('Interstellar', '/assets/movies/interstellar_picture.jpg');



create table location
(
    location_id  int auto_increment
        primary key,
    country      varchar(45) null,
    city         varchar(45) null,
    fictive_city varchar(45) null,
    location_img text        null,
    movie_id     int         not null,
    constraint fk_location_movie
        foreign key (movie_id) references movie (movie_id)
);

INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `location_img`, `movie_id`)
VALUES ('New Zealand', 'Hobbits Village', 'Hobbiton', '/assets/location/hobbiton.jpg', '1');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `location_img`, `movie_id`)
VALUES ('New Zealand', 'Tongariro National Park', 'Mount Doom', '/assets/location/tongariro.jpg', '1');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `location_img`, `movie_id`)
VALUES ('Croatia', 'Dubrovnik', 'King’s Landing', '/assets/location/dubrovnik.jpg', '2');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `location_img`, `movie_id`)
VALUES ('Iceland', 'Thingvellir National Park', 'Behind the wall', '/assets/location/Thingvellir.jpg', '2');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `location_img`, `movie_id`)
VALUES ('Tunisia', 'Tataouine', 'Tatooine', '/assets/location/tataouine.jpg', '3');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `location_img`, `movie_id`)
VALUES ('Italia', 'Etna volcano', 'Mustafar Planet', '/assets/location/etna.jpg', '3');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `location_img`, `movie_id`)
VALUES ('Croatia', 'Plitvice lakes', 'Pandora Lake', '/assets/location/plitvice.jpg', '4');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `location_img`, `movie_id`)
VALUES ('China', 'Zhangjiajie forest', 'Pandora mountains', '/assets/location/zhangjiajie.jpg', '4');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `location_img`, `movie_id`)
VALUES ('Thailand', 'Maya bay, Koh Phi Phi island', 'Unknown', '/assets/location/kophipphi.jpg', '5');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `location_img`, `movie_id`)
VALUES ('Iceland', 'Svínafellsjökull glacier', 'Planet Mann', '/assets/location/iceland.jpg', '8');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `location_img`, `movie_id`)
VALUES ('Jordania', 'Khazneh, Petra', 'Temple of Doom', '/assets/location/khazneh.jpg', '6');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `location_img`, `movie_id`)
VALUES ('South America', 'Iguazu falls', 'Kingdom of Crystal Skull', '/assets/location/iguazu.jpg', '6');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `location_img`, `movie_id`)
VALUES ('US', 'National park of Denali', 'National park of Denali', '/assets/location/denali.jpg', '7');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `location_img`, `movie_id`)
VALUES ('US', 'Canyonlands National park', 'Canyonlands National park', '/assets/location/canyonlands.jpg', '9');
INSERT INTO `hackaton1`.`location` (`country`, `city`, `fictive_city`, `location_img`, `movie_id`)
VALUES ('US', 'Powell lake', 'Powell lake', '/assets/location/lac_powell.jpg', '10');


create index fk_location_movie_idx
    on location (movie_id);

create table package
(
    package_id  int auto_increment
        primary key,
    hotel_name  varchar(255) null,
    inclusive   tinyint      null,
    price       int          null,
    activities  varchar(255) null,
    location_id int          null,
    picture1    varchar(255) null,
    picture2    varchar(255) null,
    picture3    varchar(255) null,

    constraint fk_package_location1
        foreign key (location_id) references location (location_id)
);

INSERT INTO `hackaton1`.`package` (`hotel_name`, `inclusive`, `location_id`, `picture1`, `picture2`, `picture3`)
VALUES ('Beach resort', '1', '9', '/assets/accomodation/beach1', '/assets/accomodation/beach2',
        '/assets/accomodation/beach3');
INSERT INTO `hackaton1`.`package` (`hotel_name`, `inclusive`, `location_id`, `picture1`, `picture2`)
VALUES ('Hobbit house', '1', '1', '/assets/accomodation/hobbit', '/assets/accomodation/hobbit2');
INSERT INTO `hackaton1`.`package` (`hotel_name`, `inclusive`, `location_id`, `picture1`, `picture2`)
VALUES ('Bubble house', '1', '4', '/assets/accomodation/islande1', '/assets/accomodation/islande2');
INSERT INTO `hackaton1`.`package` (`hotel_name`, `inclusive`, `location_id`, `picture1`, `picture2`)
VALUES ('Petra resort', '1', '11', '/assets/accomodation/jordanie', '/assets/accomodation/jordanie2');
INSERT INTO `hackaton1`.`package` (`hotel_name`, `inclusive`, `price`, `location_id`, `picture1`, `picture2`)
VALUES ('Plitvice', '1', 1700, '7', '/assets/accomodation/plitvice', '/assets/accomodation/plitvice2');
INSERT INTO `hackaton1`.`package` (`hotel_name`, `inclusive`, `location_id`, `picture1`, `picture2`, `picture3`)
VALUES ('Sixx hotell', '1', '8', '/assets/accomodation/zhanggjiajie', '/assets/accomodation/chine1',
        '/assets/accomodation/chine2');
INSERT INTO `hackaton1`.`package` (`hotel_name`, `inclusive`, `location_id`, `picture1`)
VALUES ('SKYCITY Grand Hôtel', '1', '2', '/assets/accomodation/nouvelle-zelande');
INSERT INTO `hackaton1`.`package` (`hotel_name`, `inclusive`, `location_id`, `picture1`, `picture2`)
VALUES ('Dubrovnik villa', '1', '3', '/assets/accomodation/dubrivnik1', '/assets/accomodation/dubrovnik2');
INSERT INTO `hackaton1`.`package` (`hotel_name`, `inclusive`, `location_id`, `picture1`, `picture2`)
VALUES ('Sangho Privilege', '1', '5', '/assets/accomodation/tataouine1', '/assets/accomodation/tataouine2');
INSERT INTO `hackaton1`.`package` (`hotel_name`, `inclusive`, `location_id`, `picture1`, `picture2`)
VALUES ('Volcano Villa', '1', '6', '/assets/accomodation/etna1', '/assets/accomodation/etna2');
INSERT INTO `hackaton1`.`package` (`hotel_name`, `inclusive`, `location_id`, `picture1`)
VALUES ('Iguaza luxury', '1', '12', '/assets/accomodation/iguaza2');


create index fk_package_location1_idx
    on package (location_id);
