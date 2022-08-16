# Pewlett-Hackard-Analysis
This analysis was performed using pgAdmin4 and PostgreSQL 11.

## Overview
The purpose of this analysis is to prepare for future transitions within the company as a large number of employees reach retirement age. This "silver tsunami" will leave many departments without leadership and key positions within the company. Therefore, it is necessary to determine the number of retiring employees in Pewlett-Hackard and also highlight the employees that are eligible to participate in a mentorship program to replace those retiring.

## Results

* There are 72,458 employees approaching retirement (considered as such if the employee's birth year falls between 1952 and 1955).

* There are 1,549 employees eligible under the current parameters for a potential mentorship program to train up the next generation of Pewlett-Hackard employees. Currently, the criteria for the mentorship program includes any employee born in 1965, giving approximately ten to fifteen years for mentors to train employees to fill the positions of those retiring. 

* The following table shows the distribution counts of employees approaching retirement. Note that two-thirds of the positions needing to be filled are Senior Engineer and Senior Staff positions.

![alt text](https://github.com/ajkriegz/Pewlett-Hackard-Analysis/blob/main/Resources/retiring_titles_table.png "Count of employees retiring by title")

* Notably, only two managers are retiring soon.

## Summary

> How many roles will need to be filled as the "silver tsunami" begins to make an impact? 

According to the criteria set forth for this analysis, over 72,000 employees are close to retiring. This is a staggering number, but perhaps this is not the number that needs to be filled. Department heads will need to evaluate whether they need every role filled or if there is room for automating or outsourcing the tasks previously performed by these roles.

> Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

While there are over 72,000 employees ready for retirement, there are only 1549 eligible to be mentors according to the criteria set forth in this analysis. While they have ten or more years before they reach the retiring benchmark set by this analysis, this is a big ask of so few for a period of ten years. It would be helpful to attempt to retain more experienced employees in a semi-retired role to take on the capacity of mentors and trainers and share the responsibility of this large task.

> How many mentors are eligible compared to the number of roles needing filled?

Refer to the following tables for this question. The first table is again the count of employees retiring grouped by their title. The second table is the count of eligible mentors grouped by their title. 

![alt text](https://github.com/ajkriegz/Pewlett-Hackard-Analysis/blob/main/Resources/retiring_titles_table.png "Count of employees retiring by title")

![alt text](https://github.com/ajkriegz/Pewlett-Hackard-Analysis/blob/main/Resources/mentor_titles_table.png "Count of eligible mentors by title")

As we can see, Senior Staff and Senior Engineers will have their work disproportionately cut out for them in training the next generation. Technique leaders and Assistant Engineers also have a large number of people to be responsible for, if distributed evenly. Additionally, see the following:

The statement `SELECT COUNT(emp_no) FROM dept_manager;` returns a count of 24 managers.

Note that 2 managers are within retirement age. While this is not a large number to have to replace, there are no employees eligible for mentoring that are managers. 

We recommend expanding the eligibility criteria for mentoring to decrease the potential workload for mentors. Additionally, aggressive hiring practices may be necessary to replenish Pewlett-Hackard's ranks.