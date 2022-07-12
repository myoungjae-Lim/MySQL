select * from country where Name Not in ('South Korea', 'Japan', 'China');

select * from country where Population between 40000000 and 50000000;

-- Continent 컬럼 값이 North America, Europe, Asia를 제외한 국가들 중 
-- GNP 값이 100이상 1000이하인 국가 목록 조회
SELECT 
    *
FROM
    country
WHERE
    Continent NOT IN ('North America' , 'Europe', 'Asia')
        AND (GNP BETWEEN 100 AND 1000);
        
select *
from country
where IndepYear IS NOT NULL;

select *
from country
where IndepYear IS NULL;
