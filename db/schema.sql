CREATE DATABASE gigs_db;
USE gigs_db;


CREATE TABLE employers(
    id int AUTO_INCREMENT,
    first_name VARCHAR(45),
    last_name  VARCHAR(45),
    email VARCHAR(45),
    phone VARCHAR(10),
    PRIMARY KEY(id)
    );


CREATE TABLE applicants(
    id int AUTO_INCREMENT,
    first_name VARCHAR(45),
    last_name  VARCHAR(45),
    email VARCHAR(45),
    phone VARCHAR(10),
    qualifiers TEXT,
    PRIMARY KEY(id)
   );


CREATE TABLE gigs(
    id int AUTO_INCREMENT,
    employer_id int NOT NULL,
    title TEXT,
    description TEXT,
    category VARCHAR(45),
    volunteer BOOLEAN DEFAULT 0,
    pay DECIMAL NULL,
    recurring_gig BOOLEAN DEFAULT 0,
    street_address VARCHAR(45) NOT NULL,
    city VARCHAR(45) NOT NULL,
    state VARCHAR(45) NOT NULL,
    zipcode int NOT NULL,
    completion_date DATE NOT NULL,
    laboring_hours int,
    assigned_to_id int,
    PRIMARY KEY(id)
   );