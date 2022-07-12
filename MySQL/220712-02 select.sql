select * from country;

select * from city;

select Name, Population from country;
 
select Name, Population from country where Name = 'South Korea';

desc country;

-- country 테이블 Code열과 GNP 열을 조회 

select Code, GNP from country;

select * From country where Name = 'South Korea';

-- 국가명이 'Japan' 조회
-- 국가명이 'China' 조회

select * From country where Name = 'Japan' or Name = 'China';


-- Continent 값이 'Asia' 인 행 조회하기
select * from country where Continent = 'Asia';



select * From country where Name = 'South Korea' or Name = 'Japan' or Name = 'China';

-- Population(인구) 컬럼 값이 40,000,000 이상인 국가의 모든 컬럼를 조회
select * From country where Population >= 40000000;

-- Population(인구) 컬럼 값이 40,000,000 이상 50,000,000이하 국가의 모든 컬럼를 조회
select * From country where Population >= 40000000 and Population <= 50000000;

-- Continent 'Asia'를 제외한 국가 목록 조회
select * from country where Continent <> 'Asia';
