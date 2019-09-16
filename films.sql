CREATE TABLE films (
  title CHAR(50),
  id int,
  country CHAR(20),
  box_office int,
  release_date date,
  PRIMARY KEY (id)
); 

CREATE TABLE persons (
  id int,
  fio CHAR(30),
  PRIMARY KEY (id)
); 

CREATE TABLE persons2content (
  person_id int,
  film_id int,
  person_type CHAR(20),
  FOREIGN KEY (person_id) REFERENCES persons(id),
  FOREIGN KEY (film_id) REFERENCES films(id) 
); 

INSERT INTO films (title, id, country, box_office, release_date) 
VALUES ("JOHN WICK 3", 0, "USA", 321728152, "2019.05.15"),
("Sayonara no asa ni yakusoku no hana o kazaro", 1, "Japan", 4343981, "2018.02.24"),
("Pokémon Detective Pikachu", 2, "USA, Japan", 431605346, "2019.05.02"),
("Mirai no Mirai", 3, "JAPAN", 28111369, "2018.05.16"),
("Spy Kids 3-D: Game Over", 4, "USA", 197011982, "2003.07.13");

INSERT INTO persons (id, fio) 
VALUES (0, "Chad Stahelski"),
(1, "Mari Okada"),
(2, "Rob Letterman"),
(3, "Mamoru Hosoda"),
(4, "Robert Rodriguez");

INSERT INTO persons2content (person_id, film_id, person_type) 
VALUES (0, 0, "Режиссёр"),
(1, 1, "Режиссёр"),
(2, 2, "Режиссёр"),
(3, 3, "Режиссёр"),
(4, 4, "Режиссёр")