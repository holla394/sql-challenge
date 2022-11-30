CREATE TABLE Departments (
    dept_no VARCHAR(30) PRIMARY KEY NOT NULL,
    dept_name char(30) NOT NULL
);

CREATE TABLE Employees (
    emp_no numeric(30) PRIMARY KEY NOT NULL,
    emp_title_id VARCHAR(30) NOT NULL,
    birth_date DATE NOT NULL,
    first_name char(30) NOT NULL,
    last_name char(30) NOT NULL,
    sex char(30),
    hire_date DATE NOT NULL
);

CREATE TABLE Dept_manager (
    dept_no VARCHAR(30) NOT NULL,
    emp_no numeric(30) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE Dept_emp (
    id SERIAL PRIMARY KEY,
    emp_no numeric(30) NOT NULL,
    dept_no VARCHAR(30) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE Salaries (
    id SERIAL PRIMARY KEY,
    emp_no numeric NOT NULL,
    salary numeric NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Titles (
    title_id VARCHAR(30) PRIMARY KEY NOT NULL,
    title char(30) NOT NULL
);