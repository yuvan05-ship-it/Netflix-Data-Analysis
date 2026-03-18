-- Movies vs TV Shows
SELECT type, COUNT(*) AS total
FROM netflix
GROUP BY type;

-- Top 10 Countries
SELECT country, COUNT(*) AS total
FROM netflix
GROUP BY country
ORDER BY total DESC
LIMIT 10;

-- Content Added Per Year
SELECT YEAR(date_added) AS year, COUNT(*) AS total
FROM netflix
GROUP BY year
ORDER BY year;

-- Most Common Genres
SELECT listed_in, COUNT(*) AS total
FROM netflix
GROUP BY listed_in
ORDER BY total DESC
LIMIT 10;

-- Longest Movie
SELECT title, duration
FROM netflix
WHERE type = 'Movie'
ORDER BY CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED) DESC
LIMIT 1;