USE codeup_test_db;

 SELECT 'All albums by Pink Floyd' AS 'Info';
 SELECT name FROM albums WHERE artist = 'Pink Floyd';

 SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Info';
 SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

 SELECT 'The genre for Nirvana''s Nevermind' AS 'Info';
 SELECT genre FROM albums WHERE name = 'Nevermind';

 SELECT 'Albums released in the 1990s.' AS 'Info';
 SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

 SELECT 'Less than 20 million certified sales.' AS 'Info';
 SELECT name FROM albums WHERE sales < 20;

 SELECT 'All rock albums' AS 'Info';
 SELECT name FROM albums WHERE genre = 'Rock';