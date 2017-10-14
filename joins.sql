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
-- SELECT p.id, p.title, p.url, p.created_at, p.content, p.updated_at, u.username
-- FROM posts p
-- JOIN users u ON u.id = p.users_id
-- WHERE u.first_name = 'Norene'
-- AND u.last_name = 'Schmitt';

--5
-- SELECT username
-- FROM users u
-- JOIN posts p ON p.users_id = u.id
-- WHERE p.created_at > '2015-1-1'::date;

--6
-- SELECT p.title, p.content, u.username
-- FROM posts p
-- JOIN users u ON u.id = p.users_id
-- WHERE u.created_at < '2015-1-1'::date;

--7
-- SELECT c.id, c.body, c.created_at, c.updated_at, p.title AS post_title
-- FROM comments AS c, posts AS p
-- WHERE p.id = c.posts_id;

--8
-- SELECT p.title AS post_title, p.url AS post_url, c.body AS comment_body
-- FROM comments AS c, posts AS p
-- WHERE p.created_at < '2015-1-1'::date
-- AND p.id = c.posts_id;

--9
-- SELECT p.title AS post_title, p.url AS post_url, c.body AS comment_body
-- FROM comments AS c, posts AS p
-- WHERE p.created_at > '2015-1-1'::date
-- AND p.id = c.posts_id;

-- SELECT p.title AS post_title, p.url AS post_url, c.body AS comment_body
-- FROM comments c
-- JOIN posts p ON p.id = c.posts_id
-- WHERE p.created_at > '2015-1-1'::date;

--10
-- SELECT p.title AS post_title, p.url as post_url, c.body AS comment_body
-- FROM comments c
-- JOIN posts p ON p.id = c.posts_id
-- WHERE c.body LIKE '%USB%';

--11
-- SELECT p.title AS post_title, u.first_name, u.last_name, c.body AS comment_body
-- FROM comments c
-- JOIN posts p ON p.id = c.posts_id
-- JOIN users u ON u.id = p.users_id
-- WHERE c.body LIKE '%matrix%';

--12
SELECT u.first_name, u.last_name, c.body AS comment_body
FROM comments c
JOIN users u ON u.id = c.users_id
JOIN posts p ON p.id = c.posts_id
WHERE c.body LIKE '%SSL%'
AND p.content LIKE '%dolorum%';