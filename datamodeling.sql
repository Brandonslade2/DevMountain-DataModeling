CREATE TABLE Users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255)
);

CREATE TABLE Picture (
    id SERIAL PRIMARY KEY,
    user_id INT Users(id)
);

CREATE TABLE Recipe (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255),
    recipe_name VARCHAR(255),
    instructions VARCHAR(255),
    public BOOLEAN(255)
);

CREATE TABLE Occasion (
    id SERIAL PRIMARY KEY,
    occasion_name VARCHAR(255),
    location VARCHAR(255),
    description VARCHAR(255),
    recipes VARCHAR(255) Recipe(recipe_name),
    username VARCHAR(255) Users(username),
    public BOOLEAN(255)
);

CREATE TABLE Ingredient (
    id SERIAL PRIMARY KEY,
    item VARCHAR(255)
);

CREATE TABLE Recipe_Ingredient (
    id SERIAL PRIMARY KEY,
    ingredient_id INT Ingredient(id)
    recipe_id INT Recipe(id)
    quantity INT
);

CREATE TABLE Grocery_List (
    id SERIAL PRIMARY KEY,
    grocery_item VARCHAR(255) Ingredient(item)
    username VARCHAR(255) Users(username)
);