-- Select movies released after 2010
SELECT *
FROM movies
WHERE release_year > 2010;

-- Select all movies directed by Quentin Tarantino
SELECT *
FROM movies
WHERE director_id = '3b4c5d6e-7f8a-9b0c-1d2e-3f4a5b6c7d8';