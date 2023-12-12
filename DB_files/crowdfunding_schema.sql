-- crowdfunding_db_schema.sql

-- Create the crowdfunding_db database
CREATE DATABASE crowdfunding_db;

-- Switch to the crowdfunding_db database
USE crowdfunding_db;

-- Creating contacts table
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL
);

-- Creating category table
CREATE TABLE category (
    category_id VARCHAR(5) PRIMARY KEY,
    category VARCHAR(50) NOT NULL
);

-- Creating subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(50) NOT NULL
);

-- Creating campaign table
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT NOT NULL,
    description VARCHAR(255) NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(255) NOT NULL,
    backers INT NOT NULL,
    country VARCHAR(2) NOT NULL,
    currency VARCHAR(3) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(5) NOT NULL,
    subcategory_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- Viewing the tables 
SELECT * FROM Contacts;
SELECT * FROM Category;	
SELECT * FROM Subcategory;
SELECT * FROM Campaign;
