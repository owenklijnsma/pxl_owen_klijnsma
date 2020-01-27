# Voorbeelden H4
---
```sql
SELECT ROUND(sysdate, 'YEAR')
FROM dual
;
```

```sql
SELECT ROUND(TO_DATE('01-AUG-19', 'DD-MON-YY'), 'YEAR')
FROM dual
;
```

```sql
SELECT ROUND(TO_DATE('01/08/2019', 'DD/MM/YYYY'), 'YEAR')
FROM dual
;
```

```sql
SELECT TO_CHAR(sysdate, 'DDSP DAY Month Year')
FROM dual
;
```

```sql
SELECT TO_CHAR(1521.25, '$999,999.00')
FROM dual
;
```

```sql
SELECT TO_CHAR(-1521.25, 'S999,999.00')
FROM dual
;
```

```sql
SELECT sysdate - TO_DATE('02-JAN-01', 'DD-MON-YY')
FROM dual
;
```

## Full Examples
```sql
SELECT last_name, TO_CHAR(hire_date, 'fmDdspth "of" Month, YYYY') "Hiredate"
FROM employees
;
```

```sql
SELECT CONCAT('The next meeting will be on ', TO_CHAR(NEXT_DAY(LAST_DAY(sysdate), 'MONDAY'), 'fmDay, Month ddth YYYY')) "Datum Vergadering"
FROM dual
;
```

```sql
SELECT last_name, NVL(salary, )
FROM employees
;
```

```sql
SELECT last_name, job_id, salary,
	CASE
		WHEN salary > 5000		THEN salary * 1.1
		WHEN job_id = 'SA_REP'	THEN salary * 1.15
		END	"Revised Salary"
FROM employees
;
```
