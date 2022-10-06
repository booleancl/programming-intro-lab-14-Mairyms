/* Seleccionar el correo del usuario, el id del post y el título de los posts */
SELECT p.id, p.title, u.email
FROM posts p INNER JOIN users u ON p.users_id = u.id;

