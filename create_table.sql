CREATE TABLE IF NOT EXISTS Individual (
    -- Primary Key
    Id_PK INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    
    -- Name
    Name_last VARCHAR(255),
    Name_first VARCHAR(255),
    Name_middle VARCHAR(255),
    
    -- Sex and Gender and Orinetation
    Sex char(1),
    Gender INTEGER,
    Orientation INTEGER,
    
    -- Birth and death
    Date_of_birth DATE,
    Place_of_birth VARCHAR(255),
    Date_of_death DATE,
    Place_of_death VARCHAR(255),
    Cause_of_death VARCHAR(255),
    
    -- Gotra and additional information
    Gotra INTEGER,
    Note TEXT,

    -- Foreign Keys
    FOREIGN KEY (Gender) REFERENCES Gender(Id_PK),
    FOREIGN KEY (Sex) REFERENCES Sex(Id_PK),
    FOREIGN KEY (Gotra) REFERENCES Gotra(Id_PK)
);

CREATE TABLE IF NOT EXISTS Gender (
    -- Primary Key
    Id_PK CHAR(1) PRIMARY KEY NOT NULL ,
    -- Name
    Name VARCHAR(255),
    -- Notes and additional info
    Note TEXT
);

INSERT IGNORE INTO Gender (Id_PK, Name)
    VALUES  ('M', 'Male'),
            ('F', 'Female'),
            ('N', 'Not mentioned here')

CREATE TABLE IF NOT EXISTS sex (
    Sex_PK CHAR(1) PRIMARY KEY,
    S_Name VARCHAR(10)
);

INSERT IGNORE INTO sex (Sex_PK, S_Name)
    VALUES  ('M', 'Male'),
            ('F', 'Female'),
            ('N', 'Non-defined-here');



