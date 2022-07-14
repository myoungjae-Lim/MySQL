SELECT UPPER('abcde');
SELECT LOWER('ABCDE');

SELECT REVERSE('qwer');

SELECT CONCAT('문자열', '결합', '함수');
SELECT CONCAT('결합', NULL, '값이 있으면?');-- 값이 NULL이 되요

SELECT CHAR_LENGTH('문자열 길이');

SELECT REPLACE('원본 문자열에서 변환합니다',
        '변환',
        'replace');
SELECT REPLACE(1234, 1, 5);-- 자동으로 문자열으로 변환됨

SELECT SUBSTRING('employees', 5);-- 문자열, 자를 시작 위치 -- 문자열 위치가 1부터 시작 
SELECT SUBSTRING('employees', 5, 2); -- 문자열, 자를 시작 위치, 개수
SELECT SUBSTRING('employees', -3); -- 음수일때 우측에서 부터 위치를 세어나감 
SELECT SUBSTRING('employees', -3, 2);  

SELECT LPAD(123, 5, '0');
SELECT RPAD('456', 5, '*');

SELECT REPEAT('반복 결합 ', 3);

SELECT LOCATE('D', 'ABCDEFG');
SELECT LOCATE('위치', '문자열의 위치를 찾는데 SQL의 문자 순서는 1부터임');

-- "515.123.4567"
-- .을 기준으로 각각 잘라보세요 
select locate(".", "515.123.4567", 5); -- 문자, 문자열, 시작점
select substring("515.123.4567", 1, 3), substring("515.123.4567", 5, 3), substring("515.123.4567", 9, 4);

-- 직원 테이블 전화번호 앞자리 3자리를 분류해서 개수
select substring(phone_number, 1, 3) from employees;
select substring(phone_number, 1, 3) as `앞 3자리`, count(*) as `인원 수` from employees group by substring(phone_number, 1, 3);


-- 
select rand();
select round(rand() * 10);
select floor(1.555);
select ceil(1.222);

select abs(-55);
select pow(2, 8);
select sqrt(2);

select Pi();

-- 주사위 1 ~ 6 사이의 난수(정수) 생성
select ceil(rand() * 6);