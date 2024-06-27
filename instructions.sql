select id as prueba, name as nombres
from users
limit 10; 

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

select * 
from users
where name like '%cia%';

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