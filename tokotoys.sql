CREATE TABLE tools (
    id serial PRIMARY KEY,
    category_id integer,
    tools_name varchar,
    tools_brand varchar,
    tools_price integer,
    created_at date,
    updated_at date
);

CREATE TABLE tools_category (
    id serial PRIMARY KEY,
    category_name varchar,
    category_description varchar,
    created_at date,
    updated_at date
);

SELECT * FROM tools;

INSERT INTO tools (id, category_id, tools_name, tools_brand, tools_price, created_at, updated_at)
VALUES 
    (1, 1, 'Paper Magic', 'Corbubrok', 1000, '2023-09-22', '2023-09-22'),
    (2, 2, 'Remote Control', 'Makuen', 780000, '2023-09-22', '2023-09-22'),
    (3, 3, 'Magic Sand', 'Pledoh', 25000, '2023-09-22', '2023-09-22');

UPDATE tools SET tools_name = 'Magic Paper' WHERE id = 1;

SELECT * FROM tools_category;

INSERT INTO tools_category (id, category_name, category_description, created_at, updated_at)
VALUES 
    (1, 'Cheap', 'Under Rp 25000', '2023-09-22', '2023-09-22'),
    (2, 'Expensive', 'Above Rp 500000', '2023-09-22', '2023-09-22'),
    (3, 'Standard', 'Start from Rp 25000 until Rp 500000', '2023-09-22', '2023-09-22');

SELECT * FROM tools t
JOIN tools_category tc ON tc.id = t.category_id;