-- Active: 1666090502503@@127.0.0.1@3306@tp10
CREATE OR REPLACE DATABASE film ;

use DATABASE film ;

CREATE Table `un_film` (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL ,
    titre VARCHAR(25) ,
    description VARCHAR(25) NOT NULL,
    annee DATE ,
    genre VARCHAR(25) NOT NULL 
);