
/*creating persons table*/
CREATE TABLE persons (id INTEGER PRIMARY KEY AUTO_INCREMENT, fullname TEXT, age INTEGER);
INSERT INTO persons (fullname, age) VALUES ("Bobby McBobbyFace", "12");
INSERT INTO persons (fullname, age) VALUES ("Lucy BoBucie", "25");
INSERT INTO persons (fullname, age) VALUES ("Banana FoFanna", "14");
INSERT INTO persons (fullname, age) VALUES ("Shish Kabob", "20");
INSERT INTO persons (fullname, age) VALUES ("Fluffy Sparkles", "8");

/*creating hobbies table*/
CREATE table hobbies (id INTEGER PRIMARY KEY AUTO_INCREMENT, person_id INTEGER, name TEXT);
INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");

/*creating friends table*/
CREATE table friends (id INTEGER PRIMARY KEY AUTO_INCREMENT, person1_id INTEGER,
person2_id INTEGER);
INSERT INTO friends (person1_id, person2_id)
VALUES (1, 4);
INSERT INTO friends (person1_id, person2_id)
VALUES (2, 3);



/*people names and hobbies*/
SELECT persons.fullname, hobbies.name 
from persons
LEFT JOIN hobbies
ON persons.id = hobbies.person_id;

/* Names of each pair of friends*/

Select persons.fullname AS person, p.fullname AS friend
FROM friends
JOIN persons 
ON friends.person1_id = persons.id 
JOIN persons AS p
ON friends.person2_id = p.id;

/*Michael Nyarko
Joycelyn 
sedinam
David
Derllene*/ 