/*Create a new table called person with columns: id,
person_name,birth_date, and phone*/

CREATE TABLE person (
id INT NOT NULL,
person_name VARCHAR (30) NOT NULL,
birth_date DATE,
phone VARCHAR (15) NOT NULL,
CONSTRAINT pk_person PRIMARY KEY (id)
);

-- Add a new column called email to the person table

ALTER TABLE person
ADD email VARCHAR (30) NOT NULL;

--Remove the column phone from the person table

ALTER TABLE person
DROP COLUMN phone ;

-- Delete the table person fron the database 

DROP TABLE person