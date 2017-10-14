--1
-- SELECT *
-- FROM users;

--2
-- SELECT *
-- FROM posts
-- WHERE users_id = 100;

--3
-- SELECT *, u.first_name, u.last_name
-- FROM posts p
-- JOIN users u ON u.id = p.users_id
-- WHERE p.users_id = 200;

--4
SELECT *, u.username
FROM posts p
JOIN users u ON u.id = p.users_id
WHERE u.first_name = 'Norene'
AND u.last_name = 'Schmitt';
