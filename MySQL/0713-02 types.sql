-- 학생
-- 이름 : 가변길이 문자열(10자)
-- 나이 : 정수
-- 학점 : 실수

create table students(
	name varchar(10),
    age int,
    score double
);

select * from students;

insert into students (name, age, score) values ('길동', 20, 3.3);
insert into students (name, age, score) values ('둘리', 20.5, 3); -- mySQL 특징 정수자리에 실수를 넣으면 반올림
insert into students (name, age, score) values ('길동', 21, 2.6);

delete from students where name = '둘리';

