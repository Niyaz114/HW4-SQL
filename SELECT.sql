SELECT Genre.GenreName, COUNT(ExecutorGenre.executorid) AS Performers
FROM Genre
INNER JOIN ExecutorGenre ON Genre.id = ExecutorGenre.genreid
GROUP BY Genre.GenreName;

SELECT 
albumname, count(track.id) as number_of_tracks
FROM album
JOIN track ON album.id = track.albumid
WHERE 
year_release BETWEEN '2019-01-01' AND '2020-12-31'
GROUP by albumname;

SELECT albumname, AVG(duration_track) AS avg_duration_track FROM album 
JOIN track ON album.id = track.albumid
GROUP BY albumname;

SELECT executorname FROM executor
JOIN executoralbum ON executoralbum.executorid = executor.id 
JOIN album ON album.id = executoralbum.albumid
WHERE not year_release BETWEEN '2020-01-01' AND '2020-12-31';

SELECT DISTINCT collectionname FROM collection
JOIN collectiontrack ON collectiontrack.collectionid = collection.id 
JOIN track ON collectiontrack.trackid = track.id 
JOIN album ON track.albumid = album.id
JOIN executoralbum ON album.id = executoralbum.albumid 
JOIN executor ON executoralbum.albumid = executor.id
WHERE executorname = 'Metalica';

SELECT albumname FROM album 
JOIN executoralbum ON album.id = executoralbum.albumid 
JOIN executor ON executoralbum.albumid = executor.id 
JOIN executorgenre ON executor.id = executorgenre.executorid 
GROUP BY albumname
HAVING COUNT(genreid) > 1;

SELECT trackname FROM track 
FULL JOIN collectiontrack ON track.id = collectiontrack.trackid
FULL JOIN collection ON collectiontrack.collectionid = collection.id
WHERE collectiontrack.collectionid IS NULL;

SELECT Executorname, duration_track FROM Executor
JOIN executoralbum ON Executor.id = executoralbum.Executorid 
JOIN album ON executoralbum.albumid = album.id 
JOIN track ON album.id = track.albumid
WHERE duration_track = (SELECT MIN(duration_track) FROM track)
GROUP BY Executorname, duration_track; 

SELECT albumname, COUNT(track.id) AS tracks_in_album FROM album
JOIN track ON album.id = track.albumid 
GROUP BY albumname
HAVING COUNT(track.id) = (SELECT MIN(min_track_count) 
FROM (SELECT COUNT(track.id) AS min_track_count 
FROM album JOIN track ON album.id = track.albumid GROUP BY albumname) AS track_count);