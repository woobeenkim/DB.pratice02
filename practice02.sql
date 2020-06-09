1.문제

select count(manager_id) "haveMngCnt"
from employees;

2.문제

select max(salary) "최고임금",
min(salary) "최저임금",
max(salary)-min(salary) "최고임금-최저임금"
from employees;

3.문제

select to_char(max(hire_date),'yyyy"년"mm"월"dd"일"')
from employees;

4.문제

select avg(salary) "평균임금",
max(salary) "최고임금",
min(salary) "최저임금",
department_id "부서아이디"
from employees
group by department_id
order by department_id desc;

5.문제

select round(avg(salary),1) "평균임금",
max(salary) "최고임금",
min(salary) "최저임금",
job_id
from employees
group by job_id
order by min(salary) desc, avg(salary), max(salary);

6.문제

select to_char(min(hire_date),'yyyy-mm-dd') "입사일"
from employees;

7.문제

select department_id "부서",
avg(salary) "평균임금",
min(salary) "최저임금",
avg(salary)-min(salary) "평균임금-최저임금"
from employees
group by department_id
having avg(salary)-min(salary) <2000
order by avg(salary)-min(salary) desc;

8.문제

select max(salary)-min(salary) "임금차이"
from employees
group by job_id
order by max(salary)-min(salary) desc;

9.문제

select round(avg(salary),1) "평균급여",
min(salary) "최소급여",
max(salary) "최대급여"
from employees
group by manager_id
having avg(salary) >=5000
order by avg(salary) desc;

10.문제

select hire_date  "입사일",
case
when hire_date < '02/12/31' then '창립멤버'
when substr(hire_date,1,2) = '03' then '03년 입사'
when substr(hire_date,1,2) = '04' then '04년 입사'
else '상장이후입사'
end optDate
from employees
order by hire_date asc;
