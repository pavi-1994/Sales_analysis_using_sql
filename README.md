# sales_table_analysis_using_sql
created a sales table and a small analysis of it by using SQL

#### SQL (Structured Query Language) is a powerful and widely used programming language designed for managing, querying, and manipulating relational databases (relational databases are structured into tables, where data is organized into rows and columns.
In SQL, there are three main categories of commands:
#### 1. DDL (Data Definition Language):
DDL commands are used to define, modify, and manage the structure of database objects. These objects include tables, indexes, views, schemas, and more. Common DDL commands include: CREATE, ALTER, DROP, TRUNCATE, RENAME

#### 2. DML (Data Manipulation Language):
DML commands are used to manipulate data within the database. These commands allow you to perform operations like inserting, updating, and deleting records. Common DML commands include: INSERT, UPDATE, DELETE
#### 3. DCL (Data Control Language):
DCL commands are used to control access to data within the database. These commands deal with user privileges and permissions. Common DCL commands include: GRANT and REVOKE

#### 4. TCL (Transaction Control Language):
While not mentioned, TCL commands are important for managing transactions in SQL. These commands include COMMIT, ROLLBACK, and SAVEPOINT.

SQL Statements:
#### SELECT: Retrieves data from one or more tables.
#### INSERT: Adds new records to a table.
#### UPDATE: Modifies existing records in a table.
#### DELETE: Removes records from a table.
#### CREATE: Creates new tables, views, or other database objects.
#### DROP:  Deletes tables, views, or other database objects.
#### ALTER: Modifies existing database objects (e.g., adding or removing columns).
#### GRANT: Used to give specific privileges to users or roles.
#### REVOKE: Used to revoke specific privileges from users or roles.

### Database Schema:
It refers to the logical organization of the database. It includes tables, their columns, relationships, constraints, etc.
#### Data typesIt supports different data types: integers, floats, strings, dates, and more. The specific types available can vary depending on the database system.
#### constraints like Primary Keys, Foreign Keys, unique, not null, default, check,and unique
where a primary key is a unique identifier for each record in a table. A foreign key is a field that refers to the primary key in another table, establishing a relationship between the two tables.

#### Joins :
SQL allows you to combine data from multiple tables using different types of joins (e.g., INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN).

#### Aggregation Functions:
SQL provides functions like SUM, COUNT, AVG, MIN, and MAX to perform operations on sets of data.

#### Conditions and Filtering:
The WHERE clause is used to filter records based on specified conditions. You can use logical operators like AND, OR, and NOT.
Grouping and Aggregation:

The GROUP BY clause allows you to group rows that have the same values into summary rows, like calculating totals or averages.

#### Subqueries:

Subqueries are queries nested within other queries. They are used to perform operations on the result set of an outer query.
Views:
#### View
A view is a virtual table created from the result of a SELECT query. It allows you to present data in a specific way without modifying the actual underlying tables.

#### Indexes:
Indexes are used to optimize the performance of queries, particularly for large datasets.

#### Transactions:
A transaction is a series of SQL operations that must be completed as a whole. It ensures data integrity.

#### Stored Procedures and Functions:
These are reusable blocks of SQL code that can be executed with a single command. They can take parameters and return results.
