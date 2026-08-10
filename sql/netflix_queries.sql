 Netflix Content Analytics
''' SQL Analysis '''

-- 1. Total number of titles
SELECT COUNT(*) AS total_titles
FROM netflix;


-- 2. Movies vs TV Shows
SELECT type, COUNT(*) AS total_titles
FROM netflix
GROUP BY type
ORDER BY total_titles DESC;


-- 3. Titles by release year
SELECT release_year, COUNT(*) AS total_titles
FROM netflix
WHERE release_year IS NOT NULL
GROUP BY release_year
ORDER BY release_year DESC
LIMIT 15;


-- 4. Most common ratings
SELECT rating, COUNT(*) AS total_titles
FROM netflix
WHERE rating IS NOT NULL
GROUP BY rating
ORDER BY total_titles DESC;


-- 5. Ratings by content type
SELECT type, rating, COUNT(*) AS total_titles
FROM netflix
WHERE rating IS NOT NULL
GROUP BY type, rating
ORDER BY type, total_titles DESC;
