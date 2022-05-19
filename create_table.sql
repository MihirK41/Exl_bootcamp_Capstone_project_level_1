create database exl_project_level_1;
use exl_project_level_1;
drop table if exists departments;
CREATE EXTERNAL TABLE departments 
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
location "/user/anabig114230/exlbootcamp/departments"
TBLPROPERTIES ('avro.schema.url'='/user/anabig114230/exlboot_camp/departments.avsc');

drop table if exists department_manager;
CREATE EXTERNAL TABLE department_manager 
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
location "/user/anabig114230/exlbootcamp/department_managers"
TBLPROPERTIES ('avro.schema.url'='/user/anabig114230/exlboot_camp/department_managers.avsc');

drop table if exists department_employees;
CREATE EXTERNAL TABLE department_employees 
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
location "/user/anabig114230/exlbootcamp/department_employees"
TBLPROPERTIES ('avro.schema.url'='/user/anabig114230/exlboot_camp/department_employees.avsc');

drop table if exists employees;
CREATE EXTERNAL TABLE employees 
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
location "/user/anabig114230/exlbootcamp/employees"
TBLPROPERTIES ('avro.schema.url'='/user/anabig114230/exlboot_camp/employees.avsc');

drop table  if exists salaries;
CREATE EXTERNAL TABLE salaries 
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
location "/user/anabig114230/exlbootcamp/salaries"
TBLPROPERTIES ('avro.schema.url'='/user/anabig114230/exlboot_camp/salaries.avsc');

drop table  if exists titles;
CREATE EXTERNAL TABLE titles 
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
location "/user/anabig114230/exlbootcamp/titles"
TBLPROPERTIES ('avro.schema.url'='/user/anabig114230/exlboot_camp/titles.avsc');




