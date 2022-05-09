
--- create new schema dentist
CREATE SCHEMA `dentist` ;

--- create table specialist

CREATE TABLE  `dentist`.`specialist` (
  `SPEC_ID` int(11) NOT NULL,
  `SPEC_FIRSTNANE` varchar(45) NOT NULL,
  `SPEC_LASTNAME` varchar(45) NOT NULL,
  `SPEC_ADDRESS` varchar(90) NOT NULL,
  PRIMARY KEY (`SPEC_ID`)
);

--- create table patients

CREATE TABLE  `dentist`.`patients` (
  `PAT_ID` int(11) NOT NULL,
  `PAT_FIRSTNAME` varchar(45) NOT NULL,
  `PAT_LASTNAME` varchar(45) NOT NULL,
  `PAT_ADDRESS` varchar(90) NOT NULL,
  `PAT_SPEC_ID` int(11) NOT NULL,
  PRIMARY KEY (`PAT_ID`),
  KEY `PAT_SPEC_ID_idx` (`PAT_SPEC_ID`),
  CONSTRAINT `PAT_SPEC_ID` FOREIGN KEY (`PAT_SPEC_ID`) REFERENCES `specialist` (`SPEC_ID`)
);


--- create table appointments

CREATE TABLE appointments (
  APP_ID int(11) NOT NULL,
  APP_START_TIME datetime DEFAULT NULL,
  APP_END_TIME datetime DEFAULT NULL,
  APP_CANCEL_TIME datetime DEFAULT NULL,
  APP_CANCEL_FEE decimal(9,2) DEFAULT '10.00',
  APP_PAT_ID int(11) DEFAULT NULL,
  PRIMARY KEY (APP_ID),
  KEY APP_PAT_ID_idx (APP_PAT_ID)
);

--- create table treatment

CREATE TABLE  `dentist`.`treatment` (
  `TREAT_ID` int(11) NOT NULL,
  `TREAT_DESC` varchar(90) NOT NULL,
  `TREAT_PRICE` decimal(9,2) NOT NULL,
  PRIMARY KEY (`TREAT_ID`)
);

--- create table bills:

CREATE TABLE dentist.`bills` (
  BILL_ID int(11) NOT NULL,
  BILL_TOTAL_AMOUNT decimal(9,2) DEFAULT NULL,
  BILL_DUE_AMOUNT decimal(9,2) DEFAULT NULL,
  BILL_PAY_ID int(11) DEFAULT NULL,
  BILL_PAT_ID int(11) DEFAULT NULL,
  PRIMARY KEY (BILL_ID),
  KEY BILL_PAY_ID_idx (BILL_PAY_ID),
  KEY BILL_PAT_ID_idx (BILL_PAT_ID),
  CONSTRAINT BILL_PAT_ID FOREIGN KEY (BILL_PAT_ID) REFERENCES patients (PAT_ID),
  CONSTRAINT BILL_PAY_ID FOREIGN KEY (BILL_PAY_ID) REFERENCES payments (PAY_ID)
);

--- create table payments

CREATE TABLE payments (
  PAY_ID int(11) NOT NULL,
  PAY_AMOUNT decimal(9,2) DEFAULT NULL,
  PAY_TYPE varchar(45) DEFAULT NULL,
  PAY_TREAT_ID int(11) DEFAULT NULL,
  PAY_PAT_ID int(11) DEFAULT NULL,
  PRIMARY KEY (PAY_ID),
  KEY PAY_TREAT_ID_idx (PAY_TREAT_ID),
  KEY PAY_PAT_ID_idx (PAY_PAT_ID),
  CONSTRAINT PAY_PAT_ID FOREIGN KEY (PAY_PAT_ID) REFERENCES patients (PAT_ID),
  CONSTRAINT PAY_TREAT_ID FOREIGN KEY (PAY_TREAT_ID) REFERENCES treatment (TREAT_ID)
);
 
--- inserting values to specialist table

insert into specialist values (1, 'Mary', 'Mulcahy', 'Main Street, Ballycotton, Co.Cork');
insert into specialist values (2, 'Michael', 'Murphy', 'Oak Street, Cork town, Co.Cork');
insert into specialist values (3, 'Emma', 'Watson', 'Farm Street, Fermoy, Co.Cork');

--- inserting values to patients table

insert into patients values (1, 'Faolán', 'Ó Leannacháin', '9374 Davids Lane, Co.Cork', 1);
insert into patients values (2, 'Madison',  'Petersen', '4460 Harrogate Road, Naas Co.Kildare', 1);
insert into patients values (3, 'Jorge', 'Guthrie', '7547 Felix Lane SHORNE, Dublin1', 1);
insert into patients values (4, 'Lia', 'Lang', '2418 Lincoln Green Lane, Dublin 2', 1);
insert into patients values (5, 'Hanna',  'Anderson', '383 Ermin Street, Dublin 3', 1);
insert into patients values (6, 'Arya', 'Cooley', '855 Harrogate Road, Dublin 4', 1);
insert into patients values (7, 'Annabell', 'Hammond', '2976 Victoria Road, Dublin 5', 1);
insert into patients values (8, 'Katie',  'Fletcher', '1900 Park End St BROOK, Dublin 6', 1);
insert into patients values (9, 'Kayla', 'Patrick', '9079 Duckpit Lane UPPER POPPLETON Dublin 7 ', 1);
insert into patients values (10, 'Cason', 'Beard', '9688 Church Way BRADLEY GREEN, Dublin 8', 1);
insert into patients values (11, 'Angelique', 'Crawford', '6809 Brackley Road, Dublin 9', 1);
insert into patients values (12, 'Kelly', 'Winters', '5208 Pendwyallt Road, Dublin 10', 1);
insert into patients values (13, 'Krystal', 'Mooney', '7866 Bishopgate Street, Dublin 11', 1);
insert into patients values (14, 'Valentin', 'Contreras', '5553 Newmarket Road, Dublin 12', 1);
insert into patients values (15, 'Kailyn', 'Wooten', '5208 Ermin Street, Dublin 13', 1);
insert into patients values (16, 'Sabrina', 'Leblanc', '195 Prestwick Road, Dublin 14', 1);
insert into patients values (17, 'Rashad', 'Sparks', '1207 Ockham Road, Dublin 15', 1);
insert into patients values (18, 'Emelia', 'Jarvis', '91893 Stroud Rd, Cork', 1);
insert into patients values (19, 'Jonah', 'Calhoun', '2995 Southend Avenue, Cork', 1);
insert into patients values (20, 'Shelby', 'Porter', '7163 Petworth Rd, Cork', 1);
insert into patients values (21, 'Preston', 'Hopkins', '2771 Netherpark Crescent,Cork', 1);

--- inserting values to appointments table

insert into appointments values (1, '2021-01-02 09:00', '2021-01-02 10:00', NULL, NULL, 1);
insert into appointments values (2, '2021-01-01 09:00', '2021-01-01 10:00', NULL, NULL, 1);
insert into appointments values (3, '2021-01-03 10:00', '2021-01-03 11:00', '2021-01-03 10:00', 10, 2);
insert into appointments values (4, '2021-01-04 11:00', '2021-01-04 12:00', NULL, NULL, 3);
insert into appointments values (5, '2021-01-05 12:00', '2021-01-05 13:00', NULL, NULL, 4);
insert into appointments values (6, '2021-01-06 09:00', '2021-01-06 10:00', NULL, NULL, 5);
insert into appointments values (7, '2021-01-07 10:00', '2021-01-07 11:00', NULL, NULL, 6);
insert into appointments values (8, '2021-01-08 11:00', '2021-01-08 12:00', NULL, NULL, 7);
insert into appointments values (9, '2021-01-09 12:00', '2021-01-09 13:00', '2021-01-09 12:00', 10, 8);
insert into appointments values (10, '2021-01-10 09:00', '2021-01-10 10:00', NULL, NULL, 9);
insert into appointments values (11, '2021-01-11 10:00', '2021-01-11 11:00', NULL, NULL, 10);
insert into appointments values (12, '2021-01-12 11:00', '2021-01-12 10:00', NULL, NULL, 11);
insert into appointments values (13, '2021-01-13 12:00', '2021-01-13 13:00', NULL, NULL, 12);
insert into appointments values (14, '2021-01-14 09:00', '2021-01-14 10:00', NULL, NULL, 13);
insert into appointments values (15, '2021-01-15 10:00', '2021-01-15 11:00', NULL, NULL, 14);
insert into appointments values (16, '2021-01-16 11:00', '2021-01-16 12:00', NULL, NULL, 15);
insert into appointments values (17, '2021-01-17 12:00', '2021-01-17 13:00', '2021-01-17 12:00', 10, 16);
insert into appointments values (18, '2021-01-18 09:00', '2021-01-18 10:00', NULL, NULL, 17);
insert into appointments values (19, '2021-01-19 10:00', '2021-01-19 11:00', NULL, NULL, 18);
insert into appointments values (20, '2021-01-20 11:00', '2021-01-20 12:00', NULL, NULL, 19);
insert into appointments values (21, '2021-01-21 12:00', '2021-01-21 13:00', NULL, NULL, 20);
insert into appointments values (22, '2021-01-22 09:00', '2021-01-22 10:00', NULL, NULL, 21);
insert into appointments values (23, '2021-01-23 10:00', '2021-01-23 11:00', NULL, NULL, 3);
insert into appointments values (24, '2021-01-24 11:00', '2021-01-24 12:00', NULL, NULL, 7);

--- inserting values to treatment table

insert into treatment values (1, 'Routine Examination/Check-up', 30);
insert into treatment values (2, 'Consultation (Exam, diagnosis and treatment plan)', 60);
insert into treatment values (3, 'Prescription', 30 );
insert into treatment values (4, 'Composite filling', 200);
insert into treatment values (5, 'Scaling + polishing', 70);
insert into treatment values (6, 'PRSI Scaling + polishing', 15);
insert into treatment values (7, 'Scaling + sandblasting', 90 );
insert into treatment values (8, 'PRSI Scaling + sandblasting', 40);
insert into treatment values (9, 'Teeth whitening', 300);
insert into treatment values (10, 'X-ray', 30);
insert into treatment values (11, 'Cancelation fee', 10);

--- inserting values to bills table

insert into bills values (1, 60, 0, 1, 1);
insert into bills values (2, 300, 0, 2, 2);
insert into bills values (3, 10, 0, 3, 3);
insert into bills values (4, 30, 0, 4, 4);
insert into bills values (5, 200, 0, 5, 5);
insert into bills values (6, 90, 80, 6, 6);
insert into bills values (7, 15, 0, 7, 7);
insert into bills values (8, 200, 100, 8, 8);
insert into bills values (9, 10, 0, 9, 9);
insert into bills values (10, 200, 0, 10, 10);
insert into bills values (11, 30, 0, 11, 11);
insert into bills values (12, 60, 0, 12, 12);
insert into bills values (13, 40, 30, 13, 13);
insert into bills values (14, 90, 80, 14, 14);
insert into bills values (15, 15, 5, 15, 15);
insert into bills values (16, 200, 0, 16, 16);
insert into bills values (17, 10, 0, 17, 17);
insert into bills values (18, 30, 20, 18, 18);
insert into bills values (19, 300, 200, 19, 19);
insert into bills values (20, 430, 130, 20, 20);
insert into bills values (21, 200, 200, 21, 21);


--- inserting values to payments table

insert into payments values (1, 60, 'Credit Card', 2, 1);
insert into payments values (2, 300, 'Cash', 9, 2);
insert into payments values (3, 10, 'Cheque', 11, 3);
insert into payments values (4, 30, 'Cash', 10, 4);
insert into payments values (5, 200, 'Credit Card', 4, 5);
insert into payments values (6, 10, 'Cash', 7, 6);
insert into payments values (7, 15, 'Cheque', 6, 7);
insert into payments values (8, 100, 'Credit Card', 4, 8);
insert into payments values (9, 10, 'Credit Card', 11, 9);
insert into payments values (10, 200, 'Credit Card', 4, 10);
insert into payments values (11, 30, 'Cheque', 3, 11);
insert into payments values (12, 60, 'Cash', 2, 12);
insert into payments values (13, 10, 'Credit Card', 8, 13);
insert into payments values (14, 10, 'Credit Card', 7, 14);
insert into payments values (15, 10, 'Credit Card', 6, 15);
insert into payments values (16, 100, 'Credit Card', 4, 16);
insert into payments values (17, 10, 'Cash', 11, 17);
insert into payments values (18, 10, 'Cash', 3, 18);
insert into payments values (19, 100, 'Credit Card', 9, 19);
insert into payments values (20, 100, 'Credit Card', 4, 20);
insert into payments values (21, 0, 'Credit Card', 4, 21);
insert into payments values (22, 100, 'Creidt Card', 4, 20);
insert into payments values (23, 100, 'Cash', 1, 20);
insert into payments values (24, 100, 'Cash', 11, 16);

commit;