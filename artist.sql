INSERT INTO artist (artist_id, name)
VALUES ('Van Halen'), ('The Doors'), ('Fallout Boy');

SELECT name
FROM artist
GROUP BY name
ORDER BY name DESC
LIMIT 10;

SELECT name
FROM artist
GROUP BY name
ORDER BY name
LIMIT 5;

SELECT name 
FROM artist
WHERE name LIKE 'Black%';

SELECT name 
FROM artist
WHERE name LIKE '%Black%';