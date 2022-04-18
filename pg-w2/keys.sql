DROP TABLE users;
CREATE TABLE users (
    -- AUTO INCREMENT
    id SERIAL,
    name VARCHAR(128),
    -- not allowed to insert the same email twice, logical key
    email VARCHAR(128) UNIQUE, 
    -- BLAZINGLY FAST
    PRIMARY KEY(id)
)

--now for dates
NOW()