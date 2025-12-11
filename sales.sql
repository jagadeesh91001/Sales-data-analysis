create database RetailSalesData;
USE RetailSalesData;

create table Sales_Data_Transaction (
Customer_id varchar(255),
trans_date varchar(255),
tran_amount int);

create table Sales_Data__Response (
customer_id varchar(255) primary key,
response int);

SHOW VARIABLES LIKE 'secure_file_priv';


LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Retail_Data_Transactions.csv'
INTO TABLE Sales_Data_Transaction
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from Sales_Data_Transaction limit 10;
explain select * from Sales_Data_Transaction where Customer_id='CS5295';

create index idx_id on Sales_Data_Transaction(Customer_id);

explain select * from Sales_Data_Transaction where Customer_id='CS5295';

