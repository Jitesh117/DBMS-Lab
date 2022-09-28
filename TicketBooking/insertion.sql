use movie;
create table details(
   TicketId NUMBER primary key,
   Place varchar2(20),
   MovieName varchar2(20),
   TheatreName varchar2(10),
   ShowDate date,
   Lang varchar2(10),
   SeatNum varchar2(3),
   SeatType varchar2(10),
   Cost NUMBER,
   CustomerName varchar2(20),
   Phone varchar2(12),
   PaymentStatus char(1),
   Booked char(1),
   Portal varchar2(10) 
);
-- alter table details
-- drop phone,
-- add phone char(10);
-- insert into details(ticketid,place,moviename,theatrename,showdate, lang,seatnum,seattype, cost,customername, phone, paymentstatus, booked, portal) values(
--     1,'pondicherry', 'rrr', 'pvr', '2022-07-02','tamil', 'a1','standard','250','john doe','9887766554','1','1','paytm' 
-- );   
-- select * from details;
-- drop table details;
desc details;