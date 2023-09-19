-- Active: 1666090502503@@127.0.0.1@3306@tp10
use tp10;

CREATE TABLE `adherant`
(
    id_adherant int  PRIMARY KEY  NOT NULL  AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL , 
    prenom VARCHAR(255) NOT NULL , 
    date_Naissance DATE
)

CREATE OR REPLACE TABLE `activite`
(
    id_activite int PRIMARY KEY NOT NULL AUTO_INCREMENT ,
    libelle VARCHAR(255) NOT null ,
    max_part int NOT NULL ,
    tarif DOUBLE not null ,
    id_adherant int ,
    Foreign Key (id_adherant) REFERENCES adherant(id_adherant) )

CREATE or REPLACE TABLE `responsable`
(
    id_respo int NOT NULL PRIMARY KEY AUTO_INCREMENT ,
    nom VARCHAR(255) NOT NULL ,
    prenom VARCHAR(255) NOT NULL
)

