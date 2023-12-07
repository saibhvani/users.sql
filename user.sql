create table user.user (
id int primary key auto_increment,
name varchar(50) not null,
email varchar(50) not null,
phone int check(length(phone)=10)
);

create table user.order (
id int primary key auto_increment,
name varchar(50) not null,
price int,
loaction varchar(40) not null,
pincode int,
orderid int not null,
constraint foreign key order_user_orderid(orderid)references user.user(id)
);
alter table user.order
drop foreign key order_ibfk_1;

drop table user.order;

insert into user.user(name,email,phone)value('bhavani','b@gmail.com',1234567890);
insert into user.user(name,email,phone)value('sravya','s@gmail.com',1231232333);
insert into user.user(name,email,phone)value('chinni','c@gmail.com',1122111111);

select *from user.user;

insert into user.order(name,price,loaction,pincode,orderid)values('biryani',150,'hyd',50002,4);
insert into user.order(name,price,loaction,pincode,orderid)values('coke',50,'kphb',50001,5);
insert into user.order(name,price,loaction,pincode,orderid)values('coffee',60,'ammeerpet',50000,6);

select *from user.order

select * from user.user as usr
inner join user.order as ord on usr.id=ord.orderid;

select * from user.user as usr
right join user.order as ord on usr.id=ord.orderid;

select * from user.user as usr
left join user.order as ord on usr.id=ord.orderid;

