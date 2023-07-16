USE hr_system;

CREATE TABLE employees (
  employee_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  gender VARCHAR(1) NOT NULL,
  department_id INT NOT NULL,
  manager_id INT,
  PRIMARY KEY (employee_id)
);

CREATE TABLE departments (
  department_id INT NOT NULL AUTO_INCREMENT,
  department_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (department_id)
);

CREATE TABLE managers (
  manager_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (manager_id)
);

ALTER TABLE employees
ADD FOREIGN KEY (department_id) REFERENCES departments (department_id);

ALTER TABLE employees
ADD FOREIGN KEY (manager_id) REFERENCES managers (manager_id);
