# SQL Challenge - Pewlett Hackard Employee Data Analysis

## Overview

This project focuses on analyzing employee data from Pewlett Hackard during the 1980s and 1990s. The main tasks include designing database tables based on provided CSV files, importing data into a SQL database, and conducting data analysis through SQL queries.

## Project Components

### Data Modeling

- **Entity Relationship Diagram (ERD):**
  - Created to visualize table relationships based on the structure of the CSV files.

### Data Engineering

- **Table Schema Creation:**
  - Designed schemas for each CSV file, specifying data types, primary keys, foreign keys, and constraints.

- **Table Creation Order:**
  - Ensured tables were created in the correct order to handle dependencies among foreign keys.

- **Data Import:**
  - Imported data from CSV files into corresponding SQL tables, accounting for headers and data integrity.

### Data Analysis

- **SQL Queries:**
  - Conducted several queries to extract insights from the data, including:
    1. Employee details: employee number, last name, first name, sex, and salary.
    2. Employees hired in 1986: first name, last name, and hire date.
    3. Department managers: department number, department name, manager's employee number, last name, and first name.
    4. Employee departments: department number, employee number, last name, first name, and department name.
    5. Employees named Hercules whose last names start with 'B': first name, last name, and sex.
    6. Sales department employees: employee number, last name, and first name.
    7. Sales and Development department employees: employee number, last name, first name, and department name.
    8. Frequency of employee last names in descending order.

