-- Select movies released after 2010
SELECT *
FROM movies
WHERE release_year > 2010;

-- Select all movies directed by Quentin Tarantino
SELECT *
FROM movies
WHERE director_id = '2b3c4d5e-6f7a-8b9c-0d1e-2f3a4b5c6d7e';
