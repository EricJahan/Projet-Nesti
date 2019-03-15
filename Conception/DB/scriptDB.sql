#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: recettes
#------------------------------------------------------------

CREATE TABLE recettes(
        id               Int  Auto_increment  NOT NULL ,
        nom              Varchar (100) NOT NULL ,
        tempsPreparation Varchar (20) NOT NULL ,
        tempsCuisson     Int NOT NULL
	,CONSTRAINT recettes_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: utilisateurs
#------------------------------------------------------------

CREATE TABLE utilisateurs(
        id     Int  Auto_increment  NOT NULL ,
        nom    Varchar (50) NOT NULL ,
        prenom Varchar (50) NOT NULL ,
        mail   Varchar (100) NOT NULL ,
        mdp    Varchar (50) NOT NULL ,
        pseudo Varchar (100) NOT NULL
	,CONSTRAINT utilisateurs_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: adresses
#------------------------------------------------------------

CREATE TABLE adresses(
        id              Int  Auto_increment  NOT NULL ,
        numeroRue       Varchar (10) NOT NULL ,
        nomRue          Varchar (100) NOT NULL ,
        codePostal      TinyINT NOT NULL ,
        ville           Varchar (30) NOT NULL ,
        pays            Varchar (30) NOT NULL ,
        id_utilisateurs Int NOT NULL
	,CONSTRAINT adresses_PK PRIMARY KEY (id)

	,CONSTRAINT adresses_utilisateurs_FK FOREIGN KEY (id_utilisateurs) REFERENCES utilisateurs(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: factures
#------------------------------------------------------------

CREATE TABLE factures(
        id             Int  Auto_increment  NOT NULL ,
        nomClient      Varchar (100) NOT NULL ,
        id_ingredients Int NOT NULL ,
        date_creation  TimeStamp NOT NULL ,
        date_paiement  Date NOT NULL ,
        id_adresses    Int NOT NULL
	,CONSTRAINT factures_PK PRIMARY KEY (id)

	,CONSTRAINT factures_adresses_FK FOREIGN KEY (id_adresses) REFERENCES adresses(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: unite_mesures
#------------------------------------------------------------

CREATE TABLE unite_mesures(
        id  Int  Auto_increment  NOT NULL ,
        nom Varchar (100) NOT NULL
	,CONSTRAINT unite_mesures_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: categories
#------------------------------------------------------------

CREATE TABLE categories(
        id            Int NOT NULL ,
        nom_categorie Varchar (50) NOT NULL
	,CONSTRAINT categories_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: ingredients
#------------------------------------------------------------

CREATE TABLE ingredients(
        id               Int  Auto_increment  NOT NULL ,
        nom              Varchar (50) NOT NULL ,
        prix             DECIMAL (15,3)  NOT NULL ,
        id_unite_mesures Int NOT NULL ,
        id_categories    Int NOT NULL
	,CONSTRAINT ingredients_PK PRIMARY KEY (id)

	,CONSTRAINT ingredients_unite_mesures_FK FOREIGN KEY (id_unite_mesures) REFERENCES unite_mesures(id)
	,CONSTRAINT ingredients_categories0_FK FOREIGN KEY (id_categories) REFERENCES categories(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relationRI
#------------------------------------------------------------

CREATE TABLE relationRI(
        id                   Int NOT NULL ,
        id_recettes          Int NOT NULL ,
        quantite_ingredients Int NOT NULL
	,CONSTRAINT relationRI_PK PRIMARY KEY (id,id_recettes)

	,CONSTRAINT relationRI_ingredients_FK FOREIGN KEY (id) REFERENCES ingredients(id)
	,CONSTRAINT relationRI_recettes0_FK FOREIGN KEY (id_recettes) REFERENCES recettes(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relationIF
#------------------------------------------------------------

CREATE TABLE relationIF(
        id                  Int NOT NULL ,
        id_ingredients      Int NOT NULL ,
        quantite_ingredient Int NOT NULL
	,CONSTRAINT relationIF_PK PRIMARY KEY (id,id_ingredients)

	,CONSTRAINT relationIF_factures_FK FOREIGN KEY (id) REFERENCES factures(id)
	,CONSTRAINT relationIF_ingredients0_FK FOREIGN KEY (id_ingredients) REFERENCES ingredients(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relationRC
#------------------------------------------------------------

CREATE TABLE relationRC(
        id          Int NOT NULL ,
        id_recettes Int NOT NULL
	,CONSTRAINT relationRC_PK PRIMARY KEY (id,id_recettes)

	,CONSTRAINT relationRC_categories_FK FOREIGN KEY (id) REFERENCES categories(id)
	,CONSTRAINT relationRC_recettes0_FK FOREIGN KEY (id_recettes) REFERENCES recettes(id)
)ENGINE=InnoDB;

