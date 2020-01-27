INSERT INTO my_employee
VALUES(
	&id,
	INITCAP('&last_name'), 
	INITCAP('&first_name'), 
	LOWER('&userid'),
	&salary)
/