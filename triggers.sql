CREATE TABLE update_EmployeeDetails (
    empid INT,
    name VARCHAR(20),
    department VARCHAR(10),
    oldSalary DECIMAL(10,2),
    newSalary DECIMAL(10,2),
    dateAndTime DATETIME
);
drop trigger Update_trigger;
DELIMITER $$
CREATE TRIGGER Update_trigger
AFTER UPDATE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO update_EmployeeDetails
    VALUES (OLD.id, OLD.name, OLD.department, OLD.salary, NEW.salary, NOW());
END $$
DELIMITER ;

UPDATE employees
SET salary = salary + 10000;

SELECT * FROM update_EmployeeDetails;


