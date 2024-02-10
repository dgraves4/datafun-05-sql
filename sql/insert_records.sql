-- Insert records into the directors table
INSERT INTO directors (director_id, first_name, last_name, year_born)
VALUES
    ('1a2b3c4d-5e6f-7a8b-9c0d-1e2f3a4b5c6d', 'Christopher', 'Nolan', 1970),
    ('2b3c4d5e-6f7a-8b9c-0d1e-2f3a4b5c6d7e', 'Quentin', 'Tarantino', 1963),
    ('3c4d5e6f-7a8b-9c0d-1e2f-3a4b5c6d7e8f', 'Steven', 'Spielberg', 1946),
    ('4d5e6f7a-8b9c-0d1e-2f3a-4b5c6d7e8f9a', 'Ridley', 'Scott', 1937),
    ('5e6f7a8b-9c0d-1e2f-3a4b-5c6d7e8f9a0b', 'James', 'Cameron', 1954);

-- Insert records into the movies table
INSERT INTO movies (movie_id, movie_title, director_id, release_year, genre)
VALUES
    (1, 'Inception', '1a2b3c4d-5e6f-7a8b-9c0d-1e2f3a4b5c6d', 2010, 'Science Fiction'),
    (2, 'Pulp Fiction', '2b3c4d5e-6f7a-8b9c-0d1e-2f3a4b5c6d7e', 1994, 'Crime'),
    (3, 'Jaws', '3c4d5e6f-7a8b-9c0d-1e2f-3a4b5c6d7e8f', 1975, 'Horror'),
    (4, 'The Martian', '4d5e6f7a-8b9c-0d1e-2f3a-4b5c6d7e8f9a', 2015, 'Science Fiction'),
    (5, 'Alien', '4d5e6f7a-8b9c-0d1e-2f3a-4b5c6d7e8f9a', 1979, 'Science Fiction'),
    (6, 'Avatar', '5e6f7a8b-9c0d-1e2f-3a4b-5c6d7e8f9a0b', 2009, 'Science Fiction'),
    (7, 'Saving Private Ryan', '3c4d5e6f-7a8b-9c0d-1e2f-3a4b5c6d7e8f', 1998, 'War'),
    (8, 'Jurassic Park', '3c4d5e6f-7a8b-9c0d-1e2f-3a4b5c6d7e8f', 1993, 'Science Fiction'),
    (9, 'Blade Runner', '4d5e6f7a-8b9c-0d1e-2f3a-4b5c6d7e8f9a', 1982, 'Science Fiction'),
    (10, 'The Terminator', '5e6f7a8b-9c0d-1e2f-3a4b-5c6d7e8f9a0b', 1984, 'Science Fiction');
