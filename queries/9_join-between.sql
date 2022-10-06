/*
Seleccionar los usuarios que han creado posts entre '2020-05-31' y '2020-07-01'
*/
SELECT u.id
FROM users u
WHERE EXISTS (
  SELECT p.id
  FROM posts p
  WHERE p.date > '2020-05-31' and p.date < '2020-07-01'
  AND p.users_id = u.id
);
