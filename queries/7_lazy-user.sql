/*
Seleccionar el id y el correo del usuario que no tenga ningún post
*/
SELECT u.id, u.email
FROM users u 
WHERE NOT EXISTS (
    SELECT p.id
    FROM posts p
    WHERE p.users_id = u.id
);
