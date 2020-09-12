USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL,
    release_date INT UNSIGNED DEFAULT NULL,
    sales FLOAT,
    genre VARCHAR(255),
    PRIMARY KEY (id)
);

/*

Use INSERT to add records for all the albums from this list on Wikipedia that claim over 30 million sales (the first two tables). For sales data, use the 'sales certification' column of the tables, not 'claimed sales'. For artists listed with 'Various Artists', just use the primary artist's name.

First write your queries as separate INSERT statements for each record and test. You should see no output.
Refactor your script to use a single INSERT statement for all the records and test it again. Again, this should not generate any output.
Note that running the albums_seeder.sql multiple times will generate duplicate data, don't worry about that for now (we'll fix it by the end of the exercise).
 */

