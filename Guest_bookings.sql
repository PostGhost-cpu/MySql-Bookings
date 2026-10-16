-- create table
create table guest (
guestID int auto_increment not null, -- autonumber
name varchar(100) not null,
email varchar(100) not null,
primary key(guestID) -- attributes
);

create table bookings (
bookingsID int auto_increment not null, -- autonumber
guestID int not null,
bookingNum varchar(10) not null,
date date not null,
primary key(bookingsID), -- attributes
foreign key (guestID) references guest(guestID)
);

-- insert data
insert into guest (name, email)
values
("Debbie Duncan", "dduncan@yahoo.com");

insert into bookings (bookingNum, date)
values
("B2468", "2026-02-14");

-- update data
update bookings
set date = 2026-02-13
where bookingsID = 1;

-- delete data
delete from bookings
where bookingsID = 1;

select * from bookings;
