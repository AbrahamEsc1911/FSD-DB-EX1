select id as prueba, name as nombres
from users
limit 10; 

select id as numerounico, name as nombre, email as correo, created_at as fechaCreacion
from user
limit 30

select *
from users
where email='david.garcia@example.com'
and password='password123';

select *
from users
order by name asc;

select * 
from users
where name like '%cia';

select title as libro
from books
where title like 'a%';

select * 
from users
where name like '%cia%';

select name
from authors
order by name asc;

select * 
from users
where name like 'an%';

select count(*) as total_user
from users;

select *
from fauvorites
join users on fauvorites.user_id= users.id
join books on fauvorites.book_id= books.id
where fauvorites.id= 3;

select user.name, books.title, authors.name
from user
join favourites on favourites.user_id = user.id
join books on favourites.books_id = books.id
join authors on books.authors_id = authors.id
where favourites.id= 6;


select name, id
from user
where name like 'b%';

select user.name, books.title, loans.loan_date, authors.name, authors.nationality
from user
join loans on loans.user_id = user.id
join books on loans.books_id = books.id
join authors on books.authors_id = authors.id
where user.id= 40;