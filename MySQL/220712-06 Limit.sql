select * from country;
select * from country limit 1;

-- 인구가 가장 많은 1개의 국가 조회하기
SELECT *
FROM
    country
ORDER BY Population DESC
LIMIT 1;

-- 면적 순 탑 5
SELECT 
    *
FROM
    country
ORDER BY SurfaceArea DESC
LIMIT 5;

-- continent가 'Asia'인 국가들 중 면적이 좁은 10개 국가
select * from country where Continent = 'Asia' order by SurfaceArea limit 10;

-- region이 '~Africa'로 끝나는 국가들 중 독립년도가 가장 최근인 10개 국가
select * from country where Region like '%Africa' order by IndepYear desc limit 10;

-- 면적당 인구비율(Population / SurfaceArea) 탑 10 국가
select *, (population / SurfaceArea) AS '인구 밀도' from country order by `인구 밀도` desc limit 10;

-- (GNP - GNPOld ) 변화량 최상위 10
select *,gnp - GNpOld as 'gnp 변화량' from country order by `gnp 변화량` desc limit 10;