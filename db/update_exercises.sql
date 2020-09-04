USE codeup_test_db;



SELECT 'All albums' AS 'Info';
SELECT * FROM albums;
UPDATE albums
SET sales = (sales * 10);
SELECT * FROM albums;

SELECT 'All released prior to 1980' AS 'Info';
SELECT name FROM albums WHERE release_date < 1980;
UPDATE albums
SET release_date = (release_date - 100) WHERE release_date < 1980;
SELECT name FROM albums WHERE release_date < 1980;


SELECT 'All albums by Michael Jackson' AS 'Info';
SELECT name FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET name = 'Peter Jackson' where artist = 'Michael Jackson';
SELECT name FROM albums WHERE artist = 'Peter Jackson';

/*
Change 'Michael Jackson' to 'Peter Jackson'
Add SELECT statements after each UPDATE so you can see the results of your handiwork.
 */