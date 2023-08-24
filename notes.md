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
| Sex | CHAR(1) | Sex assignable to a person (Male Female or Intersex) |
| Gender | INTEGER | Gender of the person. Gender is what a person feels by themselves. (Many types) |
| Orientation | INTEGER | Sexual orientatation of the person. It means the attraction type a person feels. |
| Date\_of\_birth | DATE | The date of birth |
| Place\_of\_birth | VARCHAR | The place of birth |
| Date\_of\_death | DATE | Date of death |
| Place\_of\_death | VARCHAR |  Place of death | 
| Cause\_of\_death | VARCHAR | Cause of death | 
| Gotra | INTEGER | Gotra of that individual |
| Note | TEXT | Note about the individual, maybe about their life, or links to bio or anything |

##### Primary Keys:
- Id\_PK

##### Foreign Keys:
- Gender (References Gender)
- Sex (References Sex)
- Gotra (References Gotra)

#### Sex
Stores the list of available sex assignable to a person.
Each sex has the following attributes.
There are only 3 sexes assignable to person: Male, Female and Intersex.

| Column Names (Attributes) | Type | Description |
|-----------|----------|---------|
| Id\_PK | CHAR(1) PRIMARY KEY NOT NULL | The primary key that identifies a particular gender |
| Name | VARCHAR | Name of the gender |
| Note | TEXT | Additional info about the gender |

##### Primary Keys:
- Id\_PK

##### Foreign Keys:
- (None)

Sex datas:

| Id\_PK | Name |
|--------|------|
| M      | Male |
| F   | Female  |
| I  | Intersex |

#### Gender
Stores the list of available genders.
Gender relates to how a person feel about themselves.
Each gender entries has the following attributes.

| Column Names (Attributes) | Type | Description |
|-----------|----------|---------|
| Id\_PK | INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL | The primary key that identifies a particular gender |
| Name | VARCHAR | Name of the gender |
| Note | TEXT | Additional info about the gender |

##### Primary Keys:
- Id\_PK

##### Foreign Keys:
- (None)

Sexual orientation datas:

| Name | Note |
|------|------|
| Cisgender | A person that identifies as same gender as sex assigned at birth |
| Transgender | A person whose gender identity differs from sex assigned at birth |
| Non-binary | A person that do not identify as male or female. |
| Genderfluid | Their gender identity shifts over time, some days feeling as masculine and other days feeling feminine. |
| Pangender | A person who has wide range of gender identities, and may feel connected to different genders as their identity. |
| Demigender | A person who identifies partially as a particular gender. |
| Agender | A person who do not identify with any gender. They may feel lack of gender or maybe a neutral gender identity |

#### Orientation
Stores the list of available sexual orientations.
Each orientation entries has the following attributes.

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
| Heterosexual | Straight, or the individual that are attracted to opposite genders |
| Homosexual | Gay, Lesbian, or the individual that are attracted to the same genders |
| Bisexual | Attracted to both own gender and opposite gender |
| Pansexual | Attracted to anyone regardless of their gender. May be attracted based on personality or emotional connection |
| Asexual | Not attracted to any gender |
| Questioning | People that are not sure about their sexual orientation and still exploring |

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
