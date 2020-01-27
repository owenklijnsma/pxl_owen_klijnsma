REM creatie tabel cursussen
DROP TABLE cursussen CASCADE CONSTRAINTS  --tabel moet verwijderd worden indien ze al bestaat
;

CREATE TABLE cursussen(
  curs_code   VARCHAR2(4)   CONSTRAINT  c_code_PK     PRIMARY KEY,
  curs_omschr VARCHAR2(50)  CONSTRAINT  c_omschr_NN   NOT NULL,
  curs_type   VARCHAR(10)   CONSTRAINT  c_type_NN     NOT NULL,
  curs_lengte NUMBER(2)     CONSTRAINT  c_lengte_CHK  CHECK(curs_lengte BETWEEN 1 AND 10),
  CONSTRAINT  c_type_CHK    CHECK(curs_type = UPPER(curs_type))
)
;

REM creatie tabel uitvoeringen
DROP TABLE uitvoeringen CASCADE CONSTRAINTS
;

CREATE TABLE uitvoeringen(
  cursus      VARCHAR2(4)   CONSTRAINT  u_cursus_FK   REFERENCES cursussen(curs_code)
                            CONSTRAINT  u_cursus_NN   NOT NULL,
  begindatum  DATE          CONSTRAINT  u_begin_NN    NOT NULL,
  docent      NUMBER(4)     CONSTRAINT  u_docent_FK   REFERENCES employees(employee_id)
                            CONSTRAINT  u_docent_NN   NOT NULL,
  locatie     VARCHAR2(2),
  CONSTRAINT  u_curs_begin_PK PRIMARY KEY(cursus, begindatum)
)
;

REM creatie tabel inschrijvingen
DROP TABLE inschrijvingen CASCADE CONSTRAINTS
;

CREATE TABLE inschrijvingen(
  cursist     NUMBER(4)     NOT NULL
                            CONSTRAINT  i_cursist_FK  REFERENCES employees(employee_id),
  cursus      VARCHAR2(4)   NOT NULL,
  begindatum  DATE          NOT NULL,
  evaluatie   NUMBER(1)     CONSTRAINT  i_eval_CHK  CHECK(evaluatie BETWEEN 0 AND 5),
  CONSTRAINT  i_cursist_cursus_PK PRIMARY KEY(cursist, cursus),
  CONSTRAINT  i_cursus_begin_FK   FOREIGN KEY(cursus, begindatum) REFERENCES uitvoeringen(cursus, begindatum)
)
;