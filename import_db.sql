DROP TABLE IF EXISTS cattoys; 
DROP TABLE IF EXISTS cats; 
DROP TABLE IF EXISTS toys; 

CREATE TABLE cats (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    color VARCHAR(255),
    breed VARCHAR(255)
);

CREATE TABLE toys ( 
    id SERIAL PRIMARY KEY,
    price INTEGER,
    color VARCHAR(255),
    name VARCHAR(255)
);

CREATE TABLE cattoys (
    id SERIAL PRIMARY KEY,
    cat_id INTEGER NOT NULL,
    toy_id INTEGER NOT NULL,
    FOREIGN KEY (cat_id) REFERENCES cats(id),
    FOREIGN KEY (toy_id) REFERENCES toys(id)
);


INSERT INTO cats (name, breed, color)
VALUES ('Hobbes', 'calico', 'orange'),
       ('Scooter', 'persian', 'black'),
       ('Scrawny', 'siamese', 'white'),
       ('Poopmachine', 'ginger', 'orange'),
       ('Lucy', 'domestic', 'nude');

INSERT INTO toys (price, color, name)
VALUES (25, 'black', 'flogger'),
       (10, 'red', 'curtain'),
       (100, 'grey', 'tower'),
       (50, 'purple', 'grape_suit'),
       (150, 'brick red', 'handcuffs');

INSERT INTO cattoys (cat_id, toy_id)
VALUES (1,5), (1,1), (2,4), (3,4), (4,3), (5,2);

