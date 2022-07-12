select code AS '코드', name AS '이름', population AS '인구' from country;

-- 위의 조회 + SurfaceArea 별명은 (면적) 컬럼을 추가로 조회하는데 
select code AS '코드', name AS '이름', population AS '인구', SurfaceArea as '면적' from country;


-- surfacearea가 50,000이하 이면서 Population이 10,000,000 이상인 국가의 인구밀도를 조회하세요.
SELECT 
    code AS '코드',
    name AS '이름',
    population AS '인구',
    SurfaceArea AS '면적',
    ROUND(Population / SurfaceArea, 1) AS '인구 밀도'
FROM
    country
WHERE
    SurfaceArea <= 50000
        AND Population >= 10000000;
        
-- 인구 밀도 조회
SELECT 
    code AS '코드',
    name AS '이름',
    population AS '인구',
    SurfaceArea AS '면적',
    ROUND(Population / SurfaceArea, 1) AS '인구밀도'
FROM
    country
ORDER BY 인구밀도 desc;

-- 아시아 대륙 국가들의 인구 순으로(내림차 순) 조회
SELECT 
    *
FROM
    country
WHERE
    Continent = 'Asia'
ORDER BY Population DESC;

-- LifeExpectancy 오름차순으로 조회
SELECT 
    *
FROM
    country
WHERE
    LifeExpectancy IS NOT NULL
ORDER BY LifeExpectancy;

-- 국가의 이름과 인구와 GNP, GNPOld, (GNPOld - GNP 차를 구해서 "변화량") 조회
SELECT 
    Name AS '국가명',
    population AS '인구',
    Gnp,
    GNPOld,
    GNPOld - GNP AS 'GNP 변화량'
FROM
    country
    where GNPOld - GNP Is not null
    order by `GNP 변화량`; -- ` 탭키 위에있는거 사용하면 공백이 들어간 별칭도 사용 가능
    
-- 대륙 순으로 정렬해서 조회 
select * from country order by Continent, Population;

-- GovernmentForm 오름차순, GNP 내림차순
select * from country order by GovernmentForm, GNP desc;