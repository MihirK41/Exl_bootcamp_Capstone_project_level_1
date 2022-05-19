use exl_project_level_1;

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;


SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986'
ORDER BY hire_date;

SELECT departments.dept_no, departments.dept_name, department_manager.emp_no, employees.last_name, employees.first_name
FROM departments
JOIN department_manager
ON departments.dept_no = department_manager.dept_no
JOIN employees
ON department_manager.emp_no = employees.emp_no;

SELECT department_employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM department_employees
JOIN employees
ON department_employees.emp_no = employees.emp_no
JOIN departments
ON department_employees.dept_no = departments.dept_no;

SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name Like 'B%';

SELECT  department_employees.emp_no, departments.dept_name, employees.last_name, employees.first_name
FROM department_employees
JOIN employees
ON department_employees.emp_no = employees.emp_no
JOIN departments
ON department_employees.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

SELECT department_employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM department_employees
JOIN employees
ON department_employees.emp_no = employees.emp_no
JOIN departments
ON department_employees.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' 
OR departments.dept_name = 'Development';

select last_name,count(last_name) as Frequency 
from employees 
group by last_name
order by frequency desc;

select title,round(avg(salary),0) as Avg_salary from titles join employees on titles.title_id = employees.emp_titles_id 
join salaries on employees.emp_no = salaries.emp_no group by title;

select title_id,title,count(1) as Number_of_employees from employees join titles on employees.emp_titles_id = titles.title_id group by title_id, title order by Number_of_employees desc;

select employees.sex, count(department_manager.emp_no) as Number_of_managers from employees join department_manager on employees.emp_no = department_manager.emp_no group by employees.sex;

select concat(first_name, ' ', last_name) as Managers_name from employees join department_manager on employees.emp_no = department_manager.emp_no;

select emp_no, count(emp_no) as frequency from department_employees group by emp_no having count(emp_no) > 1 order by frequency desc;

select employees.sex, round(avg(salaries.salary),0) Average_salary_of_managers_gender_wise from employees 
join department_manager on employees.emp_no = department_manager.emp_no 
join salaries on employees.emp_no = salaries.emp_no group by employees.sex;

select departments.dept_name, count(*) as Number_of_Managers_department_wise, round(avg(salaries.salary),0) Average_salary_of_managers from employees 
join department_manager on employees.emp_no = department_manager.emp_no 
join salaries on employees.emp_no = salaries.emp_no
join departments on department_manager.dept_no = departments.dept_no
group by departments.dept_name;