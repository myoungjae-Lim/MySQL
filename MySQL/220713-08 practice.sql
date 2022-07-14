-- 각 직원들의 이름과 연봉, 평균 연봉과의 차(평균연봉 - 연봉)를 조회
select avg(salary) from employees; 
select first_name as 이름, SALARY as 연봉, round(salary - (select avg(salary) from employees)) as '평균연봉과의 차이' from employees ;

-- 최고 연봉직원과 최저 연봉 직원들의 이름을 조회
select first_name as '이름', SALARY as 연봉 from employees where SALARY = (select SALARY from employees order by SALARY limit 1) or SALARY = (select SALARY from employees order by SALARY desc limit 1) ;

-- 부서명이 IT로 시작하는 직원들의 수(카운트)를 조회
select * from departments where DEPARTMENT_NAME like 'IT%'; 
select count(*) from employees where DEPARTMENT_ID in (select DEPARTMENT_ID from departments where DEPARTMENT_NAME like 'IT%');
 
-- Douglas Grant의 이메일을 'dog@naver.com'으로 변경해보세요.
desc employees;
update employees
set email = 'dog@naver.com'
where first_name = 'Douglas' and last_name = 'Grant';
select * from employees where FIRST_NAME = 'douglas';

-- Ellen Abel과 같은 부서에서 근무하는 직원을 연봉 내림차순으로 정렬해서 조회
select * from employees where DEPARTMENT_ID = (select DEPARTMENT_ID from employees where FIRST_NAME = 'Ellen' and LAST_NAME = 'Abel');

-- 부서명이 IT로 시작하는 부서에서 근무하는 최고연봉자보다 높은 연봉을 받는 직원 목록을 연봉 오름차순으로 조회 
select Max(salary) from employees where DEPARTMENT_ID in (select DEPARTMENT_ID from departments where DEPARTMENT_NAME like 'IT%');
select * from employees where SALARY > (select Max(salary) from employees where DEPARTMENT_ID in (select DEPARTMENT_ID from departments where DEPARTMENT_NAME like 'IT%'));

-- 자기가 속한 부서의 평균보다 많이 받는 직원 
select distinct DEPARTMENT_ID from employees; 

select * from employees as em where SALARY > (select avg(salary) from employees where DEPARTMENT_ID = em.DEPARTMENT_ID);

