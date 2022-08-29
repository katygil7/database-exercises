use katherine;
--     first run this as select to see what you will be deleted
SELECT *
FROM albums
WHERE release_date >  1991;

SELECT *
FROM albums
Where  record_genre = 'disco';

SELECT *
FROM albums
WHERE artist_name = 'Whitney Houston';


-- Now delete the above

DELETE
FROM albums
WHERE release_date >  1991;

DELETE
FROM albums
Where  record_genre = 'disco';

DELETE
FROM albums
WHERE artist_name = 'Whitney Houston';

