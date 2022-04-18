INSERT INTO users (name, email) VALUES ('Boon', 'tayboonsiang90@gmail.com')

SELECT * FROM users;
SELECT * FROM users ORDER BY email;
SELECT * FROM users ORDER BY email DESC;
SELECT * FROM users ORDER BY email DESC LIMIT 2;
-- offset is to skip ahead by a certain amount
SELECT * FROM users ORDER BY email DESC OFFSET 1 LIMIT 2;
-- wildcard operator search for records with e 
SELECT * FROM users WHERE name LIKE '%a%';
SELECT * FROM users WHERE email="tayboonsiang90@gmail.com"
SELECT COUNT(*) FROM users
SELECT COUNT(*) FROM users WHERE email="tayboonsiang90@gmail.com"

-- If there is two records, it will update both records 
UPDATE users SET name="Boony" WHERE email="tayboonsiang90@gmail.com"

DELETE FROM users WHERE email = "tayboonsiang90@gmail.com"
-- Delete all the rows 
DELETE FROM users

