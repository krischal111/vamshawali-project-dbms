
CREATE TABLE IF NOT EXISTS Individual (
    -- Primary Key
    Id_PK INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    
    -- Name
    Name_last VARCHAR(255),
    Name_first VARCHAR(255),
    Name_middle VARCHAR(255),
    
    -- Sex and Gender and Orinetation
    Sex char(2),
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
    FOREIGN KEY (Sex) REFERENCES Sex(Id_PK),
    FOREIGN KEY (Gender) REFERENCES Gender(Id_PK),
    FOREIGN KEY (Orientation) REFERENCES Orientation(Id_PK),
    FOREIGN KEY (Gotra) REFERENCES Gotra(Id_PK)
);

CREATE TABLE IF NOT EXISTS Sex (
    -- Primary Key
    Id_PK CHAR(2) PRIMARY KEY NOT NULL ,
    -- Name
    Name VARCHAR(255),
    -- Notes and additional info
    Note TEXT
);

INSERT OR IGNORE INTO Sex (Id_PK, Name)
    VALUES  ('M', "Male"),
            ('F', "Female"),
            ('I', "Intersex");

CREATE TABLE IF NOT EXISTS Gender (
    -- Primary Key
    Id_PK INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
    -- Name
    Name VARCHAR(255),
    -- Notes and additional info
    Note TEXT
);

INSERT OR IGNORE INTO Gender (Name, Note)
    VALUES  ('Cisgender', 'A person that identifies as same gender as sex assigned at birth'),
            ('Transgender', 'A person that whose gender identity differs from sex assigned at birth'),
            ('Non-binary', 'A person that does not identify as male or female'),
            ('Genderfluid', 'Their gender identity shifts over time, some days feeling masculine and other days feminine');

CREATE TABLE IF NOT EXISTS Orientation (
    -- Primary Key
    Id_PK INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
    -- Name
    Name VARCHAR(255),
    -- Notes and additional info
    Note TEXT
);

INSERT OR IGNORE INTO Orientation (Name, Note)
    VALUES  ('Heterosexual', "Straight, or the individual that are attracted to opposite genders"),
            ('Homosexual', "Gay, Lesbian, or the individual that are attracted to the same genders"),
            ('Bisexual', "Attracted to both own gender and opposite gender");


            



