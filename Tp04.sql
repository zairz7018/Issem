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

INSERT INTO un_film (id , titre , description , annee , genre ) VALUES (
    01 , "Extraction" , 
    "un film d'action américain réalisé par Sam Hargrave et sorti en 2020 sur Netflix. Il s’agit de l’adaptation du comic book intitulé Ciudad d’Ande Parks, Joe Russo, Anthony Russo, Fernando Leon Gonzalez et Eric Skillman1 " , 
    "2020-01-01", "Action"
);

INSERT INTO artiste (id , nom , prenom , date_naissance , email , telephone , adresse , cin , genre )
VALUES (1 , "Rake" , "Tayler" , "04/04/1997" , "tayler_W9@mail.com" , "076854309" , "el kodia, el Jadida" , "EE34241" , "Action" )

INSERT INTO un_film (titre, description, annee, genre)
VALUES
    ('Film 1', 'Description du Film 1', '2022-01-15', 'Action'),
    ('Film 2', 'Description du Film 2', '2019-08-20', 'Comédie'),
    ('Film 3', 'Description du Film 3', '2020-05-10', 'Drame');


INSERT INTO Artiste (nom, prenom, date_naissance, email, telephone, adresse, cin, genre)
VALUES
    ('Doe', 'John', '1990-03-25', 'john.doe@email.com', '1234567890', '123 Rue de la Rue', 'AB123456', 'Masculin'),
    ('Smith', 'Alice', '1985-07-12', 'alice.smith@email.com', '9876543210', '456 Avenue de l\'Avenue', 'CD789012', 'Féminin'),
    ('Johnson', 'Robert', '1978-12-05', 'robert.johnson@email.com', '5555555555', '789 Boulevard du Boulevard', 'EF345678', 'Masculin');
