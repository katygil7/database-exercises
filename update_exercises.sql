-- All albums in your table.
SELECT record_name FROM albums;

-- All albums released before 1980
SELECT record_name FROM albums WHERE release_date < 1980;

-- All albums by Michael Jackson
SELECT record_name  FROM albums WHERE artist_name = 'Michael Jackson';

-- Make all the albums 10 times more popular (sales * 10)
UPDATE albums SET record_sale = (record_sale * 10);

-- Move all the albums before 1980 back to the 1800s.
UPDATE albums SET release_date = 1800 WHERE release_date < 1980;

-- Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums SET  artist_name = 'Peter Jackson' WHERE id = 1;
