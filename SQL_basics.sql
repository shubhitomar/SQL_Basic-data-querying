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

#in and sub-query

create table artists(
id integer primary key auto_increment,
name text,
country text,
genre text);

insert into artists( name, country, genre)
values( "Taylor Swift", "US", "Pop"),
("Led Zeppelin", "US", "Hard Rock"),
("ABBA", "Sweden", "Disco"),
("Queen", "UK", "Rock"),
("Celine Dion", "Canada", "Pop"),
("Meatloaf", "US", "Hard Rock"),
("Garth Brooks", "US", "Country"),
("Shania Twain", "Canada", "Country"),
("Rihanna","US", "Pop"),
("Guns n Roses", "US", "Hard Rock"),
("Gloria Estefan","US", "Pop"),
("Bob Marley", "Jamaica", "Reggae");

select * from artists;

select * from artists where country in ("us", "Jamaica");

select * from artists where name like "%R%";

select * from artists where genre ="Pop";

#having clause

create table books (
id integer primary key auto_increment,
author text,
title text,
words integer);

insert into books (author, title, words)
values("J.K. Rowling", "Harr Potter and the Philosopher's stone", 79944),
("J.K. Rowling", "Harry Potter and the chamber of secrets", 85141),
("J.K. Rowling", "Harry Potter and the prisoner or Azbakan",107253),
("J.K.Rowling","Harry Potter and the Goblet of Fire", 190637),
("J.K. Rowling", "Harry Potter and the Order of the Phoenix", 257045),
("J.K. Rowling", "Harry Potter and the Half-Blood Prince", 168923),
("J.K.Rowling", "Harry Potter and the Deathly Hallows", 197651),

("Stephenie Meyer", "Twilight", 118501),
("Stephenie Meyer", "New Moon", 132807),
("Stephenie Meyer", "Eclipse",147930),
("Stephenie Meyer", "Breaking Dawn", 192196),

("J.R.R. Tolkien", "The Hobbit", 95022),
("J.R.R. Tolkien", "Fellowship of the Ring", 177227),
("J.R.R. Tolkien", "Two Towers", 143436),
("J.R.R. Tolkien", "Return of the King", 134462);



select * from artists where name like "%R%";

select * from artists where genre ="Pop";


