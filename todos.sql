CREATE TABLE todos (id SERIAL PRIMARY KEY, title VARCHAR(255) NOT NULL, details VARCHAR NULL, priority INTEGER NOT NULL DEFAULT '1', created_at TIMESTAMP NOT NULL, completed_at TIMESTAMP NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES 
('learn programming', 'go to Iron Yard and learn it', 10, '8/11/2017', null), 
('get job', 'apply for job', 10, '8/12/2017', null),
('crush job', 'learn a ton and kill it', 9, '8/12/2018', null),
('get married', 'put a ring on it', 2, '8/12/2038', null),
('die of old age', 'just get old and look back at life and be like i crushed it', 5, '11/24/2098', null);

UPDATE todos SET completed_at = '2017-08-11 00:00:00' WHERE id=2; --updated this due to not initially added in a completed value

SELECT * FROM todos WHERE completed_at IS null;

SELECT * FROM todos WHERE priority >1;

UPDATE todos SET completed_at = '2017-08-12 00:00:00' WHERE id=3;

DELETE FROM todos WHERE completed_at IS NOT NULL;	