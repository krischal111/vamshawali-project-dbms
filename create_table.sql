
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
    Name VARCHAR(255) UNIQUE,
    -- Notes and additional info
    Note TEXT
);

INSERT OR IGNORE INTO Gender (Name, Note)
    VALUES  ('Cisgender', 'A person that identifies as same gender as sex assigned at birth'),
            ('Transgender', 'A person that whose gender identity differs from sex assigned at birth'),
            ('Non-binary', 'A person that does not identify as male or female'),
            ('Genderfluid', 'Their gender identity shifts over time, some days feeling masculine and other days feminine'),
            ('Pangender','A person who has wide range of gender identities, and may feel connected to different genders as their identity'),
            ('Demigender','A person who identifies partially as a particular gender'),
            ('Agender','A person who do not identify with any gender. They may feel lack of gender or maybe a neutral gender identity');

CREATE TABLE IF NOT EXISTS Orientation (
    -- Primary Key
    Id_PK INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
    -- Name
    Name VARCHAR(255) UNIQUE,
    -- Notes and additional info
    Note TEXT
);

INSERT OR IGNORE INTO Orientation (Name, Note)
    VALUES  ('Heterosexual', "Straight, or the individual that are attracted to opposite genders"),
            ('Homosexual', "Gay, Lesbian, or the individual that are attracted to the same genders"),
            ('Bisexual', "Attracted to both own gender and opposite gender"),
            ('Pansexual','Attracted to anyone regardless of their gender. May be attracted based on personality or emotional connection'),
            ('Asexual','Not attracted to any gender'),
            ('Questioning','People that are not sure about their sexual orientation and still exploring');

CREATE TABLE IF NOT EXISTS Gotra (
    -- Primary Key
    Id_PK INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
    -- Name
    Name VARCHAR(255) UNIQUE,
    -- Notes and additional info
    Note TEXT
);

INSERT OR IGNORE INTO Gotra (Name, Note)
    VALUES  ('Kaashyap', 'Gotra descending from Kashyap Rishi'),
            ('Ghritakaushik', 'Gotra descending from Ghritokoshik Rishi'),
            ('Bharadwaj','Gotra descending from Bhardwaj rishi'),
            ('Atreya','Gotra descending from Atri rishi'),
            ('Kaudinya','Some gotra');

CREATE TABLE IF NOT EXISTS Parenthood (
    -- Primary Key
    Id_PK INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,

    --- People involved
    Individual INTEGER,
    Parent INTEGER,
    Parenthood_type INTEGER,

    -- Notes and additional info
    Note TEXT,

    -- Foreign keys
    FOREIGN KEY (Individual) REFERENCES Individual(Id_PK),
    FOREIGN KEY (Parent) REFERENCES Individual(Id_PK),
    FOREIGN KEY (Parenthood_type) REFERENCES Parenthood_type(Id_PK)
);

CREATE TABLE IF NOT EXISTS Parenthood_type (
    -- Primary Key
    Id_PK INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,

    -- Role and Type
    Role VARCHAR(255),
    Type VARCHAR(255),

    -- Notes and additional info
    Note TEXT
);

CREATE UNIQUE INDEX IF NOT EXISTS uq_parenthood_type
ON Parenthood_type(Role, Type);

INSERT OR IGNORE INTO Parenthood_type (Role, Type, Note)
    VALUES  ('Father', 'Biological', 'Biological father.'),
            ('Mother', 'Biological', 'Biological mother'),
            ('Father', 'Adoptive', 'Adoptive father (Has same legal responsibilites and decisision making rights as biological parents)'),
            ('Mother', 'Adoptive','Adoptive mother (Has same legal responsibilites and decisision making rights as biological parents)'),
            ('Father', 'Foster', 'Foster father (Temporarily serving as a father, so does not have same legal responsibilites or decision making rights)'),
            ('Mother', 'Foster', 'Foster mother (Temporarily serving as a mother, so does not have same legal responsibilites or decision making rights)');

CREATE TABLE IF NOT EXISTS Relationship (
    -- Primary Key
    Id_PK INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,

    -- People involved
    Individual_1 INTEGER,
    Individual_2 INTEGER,

    -- Type and duration
    Relationship_type INTEGER,
    START DATE,
    END DATE,

    -- Notes and additional info
    Note TEXT,

    -- Foreign keys
    FOREIGN KEY (Individual_1) REFERENCES Individual(Id_PK),
    FOREIGN KEY (Individual_2) REFERENCES Individual(Id_PK),
    FOREIGN KEY (Relationship_type) REFERENCES Relationship_type(Id_PK)
);

CREATE TABLE IF NOT EXISTS Relationship_type (
    -- Primary Key
    Id_PK INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
    -- Name
    Name VARCHAR(255) UNIQUE,
    -- Notes and additional info
    Note TEXT
);

INSERT OR IGNORE INTO Relationship_type (Name, Note)
    VALUES  ('Marriage', 'Legal form of marriage between two people'),
            ('Living in relationship', 'Two people living in relationship without marrying each other.'),
            ('Dating', 'Two people currently dating'),
            ('Commited relationship', 'Two people in a committed relationship');

CREATE TABLE IF NOT EXISTS Family (
    -- Primary Key
    Id_PK INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,

    -- Head members
    Head_1 INTEGER,
    Head_2 INTEGER,

    -- Family core attributes
    Name VARCHAR(255),
    Family_type INTEGER,
    Gotra INTEGER,
    Description VARCHAR(255),

    -- Duration
    Start DATE,
    End DATE,

    -- Notes and additional info
    Note TEXT,

    -- Foreign keys
    FOREIGN KEY (Head_1) REFERENCES Individual(Id_PK),
    FOREIGN KEY (Head_2) REFERENCES Individual(Id_PK),
    FOREIGN KEY (Family_type) REFERENCES Family_type(Id_PK),
    FOREIGN KEY (Gotra) REFERENCES Gotra(Id_PK)
);

CREATE TABLE IF NOT EXISTS Family_type (
    -- Primary Key
    Id_PK INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
    -- Name
    Name VARCHAR(255) UNIQUE,
    -- Notes and additional info
    Note TEXT
);

INSERT OR IGNORE INTO Family_type (Name, Note)
    VALUES  ('Joint Family', "A large family consisting of few generations, and couples from them living together, sharing a common kitchen and roof"),
            ('Nuclear Family', "A small family consisting only parents and children, and maybe one or two related members living together, sharing a common kitchen and roof");
            



