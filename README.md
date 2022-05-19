# Exl_bootcamp_Capstone_project_level_1
Integrating MySQL with HIVE by using SQOOP and Done ML Modelling by using SparkML
The Objective of the Project is to analyse the data and get some insights from it and building a ml model which will predict the reason why the people
leaving the organization.

The MySQL database which is used in this project contains 6 tables. 
1) Departments - It contains the information about the departname along with their respective numbers.
2) Employees - This table will give us idea about the employees name, gender, age, when the get hired, whether they leave the organiztion or still working, about their
   performance, numbers of project they have worked on.
4) Titles - It tells us about the designation of the employees in the organization.
5) Salaries - This table contains the information about the salaries of the employees.
6) Department Manager - It contains the information about the managers of the different departmnets.
7) Department Employees - This table give us the idea about the departments with which the employees are associated with.

There are various technology used while doing this project.
1) MySQL - MySQL is used to create the database by using the provided dataset.
2) SQOOP - SQOOP is used to create a bridge between the MySQL and the HDFS.
3) Hive - Hive is used to create the schema of the databse tables on haddop environment and analyse the datasets by using HiveQL to get the insights from it.
4) SparkML - SparkML is used to build the Machine Learning Model to get the idea about why the employee's leaving the organization and what are the factors 
   affects them to do so.

While Building the Model we use Both the Logistic and Random Forest Regression which both give us same accuracy of about 90%. After Analysing and building up the
ML Model, The factors affecting employees to leave the organization are sales, departments in which they work, their performance rating also their gender.



