REM vullen van tabel cursussen
INSERT INTO cursussen
VALUES(
  'SQL1', 'Introductie SQL', 'BASIC', 2
)
;

INSERT INTO cursussen
VALUES(
  'SQL2', 'SQL Advanced', 'ADV', 3
)
;

INSERT INTO cursussen
VALUES(
  'SQL3', 'PL/SQL', 'PROGR', 3
)
;

REM vullen van tabel uitvoeringen
INSERT INTO uitvoeringen
VALUES(
  'SQL1', TO_DATE('01/06/2014', 'dd/mm/yyyy'), 107, 'Brussel'
)
;

INSERT INTO uitvoeringen
VALUES(
  'SQL1', TO_DATE('08/06/2014', 'dd/mm/yyyy'), 107, 'Hasselt'
)
;

INSERT INTO uitvoeringen
VALUES(
  'SQL2', TO_DATE('04/06/2014', 'dd/mm/yyyy'), 201, 'Brussel'
)
;

INSERT INTO uitvoeringen
VALUES(
  'SQL3', TO_DATE('10/06/2014', 'dd/mm/yyyy'), 201, 'Brussel'
)
;