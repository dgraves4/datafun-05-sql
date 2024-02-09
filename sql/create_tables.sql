-- Start by deleting any tables if the exist already
-- We want to be able to re-run this script as needed.
-- DROP tables in reverse order of creation 
-- DROP dependent tables (with foreign keys) first

DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS directors;

-- Create the movies table
-- Note that the movies table has a foreign key to the directors table
-- This means that the movies table is dependent on the directors table
-- Be sure to create the standalone directors table BEFORE creating the movies table.

CREATE TABLE movies (
    movie_id TEXT PRIMARY KEY,
    movie_title TEXT,
    director_id TEXT,
    release_year INTEGER,
    genre TEXT,
    FOREIGN KEY (director_id) REFERENCES directors(director_id)
);

-- Create the director table 
-- Note that the director table has no foreign keys, so it is a standalone table

CREATE TABLE directors (
    director_id TEXT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    year_born INTEGER
);