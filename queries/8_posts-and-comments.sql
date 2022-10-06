/*
Seleccionar los posts con y sin comentarios
*/

SELECT p.id, p.title
FROM posts p
WHERE EXISTS (
  SELECT c.id
  FROM comments c
  WHERE c.post_id = p.id
);

SELECT p.id, p.title
FROM posts p
WHERE NOT EXISTS (
  SELECT c.id
  FROM comments c
  WHERE c.post_id = p.id
);