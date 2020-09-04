USE codeup_test_db;

SELECT 'Albums released after 1991' AS 'Info';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'Disco Albums' AS 'Info';
DELETE FROM albums WHERE genre = 'Disco';

SELECT 'Albums by Whitney Houston' AS 'INFO';
DELETE FROM albums WHERE artist = 'Whitney Houston';
