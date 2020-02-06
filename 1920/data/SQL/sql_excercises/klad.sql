SELECT e.last_name, e.department_id, d.department_name
FROM departments d
RIGHT OUTER JOIN employees e ON e.department_id = d.department_id
;

SELECT d.department_id, d.department_name, e.last_name||' '||e.first_name AS "NAME"
FROM departments d
FULL OUTER JOIN employees e ON d.department_id = e.department_id
;

- examen opdracht 1 -
SELECT UNIQUE(ac.sport_id), TO_CHAR(2020 - ac.endyear) AS "MINIMUM LEEFTIJD", TO_CHAR(ac.starttime, 'hh:mm') AS "BEGIN",
  TO_CHAR(ac.endtime, 'hh:mm') AS "EIND", TO_CHAR(ad.sport_date, 'fmDay') AS "WEEKDAG"
FROM sports s
JOIN activities ac ON s.sport_type = ac.sport_type
JOIN activity_dates ad ON ac.sport_id = ad.sport_id
WHERE s.sport_name = 'Aquafit' AND ad.sport_date LIKE '%20'
ORDER BY ac.sport_id ASC
;

- examen opdracht 2 -
commit
;

- examen opdracht 3 -
SELECT UNIQUE(ac.sport_id), ac.max_participants AS "Vrije plaatsen"
FROM activities ac
JOIN reservations r ON ac.sport_id = r.sport_id
ORDER BY 2
;

NVL(TO_CHAR(ac.max_participants - 20), 'Volzet')

- examen opdracht 4 -
SELECT m.firstname, m.lastname
FROM members m
JOIN members bet ON m.national_id_payer = bet.national_id
WHERE m.national_id_payer LIKE '&betaler_national_id' AND m.lastname NOT LIKE bet.lastname
;

- examen opdracht 5 -
restore
;

- examen opdracht 6 -

;
