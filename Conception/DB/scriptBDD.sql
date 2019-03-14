#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Recettes
#------------------------------------------------------------

CREATE TABLE Recettes(
        id               Int  Auto_increment  NOT NULL ,
        nom              Varchar (100) NOT NULL ,
        tempsPreparation Varchar (20) NOT NULL ,
        tempsCuisson     Int NOT NULL
	,CONSTRAINT Recettes_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Utilisateurs
#------------------------------------------------------------

CREATE TABLE Utilisateurs(
        id     Int  Auto_increment  NOT NULL ,
        nom    Varchar (50) NOT NULL ,
        prenom Varchar (50) NOT NULL ,
        mail   Varchar (100) NOT NULL ,
        mdp    Varchar (50) NOT NULL ,
        pseudo Varchar (100) NOT NULL
	,CONSTRAINT Utilisateurs_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Adresse
#------------------------------------------------------------

CREATE TABLE Adresse(
        id              Int  Auto_increment  NOT NULL ,
        numeroRue       Varchar (10) NOT NULL ,
        nomRue          Varchar (100) NOT NULL ,
        codePostal      TinyINT NOT NULL ,
        ville           Varchar (30) NOT NULL ,
        pays            Varchar (30) NOT NULL ,
        id_Utilisateurs Int NOT NULL
	,CONSTRAINT Adresse_PK PRIMARY KEY (id)

	,CONSTRAINT Adresse_Utilisateurs_FK FOREIGN KEY (id_Utilisateurs) REFERENCES Utilisateurs(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Factures
#------------------------------------------------------------

CREATE TABLE Factures(
        id             Int  Auto_increment  NOT NULL ,
        nomClient      Varchar (100) NOT NULL ,
        id_ingredients Int NOT NULL ,
        date_creation  TimeStamp NOT NULL ,
        date_paiement  Date NOT NULL ,
        id_Adresse     Int NOT NULL
	,CONSTRAINT Factures_PK PRIMARY KEY (id)

	,CONSTRAINT Factures_Adresse_FK FOREIGN KEY (id_Adresse) REFERENCES Adresse(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: uniteMesure
#------------------------------------------------------------

CREATE TABLE uniteMesure(
        id  Int  Auto_increment  NOT NULL ,
        nom Varchar (100) NOT NULL
	,CONSTRAINT uniteMesure_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: categorie
#------------------------------------------------------------

CREATE TABLE categorie(
        id            Int NOT NULL ,
        nom_categorie Varchar (50) NOT NULL
	,CONSTRAINT categorie_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Ingredients
#------------------------------------------------------------

CREATE TABLE Ingredients(
        id             Int  Auto_increment  NOT NULL ,
        nom            Varchar (50) NOT NULL ,
        prix           DECIMAL (15,3)  NOT NULL ,
        id_uniteMesure Int NOT NULL ,
        id_categorie   Int NOT NULL
	,CONSTRAINT Ingredients_PK PRIMARY KEY (id)

	,CONSTRAINT Ingredients_uniteMesure_FK FOREIGN KEY (id_uniteMesure) REFERENCES uniteMesure(id)
	,CONSTRAINT Ingredients_categorie0_FK FOREIGN KEY (id_categorie) REFERENCES categorie(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relationRI
#------------------------------------------------------------

CREATE TABLE relationRI(
        id                   Int NOT NULL ,
        id_Recettes          Int NOT NULL ,
        quantite_ingredients Int NOT NULL
	,CONSTRAINT relationRI_PK PRIMARY KEY (id,id_Recettes)

	,CONSTRAINT relationRI_Ingredients_FK FOREIGN KEY (id) REFERENCES Ingredients(id)
	,CONSTRAINT relationRI_Recettes0_FK FOREIGN KEY (id_Recettes) REFERENCES Recettes(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relationIF
#------------------------------------------------------------

CREATE TABLE relationIF(
        id                  Int NOT NULL ,
        id_Ingredients      Int NOT NULL ,
        quantite_ingredient Int NOT NULL
	,CONSTRAINT relationIF_PK PRIMARY KEY (id,id_Ingredients)

	,CONSTRAINT relationIF_Factures_FK FOREIGN KEY (id) REFERENCES Factures(id)
	,CONSTRAINT relationIF_Ingredients0_FK FOREIGN KEY (id_Ingredients) REFERENCES Ingredients(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relation7
#------------------------------------------------------------

CREATE TABLE relation7(
        id          Int NOT NULL ,
        id_Recettes Int NOT NULL
	,CONSTRAINT relation7_PK PRIMARY KEY (id,id_Recettes)

	,CONSTRAINT relation7_categorie_FK FOREIGN KEY (id) REFERENCES categorie(id)
	,CONSTRAINT relation7_Recettes0_FK FOREIGN KEY (id_Recettes) REFERENCES Recettes(id)
)ENGINE=InnoDB;

