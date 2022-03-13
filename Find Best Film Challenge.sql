SELECT titles.title, director.dir_name, critic_rating.critics_rating, posters.filename
FROM titles
JOIN director
ON titles.director_id = director.id
JOIN critic_rating
ON critic_rating.title_id = titles.id
LEFT JOIN posters
ON posters.titles_id = titles.id
ORDER BY critic_rating.critics_rating DESC
LIMIT 1;