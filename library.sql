CREATE DATABASE library;

USE library;

CREATE TABLE user (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
name VARCHAR(50) not null,
email VARCHAR(50) NOT NULL UNIQUE,
password VARCHAR(250) NOT NULL,
is_active boolean default false not null,
role enum('user', 'admin', 'super_admin') default 'user',
created_at datetime default current_timestamp,
update_at datetime default current_timestamp on update current_timestamp
);

create table authors (
id int primary key auto_increment not null,
name VARCHAR(50),
nationality varchar(50)
);

create table books (
id int primary key auto_increment not null,
authors_id int,
foreign key (authors_id) references authors(id),
title varchar(70) not null,
description text not null
);

create table favourites (
id int primary key auto_increment not null,
books_id int,
foreign key (books_id) references books(id),
user_id int,
foreign key (user_id) references user(id)
);

CREATE TABLE loans (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
books_id INT,
FOREIGN KEY (books_id) REFERENCES books(id),
user_id INT,
FOREIGN KEY (user_id) REFERENCES user(id),
loan_date DATETIME DEFAULT CURRENT_TIMESTAMP,
return_date DATETIME,
due_date DATETIME NOT NULL
);