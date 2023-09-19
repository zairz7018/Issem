CREATE DATABASE exercice_app_db;

use exercice_app_db ;


CREATE TABLE client(
   idClient int PRIMARY KEY AUTO_INCREMENT,
   nom VARCHAR (45),
   prenom VARCHAR (45),
   dateNaissance DATE,
   adress VARCHAR (99),
   payOrigin VARCHAR (45),
   nationalite VARCHAR(45),
   CIN VARCHAR(20),
   numPasseport VARCHAR(30),
   email VARCHAR(70),
   numTel VARCHAR(30),
   idReservation int,
   Foreign Key (idReservation) REFERENCES reservation(idReservation)
);
CREATE Table reservation(
   idReservation int PRIMARY KEY AUTO_INCREMENT,
   duree int NOT NULL,
   datedebut DATE,
   dateFin DATE,
   tarifTotal int,
   numero int,
   Foreign Key (numero) REFERENCES chambre(numero) 
);
CREATE Table chambre(
   numero int PRIMARY KEY AUTO_INCREMENT,
   numEtage int,
   numTelephone int, 
   idCategorie int,
   Foreign Key (idCategorie) REFERENCES categorie(idCategorie)
);
CREATE TABLE categorie (
   idCategorie int PRIMARY KEY AUTO_INCREMENT,
   nom VARCHAR(40),
   description VARCHAR(255),
   prixNuite int
);
CREATE TABLE paiement(
   codeTransaction int PRIMARY KEY,
   datePaiement date,
   heurePaiement TIMESTAMP,
   numCarteBancaire int,
   nomBanque VARCHAR(50),
   idClient int,
   idReservation int,
   Foreign Key (idClient) REFERENCES client(idClient),
   Foreign Key (idReservation) REFERENCES reservation(idReservation)
);