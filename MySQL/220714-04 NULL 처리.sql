SELECT 
    CASE -- Case When 조건식 참 then ~  거짓 else ~
        WHEN 10 > 5 THEN '10은 5보다 큽니다'
        ELSE '왼쪽이 오른쪽보다 작거나 같습니다.'
    END;
    
SELECT 
    CASE
        WHEN 10 > 5 THEN '왼쪽'
        WHEN 10 = 5 THEN '같음'
        WHEN 10 < 5 THEN '오른쪽'
    END as '비교';
    
-- 기대 수명이 NULL이면 0.0
SELECT 
    Name,
    CASE
        WHEN LifeExpectancy IS NULL THEN 0.0
        ELSE LifeExpectancy
    END as Life
FROM
    country;
 
-- 직원 이름(이름 + 성) 결합시킨 Full Name, 전화번호가 011로 시작하는 경우 '개인 전화', 그 외의 경우 '내선 번호'라고 조회 
SELECT 
    CONCAT(first_name, " ", last_name) AS `Full Name`,
    CASE
        WHEN SUBSTRING(Phone_number, 1, 3) = 011 THEN '개인 전화'
        ELSE '내선 번호'
    END AS 분류
FROM
    employees;
    
select ifnull(null, '대체값');

-- 값이 3개. 1번째 값이 NULL이면 2번째값, 2번째 값도 NUll이면 3번째값
select ifnull(ifnull("첫번째 값","두번째 값"),"세번째 값");
select coalesce("첫", "두", "세");

select nullif('A', 'B'); -- 두 값이 같으면 null 다르면 첫번째 값