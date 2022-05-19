Titles 
-
Title_ID PK varchar(10)
Title varchar(30)

Employees 
-
Emp_No PK int
Emp_Titles_ID FK >- Titles.Title_ID varchar(10)
Birth_Date datetime
First_Name varchar(30)
Last_Name varchar(30) 
Sex varchar(1)
Hire_Date datetime
No_Of_Projects int
Last_Performance_Rating varchar(3)
Left boolean
Last_Date datetime 

Salaries
-
Emp_No FK >- Employees.Emp_No int
Salary int

Departments
-
Dept_No PK varchar(10) 
Dept_Name varchar(30)

Department_Manager
-
Dept_No FK >- Departments.Dept_No varchar(10)
Emp_No FK >- Employees.Emp_No int

Department_Emp
-
Emp_No FK >- Employees.Emp_No int
Dept_No FK >- Departments.Dept_No varchar(10)