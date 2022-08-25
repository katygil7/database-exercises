CREATE TABLE albums
(
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_name  VARCHAR(50) NOT NULL,
    record_name  VARCHAR(100),
    release_date YEAR,
    record_sale  FLOAT,
    record_genre VARCHAR(100),
    PRIMARY KEY (id)
)