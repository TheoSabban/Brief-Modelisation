CREATE TABLE potion (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE ingredient (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE ingredient_pour_potion (
    ingredient_id INT NOT NULL,
    potion_id INT NOT NULL,
    CONSTRAINT ingredient_pour_potion
        PRIMARY KEY (ingredient_id, potion_id),
    CONSTRAINT ingredient_pour_potion_ingredient
        FOREIGN KEY (ingredient_id)
        REFERENCES ingredient(id),
    CONSTRAINT ingredient_pour_potion_potion
        FOREIGN KEY (potion_id)
        REFERENCES potion(id)
);