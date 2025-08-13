CREATE TABLE users(
id SERIAL PRIMARY KEY,
name VARCHAR(15) UNIQUE NOT NULL,
color VARCHAR(15)
);

CREATE TABLE visited_countries(
id SERIAL PRIMARY KEY,
country_code CHAR(2) NOT NULL,
user_id INTEGER REFERENCES users(id)
);

INSERT INTO users (name, color)
VALUES ('tejas', 'teal'), ('krish', 'powderblue');

INSERT INTO visited_countries (country_code, user_id)
VALUES ('IN', 1), ('AU', 1), ('AZ', 2), ('BR', 2 );

CREATE TABLE countries(
id SERIAL PRIMARY KEY,
country_code CHAR(2),
country_name VARCHAR(50)
);

SELECT * from countries;
SELECT * from users;
SELECT * FROM visited_countries;

SELECT *
FROM visited_countries
JOIN users
ON users.id = user_id;

DELETE FROM visited_countries
WHERE user_id=3;

Delete from users
WHERE name='tejas';

DELETE FROM visited_countries
WHERE country_code='FR';

DELETE FROM visited_countries
WHERE country_code='GB';

TRUNCATE TABLE visited_countries;
TRUNCATE TABLE users;