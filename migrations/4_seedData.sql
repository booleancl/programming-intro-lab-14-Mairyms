COPY users (email)
FROM '/Users/mairym/Clases-de-programacion/clase-5-oct/programming-intro-lab-14-Mairyms/data/users.csv'
DELIMITER ',' CSV HEADER;

COPY posts (id,users_id,title,date)
FROM '/Users/mairym/Clases-de-programacion/clase-5-oct/programming-intro-lab-14-Mairyms/data/posts.csv'
DELIMITER ',' CSV HEADER;

COPY comments (id,user_id,post_id,content,date)
FROM '/Users/mairym/Clases-de-programacion/clase-5-oct/programming-intro-lab-14-Mairyms/data/comentarios.csv'
DELIMITER ',' CSV HEADER;