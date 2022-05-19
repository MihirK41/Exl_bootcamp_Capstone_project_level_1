*First step to upload the following list of files given below to ftp (https://npbdh.cloudloka.com/ftp)
1. createdatabase.sql 
2. export_database_using_sqoop.sh
3. create_table.sql
4. output_hive_tables.sql        

Now, Run the following Commands in the given order

1)Login to mysql
mysql -u anabig114230 -pBigdata123

2)show databases;
use anabig114230;

3) Create tables for retail data using codes
a. run the below command to create tables under 
source createdatabase.sql 

b.exit from mysql by using below given command.
quit

4. create a directory in hdfs  and a directory in local to store the dataset as well as tables schema which will be import from mysql by using below commands.

creating directory in hdfs. 
hdfs dfs -mkdir exlbootcamp
creating directory in local
mkdir exlboot_camp

5. copy the export_database_using_sqoop.sh to exlboot_camp 
cp export_database_using_sqoop.sh exlboot_camp 

6.change the directory to exlboot_camp we have created
cd exlboot_camp 

6. Run the following command.
sh export_database_using_sqoop.sh 

7. cd the directory back to local
cd ..

8. Run the command to cpoy the achema file to hdfs.
hdfs dfs -put exl_bootcamp

9) Run the following command to create hive table.
hive -f create_table.sql

10) Run the following command to run the analysis on the tables we have created in hive and the save the query in output_hive_tables.txt

hive -f output_hive_tables.sql > output_hive_tables.txt



