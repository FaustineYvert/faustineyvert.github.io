CREATE TABLE PRODUIT(
   Id_PRODUIT COUNTER,
   type_PRODUIT VARCHAR(50),
   genre_PRODUIT VARCHAR(1),
   prix_PRODUIT CURRENCY,
   char_PRODUIT VARCHAR(1),
   PRIMARY KEY(Id_PRODUIT)
);

CREATE TABLE VETEMENT(
   taille_VETEMENT VARCHAR(3),
   Id_PRODUIT INT NOT NULL,
   PRIMARY KEY(taille_VETEMENT),
   UNIQUE(Id_PRODUIT),
   FOREIGN KEY(Id_PRODUIT) REFERENCES PRODUIT(Id_PRODUIT)
);

CREATE TABLE CHAUSSURE(
   pointure_CHAUSSURE INT,
   Id_PRODUIT INT NOT NULL,
   PRIMARY KEY(pointure_CHAUSSURE),
   UNIQUE(Id_PRODUIT),
   FOREIGN KEY(Id_PRODUIT) REFERENCES PRODUIT(Id_PRODUIT)
);

CREATE TABLE CLIENT(
   Id_CLIENT COUNTER,
   prenom_CLIENT VARCHAR(20),
   nom_CLIENT VARCHAR(20),
   date_de_naissance_CLIENT DATE,
   adresse_CLIENT VARCHAR(50),
   code_postal_CLIENT VARCHAR(10),
   ville_CLIENT VARCHAR(20),
   telephone_CLIENT VARCHAR(15),
   mail_CLIENT VARCHAR(40),
   PRIMARY KEY(Id_CLIENT)
);

CREATE TABLE COMMANDE(
   Id_COMMANDE COUNTER,
   total_COMMANDE CURRENCY,
   Id_CLIENT INT NOT NULL,
   PRIMARY KEY(Id_COMMANDE),
   FOREIGN KEY(Id_CLIENT) REFERENCES CLIENT(Id_CLIENT)
);

CREATE TABLE COMPOSER(
   Id_PRODUIT INT,
   Id_COMMANDE INT,
   quantité INT,
   PRIMARY KEY(Id_PRODUIT, Id_COMMANDE),
   FOREIGN KEY(Id_PRODUIT) REFERENCES PRODUIT(Id_PRODUIT),
   FOREIGN KEY(Id_COMMANDE) REFERENCES COMMANDE(Id_COMMANDE)
);

CREATE TABLE AIMER(
   Id_PRODUIT INT,
   Id_CLIENT INT,
   PRIMARY KEY(Id_PRODUIT, Id_CLIENT),
   FOREIGN KEY(Id_PRODUIT) REFERENCES PRODUIT(Id_PRODUIT),
   FOREIGN KEY(Id_CLIENT) REFERENCES CLIENT(Id_CLIENT)
);