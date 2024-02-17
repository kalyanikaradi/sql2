use classicmodels;

select creditLimit, contactFirstname, contactLastname, country
from customers
where country = 'USA' or country = 'France' or country = 'UK';

select creditLimit, contactFirstname, contactLastname, country
from customers
where country in ('USA', 'UK', 'France')
order by creditLimit;

select creditLimit, contactFirstname, contactLastname, country
from customers
where creditLimit between 80000 and 100000;

select creditLimit, contactFirstname, contactLastname, country
from customers
where contactFirstName like 'b%';

select creditLimit, contactFirstname, contactLastname, country
from customers
where contactFirstName like 'a%d';

select creditLimit, contactFirstname, contactLastname, country
from customers
where contactLastName like '%z';

select creditLimit, contactFirstname, contactLastname, country
from customers
where contactFirstName like "s%n";

select creditLimit, contactFirstname, contactLastname, country
from customers
where contactLastName like "%an%";


select count(country)
from customers;

select count(country) as number_of_country
from customers;

select avg(creditLimit) as average_limit
from customers
where country ='USA';

select sum(creditLimit) 
from customers 
where country ='France';

select min(creditLimit)
from customers
where country='UK';

select max(creditLimit)
from customers
where country='France';

select * from payments;

select *from payments; 

select country, count(contactFirstName) as custCount
from customers
group by country
order by custCount desc
limit 20;


select country, sum(creditLimit), avg(creditLimit)  , 
max(creditLimit), min(creditLimit) as min_credit
from customers
group by country
order by min_credit desc
limit 10;


select country, sum(creditLimit), avg(creditLimit)  , 
max(creditLimit), min(creditLimit) as min_credit
from customers
where creditLimit > 100000
group by country
order by min_credit desc
limit 10;


select country, count(creditLimit)
from customers
where creditLimit > 100000
group by country;

select country, avg(creditLimit) as avgcredit, max(creditLimit), count(contactFirstName) as countas,
min(creditLimit) as min_credit
from customers
group by country
having avg(creditLimit) > 75000
order by avgcredit desc;