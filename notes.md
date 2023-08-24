# Notes and Guidelines we followed:

## Database Characteristics
* Database used: **SQLITE** (though any other could be used)

### Tables
* [Individual](#individual)
* [Gender](#gender)
* [Sex](#sex)
* [Gotra](#gotra)
* [Parenthood](#parenthood)
* [Relationship](#relationship)
* [Relationship_type](#relationship_type)
* [Family](#family)
* [Family_type](#family_type)

#### Individual
Stores the individual persons.
Each person has the following attributes:

| Column Names (Attributes) | Type | Description |
|-----------|----------|---------|
| Id_PK | INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL | The primary key that identifies the person |
| Name_last | VARCHAR | Last name | 
| Name_first | VARCHAR | First name | 
| Name_middle | VARCHAR | Middle name | 
| Gender | CHAR(1) | Gender of the person. Gender could only be male or female or intersex, or transgender |
| Sex | VARCHAR | Sexual orientation of the person. But Sexual orientation could be: Heterosexual, Homosexual, Gay, Lesbian, Pansexual, Asexual, etc. | 
| Date_of_birth | DATE | The date of birth |
| Place_of_birth | VARCHAR | The place of birth |
| Date_of_death | DATE | Date of death |
| Place_of_death | VARCHAR |  Place of death | 
| Cause_of_death | VARCHAR | Cause of death | 
| Gotra | INTEGER | Gotra of that individual |
| Notes | TEXT | Notes about the individual, maybe about their life, or links to bio or anything |

##### Primary Keys:
- Id_PK
##### Foreign Keys:
- Gender
- Sex
- Gotra

#### Gender
Stores the list of available genders.
Each gender has the following attributes.

| Column Names (Attributes) | Type | Description |
|-----------|----------|---------|
| Id_PK | CHAR(1) PRIMARY KEY NOT NULL | The primary key that identifies a particular gender |
| Name | VARCHAR | Name of the gender |
| Note | TEXT | Additional info about the gender |

#### Sex
Stores the list of available sexual orientations.
Each gender has the following attributes.

| Column Names (Attributes) | Type | Description |
|-----------|----------|---------|
| Id_PK | INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL | The primary key that identifies a particular sexual orientation |
| Name | VARCHAR | Name of the sexual orientation |
| Note | TEXT | Additional info about the sexual orientation |

#### Gotra
Stores the list of available gotras.
Each gender has the following attributes.

| Column Names (Attributes) | Type | Description |
|-----------|----------|---------|
| Id_PK | INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL | The primary key that identifies a particular gotra |
| Name | VARCHAR | Name of the gotra |
| Note | TEXT | Additional info about the gotra |
#### Parenthood
Stores the information about a parenthood of a particular individual. It includes the both the parents, and

#### Parenthood_type
Stores the list of available parenthood types.
Each gender has the following attributes.

| Column Names (Attributes) | Type | Description |
|-----------|----------|---------|
| Id_PK | INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL | The primary key that identifies a particular parenthood types |
| Name | VARCHAR | Name of the parenthood types |
| Note | TEXT | Additional info about the parenthood types |

#### Relationship
#### Relationship_type
Stores the list of available relationship type.
Each gender has the following attributes.

| Column Names (Attributes) | Type | Description |
|-----------|----------|---------|
| Id_PK | INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL | The primary key that identifies a particular relationship type |
| Name | VARCHAR | Name of the relationship type |
| Note | TEXT | Additional info about the relationship type |
#### Family
#### Family_type
Stores the list of available family types.
Each gender has the following attributes.

| Column Names (Attributes) | Type | Description |
|-----------|----------|---------|
| Id_PK | INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL | The primary key that identifies a particular family types |
| Name | VARCHAR | Name of the family types |
| Note | TEXT | Additional info about the family types |