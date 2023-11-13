# Developing-insight-into-the-WLB-Work-Life-Balance-of-employees
This exercise involves leveraging SQL to examine a dataset of employee reviews, aiming to address key inquiries regarding the overall quality of life ratings of employees. The objective is to extract valuable insights from the data and apply the findings to inform crucial organizational decisions.

![](SQL.jpg)         

## Introduction
In SSMS, I would create a database named "Student Record" and design tables for student information, health records, and performance. Each table has a unique ID, and constraints are added to prevent null values in the ID and subject fields, ensuring data integrity for managing student records.

_**Disclaimer**_ ⚠️- _All data used for this record are hypothetical data generated and do not represent any company's data._

## STUDENT RECORD FOR FLYHIGH INSTITUTE...
The task will address the following: 
![](Tt.png)
       

## Problem Statement:

The challenge is to establish a database named "Student Record" using SQL Server Management Studio (SSMS). Inside this database, I need to create three tables: "Student Information," "Health Record," and "Performance." It's crucial to guarantee that the 'ID' column in each table is unique and implement constraints to prevent 'ID' and 'Subject' columns from accepting null values.

**SSMS Interface**                              |  **Overall Summary of the Code**             
:----------------------------------------------:|:--------------------------------:
![](Tx1.png)                                    |          ![](Tx2.png)        


## Skill and Concept Demonstrated:

It demonstrated a range of essential data management skills, such as:
- CRUD (Create, Retrieve, Update, Drop)
- Primary Keys
- Foreign Keys
- Alter syntax
- EXEC sp_replace syntax

## Data Modelling:
To model this scenario as a database schema,I defined the three tables: "StudentInformation," "HealthRecord," and "Performance." Each table with a unique 'ID' column, and I used the 'Student_ID' column to establish relationships between the tables. Here's how it would look using SQL to create these tables and set up the relationships:

![](Tx3.png)


## Data Visualization 

### *Pictural representation of the three tables*

![](Tx4.png)

### *Modification to the table*
Using the "ALTER TABLE" syntax, I changed the coulmn name "SUBJECT_OFFERED_BY_STUDENT" to "COURSE" and also dropped the "Age" column from the STUDENT_INFOS table. This is shown below:

*New Column Name "COURSE"*                      |   *Dropped Column "AGE"*                
:----------------------------------------------:|:--------------------------------:
![](Tx5.png)                                    |      ![](Without_AGE.png)                
---
In summary, I demonstrated proficiency in CRUD operations (Create, Retrieve, Update, Delete) while recognizing the importance of primary keys for data uniqueness and foreign keys for establishing relationships between tables. These crucial skills are vital for effective database management and ensuring data integrity.


# THANK YOU !
## Acknowledgemnent 🙏 🙏

Online sources were used to obtain the first  image in this documentation:
- https://hackersandslackers.com



