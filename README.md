# L2-B2-Fullstack-Track-Assignment-7-SayedulHoque44

## QNA

- 1.What is PostgreSQL?
  Answer : Postgres is a relational database managment system,where we can do complex quearies,manipulate user,database,table.nowdays postgressql so populer becouse of features.

- 2.What is the purpose of a database schema in PostgreSQL?
  Answer : database let use put data in database within logical structure and reduce of conflict database name or table name using namespace etc. like: create database databaseName

- 3.Explain the primary key and foreign key concepts?
  Answer : Primary key is like idenify a table row uniquely. using this PK we can indexing the row though in postgress create index using this PK by default and all row will be unique to each other,
  and using foreign key we can reference tables,and using this foreign key we can join tables and perform a complex queries.

- 4.What is the difference between the VARCHAR and CHAR data types?
  Answer : VARCHAR,CHAR both are data type of column, when defin those type we have to fixed the length like this varchar(50) CHAR(50),defining this column only able to 50 character length but diffrence is CHAR defined length hold the storage but varchar dont do it, varchar take only it's got the character length.

- 5.Explain the purpose of the WHERE clause in a SELECT statement?
  Answer : In select statement when we retriving data we can use condition using this where clause.

- 6.What are the LIMIT and OFFSET clauses used for?
  Answer : when we retriving the data we can limit the row of table using this LIMIT clauses and also we can skip row using OFFSET clauses

- 7.How can you perform data modification using UPDATE statements?
  Answer : At first you have to define table name with update statements then using SET clauses you can update column data, `UPDATE table_name SET column_name = 'new Value' WHERE column_name = 'target_Column_Value'`

- 8.What is the significance of the JOIN operation, and how does it work in PostgreSQL?
  Answer : join is like combine a table using there foreign key, there are Inner join is working like when its execute the primary table its start from first row and using foreign key its try to find foreign row from the foreign table used as a primary key if both matched then it's attach to the primary table row where the foreign key,just like it in the primary table every row execute and try to find their expectation row from the foreign table, inner join will only join those which ar matched,Another is left join its attach row using foreign key like same but it's give piority the left table it will show all row without matched the foreign key,right join same as but here give piority the right side table,Using natrul join targeted table have to a common column if column value matched then it attach to each other.

- 9.Explain the GROUP BY clause and its role in aggregation operations.?
  Answer : Using group by clause we ca group a unique value from a table, and using aggregation we can get perform some fn like count,sum,avg,min,max this function take a set of data and return a single value, using group we split the row with unique value and this grouped every value with multiple row and take those row and return the expectation value using the aggregate fn.

- 10.How can you calculate aggregate functions like COUNT, SUM, and AVG in PostgreSQL?
  Answer : aggregate function take a multiple row and return a single value, `select sum(salary) from table_name` like this we can perform aggregate funciton and it will be return the summation of the inputed all row of salary column, just like it count ,avg work.

- 11.What is the purpose of an index in PostgreSQL, and how does it optimize query performance?
  Answer : in postgresSql identify uniquely using the indexing,and increse query performance. for this uniquness easy to fast retrive row,optimize join query,faster retrive.

- 12.Explain the concept of a PostgreSQL view and how it differs from a table.?
  Answer : view is like storing a complex queries as a variable and we can use it in other queries as subquries or individually of this queries.
