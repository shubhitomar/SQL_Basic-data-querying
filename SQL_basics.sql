#creating a database and querying

create database shubhi;

#creating a table named 'movies'

create table movies (
id integer primary key ,
name text,
release_year integer);

insert into movies (id ,  name, release_year)
values(1, "Avatar", 2009),
(2, "Titanic", 1997),
(3, "Star Wars", 1977),
(4, "Shrek 2", 2004),
(5, "The lion king", 1994),
(6, "Disney's Up", 2009);

select * from movies;

select * from movies where release_year > 2000 or release_year < 1995;

select * from movies where release_year >=2000 order by release_year;

#creating another table named store

create table store(
id integer primary key,
item_name text,
price integer,
quantity integer,
status text);

insert into store (id, item_name, price, quantity, status)
values(1, "Milk bikis", 10, 21, "avail"),
(2,"Dairy Milk", 20, 20,"avail"),
(3, "Tedhe medhe", 10, 25, "avail"),
(4, "Mario", 15, 21, "avail"),
(5, "Milkybar", 20, 35, "avail"),
(6, "Kitkat", 25, 20,"avail"),
(7, "Munch", 10, 15, "avail"),
(8, "Lays", 10, 35, "avail"),
(9, "Bingo", 10, 24, "avail"),
(10, "Sunfeast", 10, 25, "avail"),
(11, "Chocobar", 20, 21, "avail"),
(12, "Peppy", 10, 12, "avail"),
(13, "Icecream", 20, 21, "avail"),
(14, "Oreo", 15, 30, "avail"),
(15, "Sweet", 10, 21, "avail");

select * from store;

select item_name , price, quantity from store where price > 15 or quantity < 20;

select * from store where id < 10;

select sum(price), sum(quantity) from store;

select item_name, price,
case 
when price > 10 
then "costly"
else "cheap"
end as Nature
from store;
