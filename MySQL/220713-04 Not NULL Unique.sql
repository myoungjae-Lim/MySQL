CREATE TABLE persons (
    personId INT PRIMARY KEY AUTO_INCREMENT, -- 시도 자체에 증가함 
    firstName VARCHAR(10) NOT NULL,
    lastName VARCHAR(10) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE
);

insert Into persons (firstName, lastName, age, email) values ("길동", "홍", 20, "길동@길동.net");
insert Into persons (firstName, lastName, age, email) values ("길동", "고", 20, "kildong@길동.net");

select * from persons;

-- 테이블 이름
-- 각 열 (이름, 타입, 제약)
-- Key