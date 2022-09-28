insert into details( Ticketid, place, moviename, theatrename, showdate, lang, seatnum, seattype,
cost,  customername, phone, paymentstatus, booked, portal)
values(25, 'New Delhi', 'Soul', 'CinePlex', '02-Aug-2022', 'English', 'B5', 'Premium', '250', 'Jotaro Kujo', '9898989898','N', 'N', 'PayTM'); 

select * from details;
-- update cost of standard seats
update details
set cost = 250
where seattype = 'Standard';

-- update user payment
update details
set paymentstatus = 'Y',booked = 'Y',portal = 'Credit'
where customername = 'Jotaro Kujo' and seattype = 'Premium';

update details
set portal = 'ND'
where paymentstatus = 'N';

-- find show
select place,showdate,lang from details
where moviename = 'RRR';
desc details;

select theatrename, showdate, seatnum, seattype
from details
where moviename = 'RRR' and booked = 'N';

-- remove name from seats which are not booked
update details
set customername = 'No user booked'
where booked = 'N';
select * from details;

desc details;

create table theater(
TheatreName varchar2(10),
Place varchar2(10),
seats number,
screens number
);

alter table theater
add place varchar2(20);

alter table theater
drop  column place;

desc theater;

insert into theater( theaterid, theatrename, place, seats, screens) values(
'5', 'CinePhilic', 'Pune', 100, 2);

select * from theater;

create table UserAccount(
username varchar(20),
userId varchar(20) primary key,
age number,
email varchar2(30),
phone varchar2(10)
);


desc useraccount;

create table moviedetails(
moviename varchar2(20),
lang varchar2(10),
genre varchar(15),
targetaudience varchar(10),
rating number,
mduration number
);

desc moviedetails;

insert into moviedetails (moviename, lang, genre, targetaudience, rating, mduration)
values('Forrest Gump', 'English', 'Drama', '10+',5, 120);

select * from moviedetails;





