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

CREATE OR REPLACE TABLE `Artiste` (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nom VARCHAR(25) NOT NULL,   
    prenom VARCHAR(25) NOT NULL,
    date_naissance DATE NOT NULL,   
    email VARCHAR(25) NOT NULL,
    telephone VARCHAR(25) NOT NULL,
    adresse VARCHAR(25) NOT NULL,
    cin VARCHAR(25) NOT NULL,
    genre VARCHAR(25) NOT NULL
    
)