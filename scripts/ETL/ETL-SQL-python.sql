DROP DATABASE IF EXISTS sql_workshop ;

-- Create the database
CREATE DATABASE sql_workshop;

-- Use the database
USE sql_workshop;

-- Create the 'authors' table
CREATE TABLE authors (
    author_id INT AUTO_INCREMENT, -- Automatically generated ID for each author
    author_name VARCHAR(255) NOT NULL, -- Name of the author
    PRIMARY KEY (author_id) -- Primary key to uniquely identify each author
);

-- Create the 'books' table
CREATE TABLE books (
    book_id INT AUTO_INCREMENT, -- Automatically generated ID for each book
    book_title VARCHAR(255) NOT NULL, -- Title of the book
    year_published INT, -- Year the book was published
    author_id INT, -- ID of the author who wrote the book
    PRIMARY KEY (book_id), -- Primary key to uniquely identify each book
    FOREIGN KEY (author_id) REFERENCES authors(author_id) -- Foreign key to connect each book to its author
);