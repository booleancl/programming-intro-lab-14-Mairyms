CREATE TABLE comments (
    id SERIAL PRIMARY KEY UNIQUE,
    post_id INT,
    user_id INT,
    content VARCHAR (255),
    date DATE,
    CONSTRAINT fk_user_id
        FOREIGN KEY (user_id)
            REFERENCES users (id)
            ON DELETE SET NULL,
    CONSTRAINT fk_post_id
        FOREIGN KEY (post_id)
            REFERENCES posts (id)
            ON DELETE SET NULL
);