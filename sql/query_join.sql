-- Select movies along with their director's names
SELECT m.movie_title, d.first_name, d.last_name
FROM movies m
INNER JOIN directors d ON m.director_id = d.director_id;

-- Select directors and their movies (if any)
SELECT d.first_name, d.last_name, m.movie_title
FROM directors d
LEFT JOIN movies m ON d.director_id = m.director_id;
