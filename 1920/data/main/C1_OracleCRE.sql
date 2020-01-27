ALTER SESSION
SET NLS_TERRITORY = 'AMERICA';

ALTER SESSION
SET NLS_LANGUAGE = 'AMERICAN';

REM ****************************************************************
REM DROP tables
REM ****************************************************************

DROP TABLE members CASCADE CONSTRAINTS;
DROP TABLE addresses CASCADE CONSTRAINTS;
DROP TABLE address_types CASCADE CONSTRAINTS;
DROP TABLE address_members CASCADE CONSTRAINTS;
DROP TABLE zip_codes CASCADE CONSTRAINTS;
DROP TABLE countries CASCADE CONSTRAINTS;
DROP TABLE locations CASCADE CONSTRAINTS;
DROP TABLE sports CASCADE CONSTRAINTS;
DROP TABLE reservations CASCADE CONSTRAINTS;
DROP TABLE activities CASCADE CONSTRAINTS;
DROP TABLE activity_dates CASCADE CONSTRAINTS;
DROP TABLE subscription_dates CASCADE CONSTRAINTS;

REM **************************************************************** --OK
REM Creatie tabel members
CREATE TABLE members(
  national_id         NUMBER(11)    CONSTRAINT  m_nat_id_PK     PRIMARY KEY
                                    NOT NULL,
  firstname           VARCHAR2(40),
  lastname            VARCHAR2(40)  NOT NULL,
  nationality         VARCHAR2(20),
  email               VARCHAR2(60),
  sex                 VARCHAR2(10)  NOT NULL,
  national_id_payer   NUMBER(11)    CONSTRAINT  m_nat_id_pay_FK REFERENCES members(national_id)
                                    NOT NULL,
	CONSTRAINT national_id_CHK CHECK (LENGTH(national_id) = 11)
);

REM **************************************************************** --OK
REM Creatie tabel countries
CREATE TABLE countries(
country_id  VARCHAR2(4)     CONSTRAINT  country_id_PK PRIMARY KEY
                          NOT NULL,
country     VARCHAR2(40)
);

REM **************************************************************** --OK
REM Creatie tabel zip_codes
CREATE TABLE zip_codes(
zip_code    NUMBER(4)     CONSTRAINT  zc_zip_code_PK          PRIMARY KEY
                          CONSTRAINT  zc_zip_code_CHK  CHECK(zip_code BETWEEN 999 AND 9999)
                          NOT NULL,
city        VARCHAR2(40)  NOT NULL,
country_id  VARCHAR2(4)     CONSTRAINT  zc_cntry_id_FK          REFERENCES countries(country_id)
                          NOT NULL
);

REM **************************************************************** --OK
REM Creatie tabel addresses
CREATE TABLE addresses(
  address_id  NUMBER(4)     CONSTRAINT  ad_add_id_PK            PRIMARY KEY
                            NOT NULL,
  street      VARCHAR2(40)  NOT NULL,
  housenumber VARCHAR2(3)     NOT NULL,
  letterbox   VARCHAR2(4),
  zip_code    NUMBER(4)     CONSTRAINT  ad_zip_code_FK          REFERENCES zip_codes(zip_code)
                            CONSTRAINT  zc_zip_code_lengte_CHK  CHECK(zip_code BETWEEN 999 AND 9999)
                            NOT NULL
);

REM **************************************************************** --OK
REM Creatie tabel address_types
CREATE TABLE address_types(
  address_type        CHAR(1)       CONSTRAINT  at_add_type_PK  PRIMARY KEY,
  address_description VARCHAR2(100) NOT NULL
);

REM **************************************************************** --OK
REM Creatie tabel address_members
CREATE TABLE address_members(
  national_id   NUMBER(11)     CONSTRAINT  am_nat_id_FK    REFERENCES members(national_id)
                              NOT NULL,
  address_type  CHAR(1)       CONSTRAINT  am_add_type_FK  REFERENCES address_types(address_type)
                              NOT NULL,
  address_id     NUMBER(4)    CONSTRAINT  am_add_id_FK    REFERENCES addresses(address_id)
                              NOT NULL,
  CONSTRAINT  am_nat_id_add_type_PK PRIMARY KEY(national_id, address_type)
);

REM **************************************************************** --OK
REM Creatie tabel locations
CREATE TABLE locations(
location_id     VARCHAR2(4)       CONSTRAINT  location_id_PK  PRIMARY KEY
                              NOT NULL,
location_name   VARCHAR2(40)  NOT NULL,
location_info   VARCHAR2(40)  NOT NULL,
address_id      NUMBER(4)    CONSTRAINT  adress_id_FK    REFERENCES addresses(address_id)
                              NOT NULL
);

REM **************************************************************** --OK
REM Creatie tabel sports
CREATE TABLE sports(
sport_type    VARCHAR2(20)  CONSTRAINT  sp_sport_type_PK PRIMARY KEY
                            NOT NULL,
sport_name    VARCHAR2(40)  NOT NULL,
description   VARCHAR2(100) NOT NULL
);

REM **************************************************************** --OK
REM Creatie tabel activities
CREATE TABLE activities(
  sport_id              NUMBER(4)     CONSTRAINT  ac_sport_id_PK  PRIMARY KEY
                                      NOT NULL,
  sport_type            VARCHAR2(20)  NOT NULL,
  startyear             DATE          NOT NULL,
  endyear               DATE          NOT NULL,
  partner               VARCHAR2(30),
  location_id           VARCHAR2(4)    CONSTRAINT  ac_loc_id_FK    REFERENCES locations(location_id)
                                      NOT NULL,
  max_participants      NUMBER(3)     NOT NULL,
  starttime             DATE          NOT NULL,
  endtime               DATE          NOT NULL,
  price                 NUMBER(5, 2)  NOT NULL,
  subscription_enddate  DATE          NOT NULL
);

REM **************************************************************** --OK
REM Creatie tabel reservations
CREATE TABLE reservations(
  national_id NUMBER(11) CONSTRAINT  re_nat_id_FK    REFERENCES members(national_id),
  sport_id    NUMBER(4) CONSTRAINT  re_sport_id_FK  REFERENCES activities(sport_id),
  CONSTRAINT re_nat_id_sport_id_PK  PRIMARY KEY(national_id, sport_id)
);

REM **************************************************************** --OK
REM Creatie tabel activity_dates
CREATE TABLE activity_dates(
  sport_id    NUMBER(4) CONSTRAINT  ad_sport_id_FK  REFERENCES activities(sport_id),
  sport_date  DATE      NOT NULL,
  CONSTRAINT ad_sport_id_sport_date_PK  PRIMARY KEY(sport_id, sport_date)
);

REM **************************************************************** --OK
REM Creatie tabel subscription_dates
CREATE TABLE subscription_dates(
  sport_id                NUMBER(4)   	CONSTRAINT  sd_sport_id_FK REFERENCES activities(sport_id),
  inhabitant              CHAR(1)		CONSTRAINT  inhabitant_nn  NOT NULL
										CONSTRAINT  inhabitant_CHK CHECK (inhabitant = 'Y' OR inhabitant = 'N'),
  subscription_startdate  DATE        NOT NULL,
  CONSTRAINT  sd_sport_id_inhab_PK  PRIMARY KEY(sport_id, inhabitant)
);
