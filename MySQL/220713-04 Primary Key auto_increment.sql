CREATE TABLE books (
    bookId INT PRIMARY KEY auto_increment, -- 자동으로 행이 추가될때마다 key값을 올리는 keyword 증가만 함 
    title VARCHAR(30),
    price INT
);

desc books;

insert into books (title, price) values ('파워 자바', 25000), ("책1", 20000);
insert into books (bookId, title, price) values (2,'책1',20000);
select * from books;

delete from books where bookId > 2 ;

