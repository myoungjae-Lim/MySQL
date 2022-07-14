-- 식당 정보 테이블
-- 상호명 
-- 전화번호
-- 주소 등등
CREATE TABLE Restaurant (
    id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(20) NOT NULL,
    callNumber VARCHAR(13) NOT NULL UNIQUE,
    address VARCHAR(50) NOT NULL UNIQUE
);

desc restaurant;

insert into restaurant (Name, callNumber, address) values ('한솥', '010-1234-5678', '부산시 부산진구 부전동 어딘가'),('영자면옥','111-1111-1111','부전동 1'),('음식점','111-1111-1112','부전동 2');
insert into restaurant (Name, callNumber, address) values ('영자면옥','111-1111-1111','부전동 1'),('음식점','111-1111-1112','부전동 2');
select * from restaurant;


-- 메뉴 정보 테이블
-- 음식명 
-- 가격
CREATE TABLE menu (
    menuid INT PRIMARY KEY AUTO_INCREMENT,
    foodName VARCHAR(10),
    price INT
);

insert into menu (foodname, price) values ('비빔밥', 5000);
insert into menu (foodname, price) values ('칼국수', 4000);
insert into menu (foodname, price) values ('짜장면', 3500);

select * from menu;

alter table menu ADD column restId int;

update menu 
set restId = 1
where foodname = '비빔밥';

update menu 
set restId = 5
where menuid <> 1;

select * from menu;

Alter table menu Add constraint foreign key (restId) references restaurant (id);

desc menu;