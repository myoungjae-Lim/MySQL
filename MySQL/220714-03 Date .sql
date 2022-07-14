desc employees;

-- MySQL 날짜 : DATE
-- 시간 : TIME
-- 날짜 시간 : DATETIME / TIMESTAMP


select current_date();
select current_time();
select current_timestamp();
select Date '2022-07-14';
select time '12 : 05 : 33';

-- HIRE_DATE가 1987년 6월
SELECT 
    *
FROM
    employees
WHERE
    HIRE_DATE BETWEEN '19870601' AND '19870630';
    
select adddate('1987-06-01', -1);
select subdate('1987-06-01', 1);
select date_add('1987-06-01', interval 40 Day);
select date_sub('1987-06-01', interval 1 Month);
select '1987-06-01' + interval 1 year;
select '1987-06-30' + interval 1 day;

select dayofweek('2022-07-14'); -- 1 일요일

select extract(Year from '2022-07-14');
select extract(Month from '2022-07-14');
select extract(day from '2022-07-14');

select datediff('2022-06-13', '2022-06-01');

select str_to_date('2021/06/13', '%Y/%m/%d'); -- 서식 문자로 표현 해줘야 됨
select date_format(date '2021-06-13', '%y/%M/%d');

-- 직원 테이블 (17일에 고용된 직원)
select * from employees  where extract(day from Hire_date) = 17;
select * from employees where HIRE_DATE like '%-17';

-- job_history 각 행별로 일한 '기간' (일) 조회
select START_DATE, END_DATE, datediff(end_date, start_date) as inter from job_history;

-- 자료형 숫자, 문자열, 날짜 형 변환
select cast(10 as time);
select cast('10' as double) + 5.5;

select convert(10, time);
select convert('10', double) + 5.5;