# Notes and Guidelines we followed:

## Database Characteristics
* Database used: **SQLITE** (though any other could be used)

### Tables
* [Individual](#individual)
* [Gender](#gender)
* [Sex](#sex)
* [Gotra](#gotra)
* [Parenthood](#parenthood)
* [Parenthood\_type](#parenthood\_type)
* [Relationship](#relationship)
* [Relationship\_type](#relationship\_type)
* [Family](#family)
* [Family\_type](#family\_type)

#### Individual
Stores the individual persons.
Each person has the following attributes:

| Column Names (Attributes) | Type | Description |
|-----------|----------|---------|
| Id\_PK | INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL | The primary key that identifies the person |
| Name\_last | VARCHAR | Last name | 
| Name\_first | VARCHAR | First name | 
| Name\_middle | VARCHAR | Middle name | 
| Gender | CHAR(1) | Gender of the person. Gender could only be male or female or intersex, or transgender |
| Sex | VARCHAR | Sexual orientation of the person. But Sexual orientation could be: Heterosexual, Homosexual, Gay, Lesbian, Pansexual, Asexual, etc. |
| Date\_of\_birth | DATE | The date of birth |
| Place\_of\_birth | VARCHAR | The place of birth |
| Date\_of\_death | DATE | Date of death |
| Place\_of\_death | VARCHAR |  Place of death | 
| Cause\_of\_death | VARCHAR | Cause of death | 
| Gotra | INTEGER | Gotra of that individual |
| Notes | TEXT | Notes about the individual, maybe about their life, or links to bio or anything |

##### Primary Keys:
- Id\_PK

##### Foreign Keys:
- Gender (References Gender)
- Sex (References Sex)
- Gotra (References Gotra)

#### Gender
Stores the list of available genders.
Each gender has the following attributes.

| Column Names (Attributes) | Type | Description |
|-----------|----------|---------|
| Id\_PK | CHAR(1) PRIMARY KEY NOT NULL | The primary key that identifies a particular gender |
| Name | VARCHAR | Name of the gender |
| Note | TEXT | Additional info about the gender |

Gender datas:

| Id\_PK | Name |
|--------|------|
| M      | Male |
| F   | Female  |
| N | Not mentioned here |

##### Primary Keys:
- Id\_PK

##### Foreign Keys:
- (None)

#### Sex
Stores the list of available sexual orientations.
Each gender has the following attributes.

| Column Names (Attributes) | Type | Description |
|-----------|----------|---------|
| Id\_PK | INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL | The primary key that identifies a particular sexual orientation |
| Name | VARCHAR | Name of the sexual orientation |
| Note | TEXT | Additional info about the sexual orientation |

##### Primary Keys:
- Id\_PK

##### Foreign Keys:
- (None)

Sexual orientation datas:

| Name | Note |
|------|------|
| Heterosexual Male | Male that is attracted to female |
| Heterosexual Female | Female that is attracted to male |
| Homosexual Male | Gay |
| Homosexual Female | Lesbian |
| Bisexual | Attracted to male and female both |
| Pansexual | Attracted to anyone including other genders like trans |
| Asexual | Not attracted to any gender |

#### Gotra
Stores the list of available gotras.
Each gender has the following attributes.

| Column Names (Attributes) | Type | Description |
|-----------|----------|---------|
| Id\_PK | INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL | The primary key that identifies a particular gotra |
| Name | VARCHAR | Name of the gotra |
| Note | TEXT | Additional info about the gotra |

##### Primary Keys:
- Id\_PK

##### Foreign Keys:
- (None)

Gotra datas:

| Name | Note |
|------|------|
| Kaashyap | Gotra descending from Kashyap Rishi |
| Ghritakaushik | Gotra descending from Ghritakoshik Rishi |
| Bhardwaj | |


#### Parenthood
Stores the information about a parenthood of a particular individual. It includes the parent of the individual and the parenting type.

| Column Names (Attributes) | Type | Description |
|-----------|----------|---------|
| Id\_PK | INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL | The primary key that identifies a parenthood of the persion |
| Individual | INTEGER | The person whose parenthood is being described |
| Parent | INTEGER | The parent of the person |
| Parenthood\_type | INTEGER | The type of parenting received by that persion |
| Note | TEXT | Note and things about parenting information about the person |

##### Primary Keys:
- Id\_PK

##### Foreign Keys:
- Individual (References Individual)
- Parent (References Individual)
- Parenthood\_type (References Parenthood\_type)

#### Parenthood\_type
Stores the list of available parenthood types.
Each gender has the following attributes.

| Column Names (Attributes) | Type | Description |
|-----------|----------|---------|
| Id\_PK | INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL | The primary key that identifies a particular parenthood types |
| Role | VARCHAR | Role in parenting (like father or mother or guardian) |
| Type | VARCHAR | Type of parenthood (like biological, surrogate, foster etc) |
| Note | TEXT | Additional info about the parenting. |

Parenthood type datas:

| Role | Type | Note |
|------|------|------|
| Father | Biological | Biological father doing parenting as father |
| Mother | Biological | Biological mother doing parenting as mother |
| Father | Adoptive | Adoptive father (shares same parenting rights and legal responsibilities as biological.) |
| Mother | Adoptive | Same as adoptive father but mother |
| Mother | Foster | Foster Mother (temporarily serving as mother, however, doesn't posses same sort of decision making rights, or legal responsibilities as biological or adoptive mother |
| Father | Foster | Same as foster mother but father |

##### Primary Keys:
- Id\_PK

##### Foreign Keys:
- (None)

#### Relationship
| Column Names (Attributes) | Type | Description |
|-----------|----------|---------|
| Id\_PK | INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL | The primary key that identifies a particular gotra |
| Relationship\_type | INTEGER | Relationship type |
| Individual\_1 | INTEGER | First individual in relationship (Usually Male) |
| Individual\_2 | INTEGER | Second individual in relationship (Usually Female) |
| Start | DATE | Date of start of the relationship |
| End | DATE | Date of end of the relationship |
| Note | TEXT | Additional info about the relationship |

##### Primary Keys:
- Id\_PK

##### Foreign Keys:
- Relationship\_type (References Relationship_type)
- Individual\_1 (References Individual)
- Individual\_2 (References Individual)

#### Relationship\_type
Stores the list of available relationship type.
Each gender has the following attributes.

| Column Names (Attributes) | Type | Description |
|-----------|----------|---------|
| Id\_PK | INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL | The primary key that identifies a particular relationship type |
| Name | VARCHAR | Name of the relationship type |
| Note | TEXT | Additional info about the relationship type |

Relationship type datas:

| Name | Note |
|------|------|
| Marriage | Legal form of marriage between two people |
| Live\_in\_relationship | Two people living in relationship without marrying each other. |
| Dating | Two people currently dating |
| Committed\_relationship | Two people in a committed relationship |

##### Primary Keys:
- Id\_PK

##### Foreign Keys:
- (None)

#### Family

| Column Names (Attributes) | Type | Description |
|-----------|----------|---------|
| Id\_PK | INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL | The primary key that identifies a particular gotra |
| Head\_1 | INTEGER | First head of the family |
| Head\_2 | INTEGER | Second head of the family |
| Name | VARCHAR | Name of the family |
| Type | INTEGER | Type of the family |
| Description | VARCHAR | Description about the family |
| Start | DATE | Date when the family started |
| END | DATE | Date when the family ended |
| Gotra | INTEGER | Gotra that the family belongs to |
| Note | TEXT | More information about the family |

##### Primary Keys:
- Id\_PK

##### Foreign Keys:
- Head\_1 (References Individual)
- Head\_2 (References Individual)
- Family\_type (References Family\_type)
- Gotra (References Gotra)

#### Family\_type
Stores the list of available family types.
Each gender has the following attributes.

| Column Names (Attributes) | Type | Description |
|-----------|----------|---------|
| Id\_PK | INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL | The primary key that identifies a particular family types |
| Name | VARCHAR | Name of the family types |
| Note | TEXT | Additional info about the family types |

##### Primary Keys:
- Id\_PK

##### Foreign Keys:
- (None)
