-- 1
SELECT
	`id`,
	`name` 
FROM
	`movies` 
WHERE
	`year` = 1995;
	
	
-- 	2
SELECT
	COUNT(*) 
FROM
	actors a
	LEFT JOIN roles r ON a.id = r.actor_id
	LEFT JOIN movies m ON m.id = r.movie_id 
WHERE
	m.name = 'Lost in Translation';
	
	
-- 	3
SELECT
	a.id,
	a.first_name,
	a.last_name 
FROM
	actors a
	LEFT JOIN roles r ON a.id = r.actor_id
	LEFT JOIN movies m ON m.id = r.movie_id 
WHERE
	m.name = 'Lost in Translation';
	
	
-- 4
SELECT
	d.id,
	d.first_name,
	d.last_name 
FROM
	directors d
	LEFT JOIN movies_directors md ON md.director_id = d.id
	LEFT JOIN movies m ON m.id = md.movie_id 
WHERE
	m.name = "Fight Club";
	
	
-- 5
SELECT
	COUNT(*) 
FROM
	movies m
	LEFT JOIN movies_directors md ON md.movie_id = m.id
	LEFT JOIN directors d ON d.id = md.director_id 
WHERE
	d.first_name = "Clint" 
	AND d.last_name = "Eastwood";


-- 6
SELECT
	m.id,
	m.name 
FROM
	movies m
	LEFT JOIN movies_directors md ON md.movie_id = m.id
	LEFT JOIN directors d ON d.id = md.director_id 
WHERE
	d.first_name = "Clint" 
	AND d.last_name = "Eastwood";

-- 7
SELECT
	d.id,
	d.first_name,
	d.last_name
FROM
	directors d
	LEFT JOIN directors_genres dg ON dg.director_id = d.id
WHERE dg.genre = 'Horror' GROUP BY (d.id);

-- 8
SELECT
	a.id,
	a.first_name,
	a.last_name
FROM 
	actors a
	LEFT JOIN roles r ON r.actor_id = a.id
	LEFT JOIN movies m ON m.id = r.movie_id
	LEFT JOIN movies_directors md ON md.movie_id = m.id
	LEFT JOIN directors d ON d.id = md.director_id
WHERE d.first_name = 'Christopher' AND d.last_name = 'Nolan';