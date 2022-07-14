-- hr 부서 테이블 모든 행과 열 조회
select * from departments;

-- 부서 명이 IT로 시작하는 부서 조회
select * from departments where DEPARTMENT_name Like 'IT%';

-- 60, 210, 230
-- 직원 테이블
select * from employees Where DEPARTMENT_ID in (60, 210, 230);

SELECT 
    *
FROM
    employees
WHERE
    DEPARTMENT_ID IN (
    SELECT 
            DEPARTMENT_ID
        FROM
            departments
        WHERE
            DEPARTMENT_NAME LIKE 'IT%'); -- IN 안에있는 select문 서브 쿼리라 부름 
            
-- 연봉 내림차순 정렬
-- 연봉 탑 10명
-- 연봉을 오름차순으로 조회 
SELECT 
    *
FROM
    (SELECT 
        *
    FROM
        employees
    ORDER BY SALARY DESC
    LIMIT 10) AS A
ORDER BY salary;

-- David Austin의 연봉과 같은 연봉을 받는 직원들 조회 
select * from employees where SALARY = (select SALARY from employees where FIRST_NAME = 'David' And LAST_NAME = 'Austin');