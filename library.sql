CREATE DATABASE library;

USE library;

CREATE TABLE users (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
name VARCHAR(20),
email VARCHAR(50) NOT NULL UNIQUE,
password VARCHAR(250) NOT NULL,
is_active boolean default false not null,
role enum('user', 'admin', 'super_admin') default 'user',
created_at datetime default current_timestamp,
update_at datetime default current_timestamp on update current_timestamp
);

create table author (
id int primary key auto_increment not null,
name VARCHAR(20),
nationality varchar(50)
);

create table books (
id int primary key auto_increment not null,
title varchar(70) not null,
description text not null,
author_id int,
foreign key (author_id) references author(id)
);

create table fauvorites (
id int primary key auto_increment not null,
book_id int,
user_id int,
foreign key (book_id) references books(id)
);

CREATE TABLE loans (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
books_id INT,
users_id INT,
loan_date DATETIME DEFAULT CURRENT_TIMESTAMP,
return_date DATETIME,
due_date DATETIME NOT NULL,
FOREIGN KEY (books_id) REFERENCES books(id),
FOREIGN KEY (users_id) REFERENCES users(id)
);