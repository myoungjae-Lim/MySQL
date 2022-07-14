-- Group by Having
-- 부서별로 직원들의 인원 수
SELECT 
    DEPARTMENT_ID, COUNT(*)
FROM
    employees
GROUP BY DEPARTMENT_ID;
    
-- 부서별 최고 연봉, 최저 연봉, 평균 연봉, 연봉 합
SELECT 
    DEPARTMENT_ID, MAX(SALARY), MIN(SALARY), AVG(Salary)
FROM
    employees
GROUP BY DEPARTMENT_ID;

-- 중복 제거 
SELECT DISTINCT -- 행의 값이 조회하는 모든 컬럼 값이 같아야 중복 제거 
    JOB_ID, LAST_NAME
FROM
    employees;
-- --------------
SELECT          -- Group by 는 그룹화 되어서 같은 그룹 첫행에 있는 컬럼값을 조회
    JOB_ID, LAST_NAME 
FROM
    employees
GROUP BY JOB_ID;

-- 직원 테이블 LAST_NAME을 중복 제거하고 조회
select distinct Last_name from employees;

-- 직원 테이블 LAST_NAME 그룹 별로 인원 수 조회
select Last_Name, count(*) as '성이 같은 사람' from employees 
group by LAST_NAME order by `성이 같은 사람` desc;

-- Last_Name 그룹의 카운트가 2이상인 행들만 조회
SELECT 
    Last_Name, COUNT(*) AS '성이 같은 사람'
FROM
    employees
GROUP BY LAST_NAME
HAVING count(*) > 1;
-- 위의 성을 가지는 직원 목록 조회
SELECT 
    *
FROM
    employees
WHERE
    LAST_NAME IN (
    SELECT 
            Last_Name
        FROM
            employees
        GROUP BY LAST_NAME
        HAVING COUNT(*) > 1);
        
--
select SALARY from employees group by SALARY order by SALARY limit 4,1;

SELECT 
    *
FROM
    employees
WHERE
    SALARY = (SELECT 
            SALARY
        FROM
            employees
        GROUP BY SALARY
        ORDER BY SALARY
        LIMIT 4 , 1);
        
-- 상위 연봉 50명에 대해서 부서별로 몇 명씩 있는지 
select * from employees order by SALARY desc, FIRST_NAME limit 50;

SELECT 
    DEPARTMENT_ID, COUNT(*)
FROM
    (SELECT 
        *
    FROM
        employees
    ORDER BY SALARY DESC , FIRST_NAME
    LIMIT 50) AS `top50`
GROUP BY DEPARTMENT_ID;
