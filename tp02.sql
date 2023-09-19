-- Active: 1666090502503@@127.0.0.1@3306@tp10
use tp10;

CREATE OR REPLACE TABLE `service `(
    code_service INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nom_service VARCHAR(255),
    chef_service VARCHAR(255),
    matricule INT,
    FOREIGN KEY (matricule) REFERENCES Employe(matricule)
);

CREATE OR REPLACE TABLE `Employe`
(
    matricule int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nom VARCHAR(255) NOT NULL ,
    prenom VARCHAR(255) NOT NULL ,
    adresse VARCHAR(255) NOT NULL,
    fonction VARCHAR(255) NOT NULL ,
    code_service int ,
    Foreign Key (code_service) REFERENCES service(code_service)
)

CREATE OR REPLACE TABLE `projet` 
(
    num_projet int NOT NULL PRIMARY key ,
    nom varchar(255) NOT NULL ,
    descriptif TEXT NOT NULL ,
    date_debut DATE ,
    date_fin DATE
)

