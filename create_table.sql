CREATE TABLE IF NOT EXISTS Individual (
                Id_PK INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,

                Name_last VARCHAR(255),
                Name_first VARCHAR(255),
                Name_middle VARCHAR(255),
               
                Gender INTEGER,
                Sex char(1),

                Date_of_birth DATE,
                Place_of_birth VARCHAR,
                Date_of_death DATE,
                Place_of_death VARCHAR,
                Cause_of_death VARCHAR,

                Gotra INTEGER,

                FOREIGN KEY (Sex) REFERENCES Sex(Sex_PK),
                FOREIGN KEY (Father) REFERENCES person(Person_PK),
                FOREIGN KEY (Mother) REFERENCES person(Person_PK)
);

CREATE TABLE IF NOT EXISTS sex (
    Sex_PK char(1) PRIMARY KEY,
    S_Name varchar(10)
);

INSERT IGNORE INTO sex (Sex_PK, S_Name)
    VALUES  ('M', 'Male'),
            ('F', 'Female'),
            ('N', 'Non-defined-here');



