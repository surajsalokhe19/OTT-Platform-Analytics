-- OTT Platform analytics 

create database ott_platform;

use ott_platform;

create table users (
  id int primary key,
  username varchar(30) not null,
  email varchar(20) not null unique
);

select * from users;

create table shows (
  id int primary key,
  title varchar(45) not null,
  genre varchar(45) not null,
  release_date date not null
);

select * from shows;

create table subscriptions (
  id int primary key,
  user_id int references users (id),
  start_date date not null,
  end_date date,
  plan varchar(45) not null
);

select * from subscriptions;

create table watch_history (
  id int primary key,
  user_id int references users (id),
  show_id int references shows (id),
  watched_at datetime 
);

select * from watch_history;

create table reviews (
  id int primary key,
  user_id int references users (id),
  show_id int references shows (id),
  rating int check 
  (
	rating >= 1 and rating <= 5
  ),
  comment text
);

select * from reviews;


-- Inserting the values In Users Table 

INSERT INTO users (id, username, email) VALUES

(101,'suraj','suraj@gmail.com'),
(114,'rahul','rahul@gmail.com'),
(127,'priya','priya@gmail.com'),
(139,'anita','anita@gmail.com'),
(152,'rohit','rohit@gmail.com'),
(168,'kiran','kiran@gmail.com'),
(173,'neha','neha@gmail.com'),
(189,'arjun','arjun@gmail.com'),
(204,'pooja','pooja@gmail.com'),
(219,'sachin','sachin@gmail.com'),
(231,'amit','amit@gmail.com'),
(246,'deepa','deepa@gmail.com'),
(258,'varun','varun@gmail.com'),
(271,'sonal','sonal@gmail.com'),
(285,'vikas','vikas@gmail.com'),
(299,'nisha','nisha@gmail.com'),
(314,'manoj','manoj@gmail.com'),
(327,'riya','riya@gmail.com'),
(341,'ajay','ajay@gmail.com'),
(356,'kavya','kavya@gmail.com');


select * from users;



-- Inserting values in Shows Table 

INSERT INTO shows (id, title, genre, release_date) VALUES

(11,'Sacred Games','Crime','2018-07-06'),
(23,'Mirzapur','Action','2018-11-16'),
(34,'The Family Man','Thriller','2019-09-20'),
(47,'Asur','Mystery','2020-03-02'),
(59,'Scam 1992','Drama','2020-10-09'),
(62,'Delhi Crime','Crime','2019-01-25'),
(78,'Paatal Lok','Thriller','2020-05-15'),
(81,'Kota Factory','Drama','2019-04-16'),
(96,'Aspirants','Drama','2021-04-07'),
(104,'Made in Heaven','Drama','2019-03-08'),
(117,'Breathe','Thriller','2018-01-26'),
(129,'Special OPS','Action','2020-03-17'),
(138,'Criminal Justice','Crime','2019-04-05'),
(149,'Hostel Daze','Comedy','2019-12-13'),
(158,'TVF Pitchers','Drama','2015-06-03'),
(166,'Rocket Boys','Drama','2022-02-04'),
(174,'Gullak','Comedy','2019-06-27'),
(185,'Panchayat','Comedy','2020-04-03'),
(192,'Rudra','Crime','2022-03-04'),
(205,'Farzi','Crime','2023-02-10');

select * from shows;


-- Inserting values in Subscription Table 


INSERT INTO subscriptions (id, user_id, start_date, end_date, plan) VALUES
(501,101,'2024-01-01','2024-12-31','Premium'),
(514,114,'2024-02-10',NULL,'Standard'),
(528,127,'2024-03-05','2024-09-05','Basic'),
(539,139,'2024-01-20',NULL,'Premium'),
(552,152,'2024-04-15','2024-10-15','Standard'),
(568,168,'2024-02-25',NULL,'Basic'),
(573,173,'2024-03-10','2024-11-10','Premium'),
(589,189,'2024-01-30',NULL,'Standard'),
(604,204,'2024-05-01','2024-08-01','Basic'),
(619,219,'2024-02-14',NULL,'Premium'),
(631,231,'2024-03-22','2024-12-22','Standard'),
(646,246,'2024-01-28',NULL,'Basic'),
(658,258,'2024-04-02','2024-07-02','Premium'),
(671,271,'2024-05-12',NULL,'Standard'),
(685,285,'2024-06-01','2024-12-01','Basic'),
(699,299,'2024-03-15',NULL,'Premium'),
(714,314,'2024-02-07','2024-08-07','Standard'),
(727,327,'2024-04-18',NULL,'Basic'),
(741,341,'2024-01-19','2024-10-19','Premium'),
(756,356,'2024-05-27',NULL,'Standard');


select * from subscriptions;


-- Inserting values in Watch History Table 


INSERT INTO watch_history (id, user_id, show_id, watched_at) VALUES
(901,101,11,'2024-07-01 20:10:00'),
(914,114,23,'2024-07-01 21:30:00'),
(927,127,34,'2024-07-02 19:00:00'),
(939,139,47,'2024-07-02 22:15:00'),
(952,152,59,'2024-07-03 18:40:00'),
(968,168,62,'2024-07-03 21:05:00'),
(973,173,78,'2024-07-04 20:25:00'),
(989,189,81,'2024-07-04 19:10:00'),
(1004,204,96,'2024-07-05 22:00:00'),
(1019,219,104,'2024-07-05 20:45:00'),
(1031,231,117,'2024-07-06 18:30:00'),
(1046,246,129,'2024-07-06 21:20:00'),
(1058,258,138,'2024-07-07 19:55:00'),
(1071,271,149,'2024-07-07 22:35:00'),
(1085,285,158,'2024-07-08 20:15:00'),
(1099,299,166,'2024-07-08 18:50:00'),
(1114,314,174,'2024-07-09 21:40:00'),
(1127,327,185,'2024-07-09 19:05:00'),
(1141,341,192,'2024-07-10 22:10:00'),
(1156,356,205,'2024-07-10 20:35:00');

select * from watch_history;


-- Inserting values in Reviews Table 


INSERT INTO reviews (id, user_id, show_id, rating, comment) VALUES
(1501,101,11,5,'Outstanding'),
(1514,114,23,4,'Very entertaining'),
(1527,127,34,5,'Brilliant acting'),
(1539,139,47,4,'Thrilling'),
(1552,152,59,5,'Masterpiece'),
(1568,168,62,4,'Hard hitting'),
(1573,173,78,5,'Dark and intense'),
(1589,189,81,4,'Relatable'),
(1604,204,96,5,'Inspiring'),
(1619,219,104,4,'Premium feel'),
(1631,231,117,3,'Decent'),
(1646,246,129,4,'Good espionage'),
(1658,258,138,5,'Courtroom drama'),
(1671,271,149,4,'Fun watch'),
(1685,285,158,5,'Startup vibes'),
(1699,299,166,5,'Excellent'),
(1714,314,174,4,'Heartwarming'),
(1727,327,185,5,'Simple and real'),
(1741,341,192,3,'Average'),
(1756,356,205,5,'Stylish');


select * from reviews;



-- Question and Answers

-- Q.1 Show users who have premium subscription 

select u.id, u.username, s.plan
from users u
join subscriptions s on u.id = s.user_id
where s.plan = 'Premium';


-- Q.2 Shows which are released after 2020

select title, release_date
from shows
where release_date > '2020-12-31';


-- Q.3 Show thst total number of shows in each genre

select genre, count(title) as 'Total_shows'
from shows
group by genre;


-- Q.4 Sort the shows by their release date 

select title, release_date
from shows
order by release_date desc;


-- Q.5 Show the users with their watch history 

select u.username, w.watched_at
from users u 
join watch_history w on u.id = w.user_id;


-- Q.6 Show the average rating of each show 

select s.title, avg(re.rating)
from shows s
join reviews re on s.id = re.show_id
group by s.title; 


-- Q.7 show the watch history of 9 july 2024 with their names 

select u.username, w.watched_at
from users u
join watch_history w on u.id = w.user_id
where date(w.watched_at) = '2024-07-09';


-- Q.8 Find the shows who have rating of 5 

select s.title, re.rating 
from shows s
join reviews re on s.id = re.show_id
where rating = 5;


-- Q.9 Find the shows who have 4 rating or more than it.

select s.title, re.rating
from shows s
join reviews re on s.id = re.show_id
where rating >= 4;


-- Q.10 show that subscription is atcive or expired os user with their name 

select u.username, s.plan,
case 
	when end_date is null then 'Active'
    else 'Expired'
    end as subscribtion_status
from users u
join subscriptions s on u.id = s.user_id;


-- Q.11 Find most watch Genere

select s.genre, count(w.watched_at)
from shows s
join watch_history w on s.id = w.show_id
group by genre;


-- Q.12 Find who never reviewd the show 

select u.username, re.rating
from users u
join reviews re on u.id = re.user_id
where re.rating is null;


-- Q.13 Find the users who watches crime genre 

select u.username, s.genre
from users u 
join watch_history w on u.id = w.user_id -- output of this joined at next as input 
join shows s on s.id = w.show_id
where s.genre = 'crime';


-- Q.14 Find total watch by genre using CTE

with genre_watch as (
	select s.genre, count(w.watched_at) as total_watch
    from shows s 
    join watch_history w on s.id = w.show_id
    group by s.genre
    )
    select * from genre_watch;
    

-- Q.15 Find the users who watched shows in july 2024

select u.username, w.watched_at
from users u 
join watch_history w on u.id = w.user_id
where month (w.watched_at) = 7
and year (w.watched_at) = 2024;


-- Q.16 Find that how many shows are watched by each user

select u.username, count(w.show_id) as shows_watched
from users u
join watch_history w on u.id = w.user_id
group by u.username;


-- Q.17 Find avg rating given by each useer 

select u.username, avg(re.rating) as Average_Rating
from users u 
join reviews re on u.id = re.user_id
group by u.username;


-- Q.18 Find the End date of subcription 

select u.username, s.end_date as Ends_on
from users u
join subscriptions s on u.id = s.user_id;


-- Q.19 User details who dont have any subscritptions

select u.id, u.username, u.email
from users u
join subscriptions s on u.id = s.user_id
where s.plan is null;


-- Q.20 Find Users who have both standard and premium plan 

select u.username, s.plan, u.id
from users u 
join subscriptions s on u.id = s.user_id 
where plan in ('Standard','Premium');





		







