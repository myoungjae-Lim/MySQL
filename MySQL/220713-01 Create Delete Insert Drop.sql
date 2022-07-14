create database my_db;

show databases;

USE my_db;

Show tables;

-- 사람 테이블
-- 열1 이름 문자열
-- 열2 나이 정수
Create table persons (
	name varchar(10) ,
	age int
);

desc persons;

select * from persons;

insert Into persons (name, age) values ("홍길동", 22);

-- 행 추가
-- '브루스 리', 30살
-- '스티븐 킹', 40살
insert Into persons (name, age) values ("브루스 리", 30), ("스티븐 킹", 40);

-- '철수', 20살
-- '철수', 30살
-- '철수', 40살
insert Into persons (name, age) values ('철수', 20),('철수', 30),('철수', 40) ;

delete from persons;

drop table persons;

-- 책 테이블
-- 제목 : 문자열
-- 가격 : 정수

create table Book (
	title varchar(20),
    price int
);

-- 파워자바, 25000
-- 하늘과 바람과 별과 시, 15000
-- 꽃을 보듯 너를 본다, 12000

insert into book (title, price) values ('파워자바', 25000), ('하늘과 바람과 별과 시', 15000), ('꽃을 보듯 너를 본다', 12000);

select * from book;

drop table book;

-- char(5)    'A    ' 고정된 문자열로 나머지는 공백 문자열이 추가 
-- varchar(5) 'A'     가변적으로 최대값을 넘지 않는다면 공백 문자열 x

create table testChar(
	fixLength Char(5),
    varLength varchar(5)
);

insert into testChar (fixLength, varLength) values ('A', 'A');
select * from testChar;

select * from testChar where length(fixLength) = 1;

select rtrim('A          ');
select ltrim('        A');
select trim('        A            ');