-- primary key
-- generally integer auto increment
-- names id

-- logical key
-- whatever the outside world uses for lookup

-- foreign key
-- points to a row in another table
-- <table>_id

-- //CREATE A DATABASE
CREATE DATABASE music WITH OWNER 'tayboonsiang' ENCODING 'UTF8';

CREATE TABLE artist (
    id SERIAL,
    name VARCHAR(128) UNIQUE,
    PRIMARY KEY(id)
)

CREATE TABLE album (
    id SERIAL,
    title VARCHAR(128) UNIQUE,
    artist_id INTEGER REFERENCES artist(id) ON DELETE CASCADE,
    PRIMARY KEY (id)
)

CREATE TABLE genre(
    id SERIAL, 
    name VARCHAR(128) UNIQUE,
    PRIMARY KEY(id)
)

CREATE TABLE track (
    id SERIAL,
    title VARCHAR(128),
    len INTEGER,
    rating INTEGER,
    count INTEGER, 
    album_id INTEGER REFERENCES album(id) ON DELETE CASCADE,
    genre_id INTEGER REFERENCES genre(id) ON DELETE CASCADE,
    UNIQUE(title, album_id)
    PRIMARY KEY(id)
)

\d track

INSERT INTO artist (name) VALUES ('Led Zeppelin')
INSERT INTO artist (name) VALUES ('AC/DC')

-- Inner Join
SELECT album.title, artist.name
FROM album JOIN artist
ON album.artist_id = artist.id;
-- Cross Join
SELECT track.title, track.genre_id, genre.id, genre.name
FROM track CROSS JOIN genre;

-- ON DELETE BEHAVIOUR
CASCADE
RESTRICT
SET NULL