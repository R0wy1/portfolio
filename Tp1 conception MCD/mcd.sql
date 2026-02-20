-- ----------------------------------------------------------
-- Script MYSQL pour mcd 
-- ----------------------------------------------------------


-- ----------------------------
-- Table: Soins
-- ----------------------------
CREATE TABLE Soins (
  code_soin VARCHAR(50) NOT NULL,
  type_soin VARCHAR(50) NOT NULL,
  CONSTRAINT Soins_PK PRIMARY KEY (code_soin)
)ENGINE=InnoDB;


-- ----------------------------
-- Table: Ordres
-- ----------------------------
CREATE TABLE Ordres (
  code_ordre VARCHAR(50) NOT NULL,
  nom_ordre VARCHAR(50) NOT NULL,
  CONSTRAINT Ordres_PK PRIMARY KEY (code_ordre)
)ENGINE=InnoDB;


-- ----------------------------
-- Table: Pieces
-- ----------------------------
CREATE TABLE Pieces (
  code_piece VARCHAR(50) NOT NULL,
  numero_piece VARCHAR(50) NOT NULL,
  CONSTRAINT Pieces_PK PRIMARY KEY (code_piece)
)ENGINE=InnoDB;


-- ----------------------------
-- Table: Bassins
-- ----------------------------
CREATE TABLE Bassins (
  code_bassin VARCHAR(50) NOT NULL,
  numero_bassin VARCHAR(50) NOT NULL,
  code_piece VARCHAR(50) NOT NULL,
  CONSTRAINT Bassins_PK PRIMARY KEY (code_bassin),
  CONSTRAINT Bassins_code_piece_FK FOREIGN KEY (code_piece) REFERENCES Pieces (code_piece)
)ENGINE=InnoDB;


-- ----------------------------
-- Table: Familles
-- ----------------------------
CREATE TABLE Familles (
  code_famille VARCHAR(50) NOT NULL,
  nom_famille VARCHAR(50) NOT NULL,
  code_ordre VARCHAR(50) NOT NULL,
  CONSTRAINT Familles_PK PRIMARY KEY (code_famille),
  CONSTRAINT Familles_code_ordre_FK FOREIGN KEY (code_ordre) REFERENCES Ordres (code_ordre)
)ENGINE=InnoDB;


-- ----------------------------
-- Table: Genres
-- ----------------------------
CREATE TABLE Genres (
  code_genre VARCHAR(50) NOT NULL,
  nom_genre VARCHAR(50) NOT NULL,
  code_famille VARCHAR(50) NOT NULL,
  CONSTRAINT Genres_PK PRIMARY KEY (code_genre),
  CONSTRAINT Genres_code_famille_FK FOREIGN KEY (code_famille) REFERENCES Familles (code_famille)
)ENGINE=InnoDB;


-- ----------------------------
-- Table: Especes
-- ----------------------------
CREATE TABLE Especes (
  code_espece VARCHAR(50) NOT NULL,
  nom_espece VARCHAR(50) NOT NULL,
  code_genre VARCHAR(50) NOT NULL,
  CONSTRAINT Especes_PK PRIMARY KEY (code_espece),
  CONSTRAINT Especes_code_genre_FK FOREIGN KEY (code_genre) REFERENCES Genres (code_genre)
)ENGINE=InnoDB;


-- ----------------------------
-- Table: loge
-- ----------------------------
CREATE TABLE loge (
  code_bassin VARCHAR(50) NOT NULL,
  code_animal VARCHAR(50) NOT NULL,
  date_entree DATE NOT NULL,
  date_sortie DATE NOT NULL,
  CONSTRAINT loge_PK PRIMARY KEY (code_bassin, code_animal),
  CONSTRAINT loge_code_bassin_FK FOREIGN KEY (code_bassin) REFERENCES Bassins (code_bassin)
)ENGINE=InnoDB;


-- ----------------------------
-- Table: Animaux
-- ----------------------------
CREATE TABLE Animaux (

/******************************************************************************************************
*                                                                                                     *
*      -->    Désolé, il faut activer cette version pour voir la suite du script !                    *
*                                                                                                     *
*******************************************************************************************************/