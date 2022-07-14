desc books;
Alter table books change column title title varchar(30) not null; -- column 바뀌기전이름 바뀐후이름 타입 조건

insert into books (title) values ('디폴터값 확인');

select * from books;

-- Create table myPractice(
-- 	colname1 Varchar(50) default '300asdf'
-- );