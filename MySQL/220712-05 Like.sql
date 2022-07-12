select * from country
where name Like '%Korea%';

select * from country
where name like '%K%'; -- K 가 포함된 문자열

select * from country
where name like '%K'; -- K 로 끝나는 문자열

select * from country
where name like 'K%'; -- K 로 시작하는 문자열

-- 국가 이름이 'A'로 시작하고 'A'로 끝나는 국가 조회
select * from country where name like 'A%A';

-- 국가 이름이 'A'로 시작하고 'A'로 끝나는 국가 조회(6자)
select * from country where name like 'A____A'; -- _ 은 한글자를 대체 
 
-- 국가명이 ~ria로 끝나는 국가 조회
select * from country where name like '%ria';

-- Region North ~~ 시작하는 국가
select name AS '국가명', Region '지역' from country where Region like 'North%';

-- Region 컬럼에 A로 시작해서 A로 끝나는 명칭을 포함하지 않는 국가 
SELECT 
    *
FROM
    country
WHERE
    Region NOT LIKE '%A%A'
    and Region not like 'A%A%'
    order by region ;