create database my_db;

create database my_db;

Use my_db;

create table students(
	number Int primary key
    , name Varchar(10)
    , age int 
    , score double
);

-- 기본 키(Primary Key) : NOT NULL, UNIQUE
desc students;

insert Into students (number , name, age, score) values (1234, '길동', 20, 3.3);
insert Into students (number , name, age, score) values (1236, '길동', 20, 3.3);
insert into students (number , name , age, score) values (1235, '둘리', 30, 4.4);

select * from students;