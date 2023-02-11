INSERT INTO Genre (GenreName)
VALUES ('Hip-Hop'), ('Pop'), ('Rock'),('Rap'), ('Jazz');


INSERT INTO Executor (ExecutorName)
VALUES ('ASAP Rocky'), ('Kendrick Lamar'), ('Led Zeppelin'), ('AC/DC'),
('Lady Gaga'), ('Metalica'), ('George Benson'), ('Kanye West');


INSERT INTO ExecutorGenre (genreid, executorid)
VALUES (1,1), (1,2), (2,5), (3,3), (3,4), (3,6),
(4,8), (5,7);


INSERT INTO Album (AlbumName, year_release)
VALUES ('Testing', '2018-04-25'), ('Live. Love. ASAP', '2011-10-31'),
('Just lose it', '2004-09-28'), ('Mothership', '2007-11-12'), ('Power Up', '2020-11-13'),
('Chromatica', '2020-05-28'), ('Beyond Magnetic', '2011-01-01'),
('The Greatest Hits of All', '2003-07-08'), ('Light', '2009-08-06');


INSERT INTO ExecutorAlbum (executorid, albumid)
VALUES (1,1), (1,2), (2,2), (2,3), (3,4), (4,5), (5,6), (6,7), (7,8), (8,9);


INSERT INTO Track (TrackName, albumid, duration_track)
VALUES ('In My Hood', 1, '00:03:51'), ('Piggy Bank', 1, '00:04:15'),
('Ryder Music', 1, '00:03:52'), ('Stretch', 2, '00:04:08'),
('Just Lose It', 3, '00:04:09'), ('Attack', 4, '00:03:07'),
('Stealing Society', 4, '00:02:58'), ('Tentative', 4, '00:03:37'),
('Lonely Day', 4, '00:02:48'), (' Code Red', 5, '00:03:31'),
('Rejection', 5, '00:04:06'), ('Alice', 6, '00:02:58'),
('Plastic Doll', 6, '00:03:52'), ('Hell And Back', 7, '00:06:58'),
('Hate Train', 7, '00:06:58'), ('This Masquerade', 8, '00:03:22'),
('Love X Love', 8, '00:03:50'), ('Turn Your Love Around', 8, '00:03:52'),
('Smash Lies', 9, '00:03:25'), ('We Will Walk', 9, '00:03:23');


INSERT INTO Collection (CollectionName, year_of_release)
VALUES ('Street', '2010-10-10'), ('No bull', '2008-09-12'),
('Definitive collection', '2008-11-04'), ('All time', '2020-07-15'),
('Best', '2021-11-16'), ('For tranning', '2016-04-22'),
('Best music', '2022-12-31'), ('Shoot', '2015-12-25');


INSERT INTO CollectionTrack (collectionid, trackid)
VALUES (1, 2), (1, 3), (1, 4), (1, 5), (2, 6), (2, 7),
(2, 8), (2, 9), (2, 10), (2, 11), (2, 14), (2, 15),
(3, 2), (3, 1), (3, 3), (3, 4), (3, 5), (4, 1), (4, 2),
(4, 3), (4, 4), (4, 5), (4, 6), (4, 7), (4, 8), (4, 9),
(5, 9), (5, 6), (5, 10), (5, 11), (5, 14), (5, 15),
(6, 1), (6, 2), (6, 3), (6, 4), (6, 5), (6, 7), (6, 8),
(6, 9), (6, 10), (7, 17),
(7, 18), (7, 19), (7, 20), (8, 1), (8, 2), (8, 3),
(8, 4), (8, 5), (8, 6), (8, 7);
