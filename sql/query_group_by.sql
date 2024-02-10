-- Count the number of movies for each genre
SELECT genre, COUNT(*) AS num_movies
FROM movies
GROUP BY genre;
