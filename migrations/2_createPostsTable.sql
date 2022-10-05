CREATE TABLE posts (
    id INT PRIMARY KEY UNIQUE NOT NULL,
    title VARCHAR (80),
    date DATE,
    users_id INT,
CONSTRAINT fk_users_id
    FOREIGN KEY (users_id)
    REFERENCES users (id)
    ON DELETE SET NULL
);