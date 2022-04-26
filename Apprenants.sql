drop database if exists Apprenants;
create database Apprenants;

use Apprenants;

CREATE TABLE entreprise (
  id        integer primary key auto_increment,
  nom_entreprises   varchar(50)
  
) ENGINE InnoDB;

CREATE TABLE expertise (
  id        integer primary key auto_increment,
  documentation_skill   int,
  python_skill 	int,
  sql_skill int,
  modelisation_skill int
  
) ENGINE InnoDB;

CREATE TABLE eleves (
  id        int PRIMARY KEY AUTO_INCREMENT,
  prenom    varchar(30) not null,
  nom       varchar(30) not null,
  mail      varchar(30) not null,
  pseudo    varchar(30) not null,
  anciennete integer not null,
  id_entreprise integer,
  id_expertise integer, 
  FOREIGN KEY (id_entreprise) REFERENCES entreprise(id),
  FOREIGN KEY (id_expertise) REFERENCES expertise(id)
  
) ENGINE InnoDB;






