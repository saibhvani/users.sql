create table user.student (
id int primary key auto_increment,
name varchar(50) not null,
email varchar(50) not null
);

create table user.teacher (
id int primary key auto_increment,
name varchar(50) not null,
subject varchar(50) not null,
teacherid int not null,
constraint foreign key teacher_student_teacherid(teacherid)references user.student(id)
);

alter table user.teacher
drop foreign key teacher_ibfk_1;

drop table user.teacher;


insert into user.student(name,email)values('bhavani','b@gmail.com');
insert into user.student(name,email)values('chinni','c@gmail.com');
insert into user.student(name,email)values('sravya','s@gmail.com');

select *from user.student;

insert into user.teacher(name,subject,teacherid)values('jyothi','english',9);
insert into user.teacher(name,subject,teacherid)values('navya','maths',8);
insert into user.teacher(name,subject,teacherid)values('sujitha','hindi',7);

select *from user.teacher;

select *from user.student as stu
inner join user.teacher as tcr on stu.id=tcr.teacherid;

select *from user.student as stu
right join user.teacher as tcr on stu.id=tcr.teacherid;

select *from user.student as stu
left join user.teacher as tcr on stu.id=tcr.teacherid;

select *from user.teacher
cross join user.student;

select stu.id,tcr.name from user.student as stu
join user.teacher as tcr on stu.id=tcr.teacherid;




