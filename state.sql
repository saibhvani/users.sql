create table user.state(
id int primary key auto_increment,
name varchar(30) not null,
country_id int not null
);

create table user.country(
id int primary key auto_increment,
name varchar(40) not null,
pincode int not null,
countryid int not null,
constraint foreign key country_state_countryid(countryid)references user.state(id)
);

alter table user.country
drop foreign key country_state_countryid ;

select *from user.state;
insert into user.state(name,country_id)values('ap',1);
insert into user.state(name,country_id)values('ts',2);
insert into user.state(name,country_id)values('mp',3);

select *from user.country;
insert into user.country(name,pincode,countryid)values('india',506331,1);
insert into user.country(name,pincode,countryid)values('usa',500002,2);
insert into user.country(name,pincode,countryid)values('uk',500001,null);

alter table user.country modify countryid int null;

select *from user.state as st
inner join user.country as cny on st.id=cny.countryid;

select *from user.state as st
left join user.country as cny on st.id=cny.countryid;

select *from user.state as st
right join user.country as cny on st.id=cny.countryid;

select *from user.state as st
cross join user.country as cny on st.id=cny.countryid;

select st.name,cny.name from user.state as st
join user.country as cny on st.id=cny.countryid;



