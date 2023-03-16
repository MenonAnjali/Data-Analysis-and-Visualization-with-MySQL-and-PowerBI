-- Show all Customer records
SELECT * FROM sales.customers;

-- Show total number of customer
SELECT count(*) FROM sales.customers;

-- Show all product records
SELECT * from Sales.products;

-- Show type of poroduct
SELECT distinct product_code from Sales.products;

-- Show all Markets records 
SELECT * from Sales.markets;

-- Show all market name 
SELECT distinct markets_name from Sales.markets;

-- Show total number of markets name 
SELECT count(*)  markets_name from Sales.markets;

-- Show  total transaction 
SELECT * FROM sales.transactions;

-- Show total number of transaction 
SELECT count(*) FROM sales.transactions;

-- Show distinct product codes that are sold in Mumbai
SELECT distinct product_code From sales.transactions where market_Code  = 'Mark002';

-- Show the trnasactions that are sold in Chinnai
SELECT * from sales.transactions where market_code ='Mark001';

-- Show transaction where currency is USD
SELECT * from sales.transactions where currency = "USD"; 

-- Show INNER join from date table to transactions table
SELECT sales.transactions.*,sales.date.* from sales.transactions INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date;

-- Show transactions in 2020 join by date table
SELECT sales.transactions.*,sales.date.* from sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year = 2020;

-- show how many sales value is <=0
SELECT * From sales.transactions where sales_amount <=0;
SELECT count(*) From sales.transactions where sales_amount <=0;

-- Show distinct Currency
 SELECT distinct transactions.currency FROM transactions;

 -- Show number of transaction in INR Currency
 SELECT count(*) FROM transactions where transactions.currency = 'INR';

-- Show number of transaction in INR\r Currency
 SELECT count(*) FROM transactions where transactions.currency = 'INR\r';

 -- Show count of transaction in INR Currency
 SELECT count(*) FROM transactions where transactions.currency = 'INR';
 SELECT * FROM transactions where transactions.currency = 'USD\r';

 -- Show count of transaction in USD Currency
 SELECT count(*) FROM transactions where transactions.currency = 'USD';
 SELECT * FROM transactions where transactions.currency = 'USD/r';

  -- Show count of transaction in USD\r Currency
 SELECT count(*) FROM transactions where transactions.currency = 'USD\r';

 -- Show all transaction in USD and USD\r currency
 SELECT * FROM transactions where transactions.currency = 'USD' or transactions.currency = 'USD\r';

-- Verifing Data with PowerBI

-- Show Total revenue in year 2020
SELECT SUM(sales.transactions.sales_amount) from sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year = 2020 and sales.transactions.currency="INR\r" or transactions.currency='USD\r';

-- Show total revenue in year 2020, January Month
SELECT sum(sales.transactions.sales_amount) from sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year = 2020 and sales.date.month_name ="January" and sales.transactions.currency="INR\r" or transactions.currency='USD\r';

-- Show total revenue in year 2019, January Month
SELECT sum(sales.transactions.sales_amount) from sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year = 2019 and sales.date.month_name ="January" and sales.transactions.currency="INR\r" or transactions.currency='USD\r';

-- Show total revenue in year 2018, January Month
SELECT sum(sales.transactions.sales_amount) from sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year = 2018 and sales.date.month_name ="January" and sales.transactions.currency="INR\r" or transactions.currency='USD\r';

-- Show total revenue in year 2020 in Chennai
SELECT sum(sales.transactions.sales_amount) from sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year = 2020 and sales.transactions.market_code="Mark001"  and sales.transactions.currency="INR\r" or transactions.currency='USD\r' ;

-- Show total revenue in year 2020 in Mumbai
SELECT sum(sales.transactions.sales_amount) from sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year = 2020 and sales.transactions.market_code="Mark002"  and sales.transactions.currency="INR\r" or transactions.currency='USD\r' ;

-- Show total revenue in year 2020, January Month
SELECT sum(sales.transactions.sales_amount) from sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year = 2020 and sales.date.month_name ="January" and sales.transactions.currency="INR\r" or transactions.currency='USD\r' ;