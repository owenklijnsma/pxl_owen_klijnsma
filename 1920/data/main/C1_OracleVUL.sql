REM putting values into members
REM _______________________________________  OK

INSERT INTO members
VALUES(85020119960, 'Owen', 'Klijnsma', 'MAROKKAAN', 'Owen.Klijnsma69@gmail.com', 'V', 85020119960)
/

INSERT INTO members
VALUES(98547651023, 'Hanne', 'Vanmechelen', 'MONGOLIAANS', 'Hanne.vanmechelen@hotmail.be', 'M', 85020119960)
/

INSERT INTO members
VALUES(86963147857, 'Didier', 'Klijnsma', 'BELG', 'Didier@klijnsma.be', 'M', 85020119960)
/

INSERT INTO members
VALUES(97654893199, 'Niels', 'Van der Stappen', 'BELG', 'Niels.vanderstappen@student.pxl.be', 'M', 97654893199)
/

INSERT INTO members
VALUES(98765436987, 'Jente', 'Van der Stappen', 'BELG', 'Jente.vanderstappen@hotmail.com', 'M', 97654893199)
/

INSERT INTO members
VALUES(54873198654, 'Anne-Katrien', 'Van der Stappen', 'BELG', 'Anne-Katrien.vanderstappen@gmail.com', 'V', 97654893199)
/

INSERT INTO members
VALUES(54786321478, 'Thibaut', 'Van der Stappen', 'BELG', 'Thibaut.vanderstappen@hotmail.be', 'M', 97654893199)
/


REM putting values into countries
REM _______________________________________  OK

INSERT INTO countries
VALUES ('BE', 'Belgie')
/

INSERT INTO countries
VALUES ('NL', 'Nederland')
/

INSERT INTO countries
VALUES ('FR', 'Frankrijk')
/


REM putting values into zip_code
REM _______________________________________  OK

INSERT INTO zip_codes
VALUES (3000, 'Leuven', 'BE')
/

INSERT INTO zip_codes
VALUES (3460, 'assent', 'BE')
/

INSERT INTO zip_codes
VALUES(3600, 'Genk', 'BE')
/

INSERT INTO zip_codes
VALUES (3140, 'Keerbergen', 'BE')
/

INSERT INTO zip_codes
VALUES (3500, 'Hasselt', 'BE')
/

INSERT INTO zip_codes
VALUES (1000, 'Brussel', 'BE')


REM putting values into addresses
REM _______________________________________  OK

INSERT INTO addresses
VALUES(0001, 'Rijnrode', '95A', null, 3460)
/

INSERT INTO addresses
VALUES(0002, 'Naamsestraat', '205', null, 3000)
/

INSERT INTO addresses
VALUES(0003, 'Ridderstraat', '47', '8', 3140)
/

INSERT INTO addresses
VALUES(0004, 'Nieuwweg', '54B', null, 3600)
/

INSERT INTO addresses
VALUES(0005, 'Vilderstraat', '1', null, 3500)
/

INSERT INTO addresses
VALUES(0006, 'Koningin ElizabethLaan', '5', '5', 3000)
/

INSERT INTO addresses
VALUES(9999, 'Vilderstraat', '2', null, 3500)
/

INSERT INTO addresses
VALUES(9998, 'Philipsite', '1', null, 3000)
/

INSERT INTO addresses
VALUES(9997, 'Rogier van der Weyndenstraat', '3', null, 3000)
/


REM putting values into address_types
REM _______________________________________  NEEDS CHECK

INSERT INTO address_types
VALUES('Y', 'Home adress')
/

INSERT INTO address_types
VALUES('N', 'Not home adress, either business or different, no correspondance trought this identifier')
/


REM putting values into address_members
REM _______________________________________  NEEDS CHECK DEPENDING ON ADDRESS_TYPE

INSERT INTO address_members
VALUES(85020119960, 'Y', 0003)
/

INSERT INTO address_members
VALUES(98547651023, 'Y', 0006)
/

INSERT INTO address_members
VALUES(86963147857, 'Y', 0003)
/

INSERT INTO address_members
VALUES(86963147857, 'N', 0002)
/

INSERT INTO address_members
VALUES(97654893199, 'Y', 0001)
/

INSERT INTO address_members
VALUES(98765436987, 'Y', 0001)
/

INSERT INTO address_members
VALUES(54873198654, 'Y', 0001)
/

INSERT INTO address_members
VALUES(54786321478, 'Y', 0001)
/


REM putting values into locations
REM _______________________________________  OK


INSERT INTO locations
VALUES ('HASS', 'Hasselt', 'sportzaal 2', 9999)
/

INSERT INTO locations
VALUES('LEUV', 'Leuven', 'SportOase', 9998)
/

INSERT INTO locations
VALUES ('BRUS', 'Brussel', 'Zuidpaleis', 9997)
/


REM putting values into sports
REM _______________________________________  OK


INSERT INTO sports
VALUES ('watersport', 'zwemmen', '400m crawl')
/

INSERT INTO sports
VALUES ('balsport', 'basket', '90minuten thuismatch')
/

INSERT INTO sports
VALUES ('voetbalsport', 'voetbal', 'Genk - Anderlecht')
/

INSERT INTO sports
VALUES('autosport', 'karten', 'Mol - kartbaan')
/

INSERT INTO sports
VALUES('atletiek', '400m', 'opwarming tot eindsprint')
/


REM putting values into activities
REM _______________________________________  OK


INSERT INTO activities
VALUES(0001, 'atletiek', to_date('2019', 'yyyy'), to_date('2020', 'yyyy'), 'sporthasselt', 'HASS', 100, to_date('09:30', 'HH24:MI') ,to_date('12:00', 'HH24:MI'), 20, to_date('02/01/2020', 'dd/mm/yyyy'))
/

INSERT INTO activities
VALUES (0002, 'balsport', to_date('2020', 'yyyy'), to_date('2020', 'yyyy'), 'sportbrussel', 'BRUS', 26, to_date('19:30', 'HH24:MI'), to_date('21:00', 'HH24:MI'), 10, to_date('01/10/2020', 'dd/mm/yyyy'))
/

INSERT INTO activities
VALUES (0003, 'balsport', to_date('2020', 'yyyy'), to_date('2020', 'yyyy'), null , 'HASS', 26, to_date('19:30', 'HH24:MI'), to_date('21:00', 'HH24:MI'), 15, to_date('01/11/2020', 'dd/mm/yyyy'))
/

INSERT INTO activities
VALUES (0004, 'balsport', to_date('2020', 'yyyy'), to_date('2020', 'yyyy'), 'sportbrussel', 'BRUS', 14, to_date('19:30', 'HH24:MI'), to_date('21:00', 'HH24:MI'), 5, to_date('01/11/2020', 'dd/mm/yyyy'))
/

INSERT INTO activities
VALUES (0005, 'watersport', to_date('2020', 'yyyy'), to_date('2020', 'yyyy'), 'Christelijke Mutualiteit', 'LEUV', 26, to_date('19:30', 'HH24:MI'), to_date('21:00', 'HH24:MI'), 15, to_date('01/11/2020', 'dd/mm/yyyy'))
/

INSERT INTO activities
VALUES (0006, 'balsport', to_date('2020', 'yyyy'), to_date('2020', 'yyyy'), 'sportbrussel', 'BRUS', 26, to_date('19:30', 'HH24:MI'), to_date('21:00', 'HH24:MI'), 15, to_date('01/11/2020', 'dd/mm/yyyy'))
/

INSERT INTO activities
VALUES (0007, 'autosport', to_date('2020', 'yyyy'), to_date('2020', 'yyyy'), 'sport Leuven', 'LEUV', 75, to_date('19:30', 'HH24:MI'), to_date('21:00', 'HH24:MI'), 15, to_date('01/11/2020', 'dd/mm/yyyy'))
/

INSERT INTO activities
VALUES (0008, 'balsport', to_date('2020', 'yyyy'), to_date('2020', 'yyyy'), 'sport Hasselt', 'HASS', 26, to_date('19:30', 'HH24:MI'), to_date('21:00', 'HH24:MI'), 15, to_date('01/11/2020', 'dd/mm/yyyy'))
/


REM putting values into reservations
REM _______________________________________  OK

INSERT INTO reservations
VALUES(97654893199, 0007)
/

INSERT INTO reservations
VALUES(85020119960, 0007)
/

INSERT INTO reservations
VALUES(98547651023, 0005)
/

INSERT INTO reservations
VALUES(54786321478, 0006)
/

INSERT INTO reservations
VALUES(54873198654, 0008)
/

INSERT INTO reservations
VALUES(98765436987, 0003)
/

INSERT INTO reservations
VALUES(97654893199, 0002)
/

INSERT INTO reservations
VALUES(86963147857, 0001)
/


REM putting values into activity_dates
REM _______________________________________  OK

INSERT INTO activity_dates
VALUES(0001, to_date('18/07/2020', 'dd/mm/yyyy'))
/

INSERT INTO activity_dates
VALUES(0001, to_date('19/07/2020', 'dd/mm/yyyy'))
/

INSERT INTO activity_dates
VALUES(0002, to_date('19/07/2020', 'dd/mm/yyyy'))
/

INSERT INTO activity_dates
VALUES(0002, to_date('20/07/2020', 'dd/mm/yyyy'))
/

INSERT INTO activity_dates
VALUES(0003, to_date('20/01/2020', 'dd/mm/yyyy'))
/

INSERT INTO activity_dates
VALUES(0004, to_date('03/02/2020', 'dd/mm/yyyy'))
/

INSERT INTO activity_dates
VALUES(0005, to_date('04/01/2020', 'dd/mm/yyyy'))
/

INSERT INTO activity_dates
VALUES(0006, to_date('08/08/2020', 'dd/mm/yyyy'))
/

INSERT INTO activity_dates
VALUES(0007, to_date('07/02/2020', 'dd/mm/yyyy'))
/

INSERT INTO activity_dates
VALUES(0008, to_date('28/12/2020', 'dd/mm/yyyy'))
/


REM putting values into subscription_dates
REM _______________________________________  OK check inhabitant

INSERT INTO subscription_dates
VALUES(0002, 'N', to_date('19/07/2019', 'dd/mm/yyyy'))
/

INSERT INTO subscription_dates
VALUES(0001,'Y', to_date('18/07/2019', 'dd/mm/yyyy'))
/

INSERT INTO subscription_dates
VALUES(0003, 'N', to_date('20/01/2019', 'dd/mm/yyyy'))
/

INSERT INTO subscription_dates
VALUES(0004, 'Y', to_date('03/02/2019', 'dd/mm/yyyy'))
/

INSERT INTO subscription_dates
VALUES(0005, 'N', to_date('04/01/2019', 'dd/mm/yyyy'))
/

INSERT INTO subscription_dates
VALUES(0006, 'Y', to_date('08/08/2019', 'dd/mm/yyyy'))
/

INSERT INTO subscription_dates
VALUES(0007, 'N', to_date('07/02/2019', 'dd/mm/yyyy'))
/

INSERT INTO subscription_dates
VALUES(00008, 'Y', to_date('28/12/2019', 'dd/mm/yyyy'))
/
