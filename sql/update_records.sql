-- Update the release year of a movie
UPDATE movies
SET release_year = 1995
WHERE movie_id = '13';

-- Update the last name of a director
UPDATE directors
SET last_name = 'Lucas'
WHERE director_id = '6f7a8b9c-0d1e-2f3a-4b5c6d7e8f9';
