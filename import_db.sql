DROP TABLE IF EXISTS cattoys; 
DROP TABLE IF EXISTS cats; 
DROP TABLE IF EXISTS toys; 

CREATE TABLE cats (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    color VARCHAR(255),
    breed VARCHAR(255)
);

CREATE TABLE toys ( 
    id INTEGER PRIMARY KEY,
    price INTEGER,
    color VARCHAR(255),
    name VARCHAR(255)
);

-- CREATE TABLE cattoys (
--     id INTEGER PRIMARY KEY,
--     cat_id INTEGER NOT NULL,
--     toy_id INTEGER NOT NULL,
--     FOREIGN KEY (cat_id) REFERENCES cats(id),
--     FOREIGN KEY (toy_id) REFERENCES toys(id)
-- );


INSERT INTO cats (name, breed, color)
VALUES ('Hobbes', 'calico', 'orange'),
VALUES ('Scooter', 'persian', 'black'),
VALUES ('Scrawny', 'siamese', 'white'),
VALUES ('Poopmachine', 'ginger', 'orange'),
VALUES ('Lucy', 'domestic', 'nude');

INSERT INTO toys (price, color, name)
VALUES (25, 'black', 'flogger'),
VALUES (10, 'red', 'curtain'),
VALUES (100, 'grey', 'tower'),
VALUES (50, 'purple', 'grape_suit'),
VALUES (150, 'brick red', 'handcuffs');

-- INSERT INTO cattoys (cat_id, toy_id)
-- VALUES  
-- VALUES
-- VALUES
-- VALUES
-- VALUES

