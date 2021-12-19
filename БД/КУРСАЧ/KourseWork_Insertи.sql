--Insertи
--Department
INSERT INTO DEPARTMENT_HUMAN
VALUES(1,'Керування',null,null);

INSERT INTO DEPARTMENT_HUMAN
VALUES(2,'Розробка',null,null);

INSERT INTO DEPARTMENT_HUMAN
VALUES(3,'Виробництво',null,null);

INSERT INTO DEPARTMENT_HUMAN
VALUES(4,'Постачання',null,null);

--Unit
INSERT INTO Unit
VALUES(1,'Головний',1,null,null);
INSERT INTO Unit
VALUES(2,'Керування кадрами',1,null,null);
INSERT INTO Unit
VALUES(3,'Бугалтерія',1,null,null);

INSERT INTO Unit
VALUES(4,'Проектування',2,null,null);
INSERT INTO Unit
VALUES(5,'Тестування',2,null,null);
INSERT INTO Unit
VALUES(6,'Впровадження',2,null,null);

INSERT INTO Unit
VALUES(7,'Ручний',3,null,null);
INSERT INTO Unit
VALUES(8,'Конвеєр',3,null,null);
INSERT INTO Unit
VALUES(9,'Тестування',3,null,null);
INSERT INTO Unit
VALUES(10,'Упакування',3,null,null);

INSERT INTO Unit
VALUES(11,'Перевірка якості',4,null,null);
INSERT INTO Unit
VALUES(12,'Транспортування',4,null,null);

--Profesion
Insert into PROFESSION
VALUES(1,'Голова підприємства',null);
Insert into PROFESSION
VALUES(2,'Секретар',null);
Insert into PROFESSION
VALUES(3,'Головний бугалтер',null);
Insert into PROFESSION
VALUES(4,'Бугалтер',null);
Insert into PROFESSION
VALUES(5,'Молодший спеціаліст',null);
Insert into PROFESSION
VALUES(6,'Головний інженер',null);
Insert into PROFESSION
VALUES(7,'Старший проектувальник',null);
Insert into PROFESSION
VALUES(8,'Розробник',null);
Insert into PROFESSION
VALUES(9,'Інженер',null);
Insert into PROFESSION
VALUES(10,'Голова QA',null);
Insert into PROFESSION
VALUES(11,'QA',null);
Insert into PROFESSION
VALUES(12,'Тестувальник',null);
Insert into PROFESSION
VALUES(13,'Старший по впровадженню',null);
Insert into PROFESSION
VALUES(14,'Старший відділу',null);
Insert into PROFESSION
VALUES(15,'Робочий',null);
Insert into PROFESSION
VALUES(16,'Молодший тестувальник',null);
Insert into PROFESSION
VALUES(17,'Старший розробник',null);
Insert into PROFESSION
VALUES(18,'Старший інженер',null);
Insert into PROFESSION
VALUES(19,'Старший тестувальник',null);
Insert into PROFESSION
VALUES(20,'Водіій',null);
Insert into PROFESSION
VALUES(21,'Голова постачань',null);
Insert into PROFESSION
VALUES(22,'Грузчик',null);
Insert into PROFESSION
VALUES(23,'Менеджер',null);

--Sertification_type
Insert into CERTIFICATION_TYPE
VALUES(1,'Професійна придатність');
Insert into CERTIFICATION_TYPE
VALUES(2,'Кваліфікація');
Insert into CERTIFICATION_TYPE
VALUES(3,'Перекваліфікація');
Insert into CERTIFICATION_TYPE
VALUES(4,'Підвищення');

--Person
Insert into HUMAN
VALUES(1,1,'Mihailo','Smith',1,To_date('26.03.1987','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(2,1,'Katya','Johnson',1,To_date('15.04.1986','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(3,1,'Nazar','Ivanyuk',1,To_date('27.06.2002','DD.MM.YYYY'),'M');


Insert into HUMAN
VALUES(4,2,'Nazar','Williams',3,To_date('29.08.1985','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(5,2,'Katya','Brown',4,To_date('18.04.1995','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(6,2,'Ilua','Jones',4,To_date('07.06.1994','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(7,2,'Denis','Garcia',4,To_date('03.03.1999','DD.MM.YYYY'),'M');

Insert into HUMAN
VALUES(8,3,'Nazar','Miller',3,To_date('01.11.1993','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(9,3,'Anya','Davis',4,To_date('17.10.1982','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(10,3,'Vitaliy','Rodriges',4,To_date('12.11.1975','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(11,3,'Roman','Martinez',4,To_date('06.12.1980','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(12,3,'Danil','Hernandez',4,To_date('05.03.1986','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(13,3,'Olecsander','Lopez',5,To_date('06.08.1989','DD.MM.YYYY'),'M');

Insert into HUMAN
VALUES(14,4,'Mihailo','Gronzales',6,To_date('17.11.1986','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(15,4,'Denis','Wilson',7,To_date('06.12.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(16,4,'Ilua','Anderson',7,To_date('17.06.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(17,4,'Anya','Thomas',9,To_date('01.03.1985','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(18,4,'Katya','Taylor',9,To_date('03.10.1989','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(19,4,'Oleg','Moore',9,To_date('17.12.1985','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(20,4,'Viktor','Jackson',5,To_date('01.09.1989','DD.MM.YYYY'),'M');

Insert into HUMAN
VALUES(21,5,'Nazar','Martin',10,To_date('17.09.2001','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(22,5,'Roman','Lee',11,To_date('06.09.1985','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(23,5,'Vitaliy','Perez',11,To_date('29.10.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(24,5,'Ilua','Thompson',11,To_date('03.10.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(25,5,'Denis','White',8,To_date('17.12.1985','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(26,5,'Danil','Harris',8,To_date('01.11.1986','DD.MM.YYYY'),'M');

Insert into HUMAN
VALUES(27,6,'Katya','Sanchez',13,To_date('06.12.1991','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(28,6,'Mihailo','Clark',7,To_date('17.04.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(29,6,'Arsen','Ramirez',17,To_date('27.04.1985','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(30,6,'Denis','Lewis',8,To_date('03.07.1986','DD.MM.YYYY'),'M');

Insert into HUMAN
VALUES(31,7,'Nazar','Robinson',14,To_date('06.02.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(32,7,'Oleg','Walker',14,To_date('01.01.1991','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(33,7,'Arsen','Young',15,To_date('03.02.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(34,7,'Danil','Allen',15,To_date('06.12.1991','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(35,7,'Mihailo','King',15,To_date('06.02.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(36,7,'Roman','Wright',15,To_date('17.10.1986','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(37,7,'Ilua','Scott',15,To_date('17.10.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(38,7,'Anya','Tprres',15,To_date('01.11.1991','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(39,7,'Oksana','Nguyen',15,To_date('29.01.1991','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(40,7,'Valya','Hill',15,To_date('27.07.1991','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(41,7,'Olena','Flores',15,To_date('27.11.1986','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(42,7,'Olecsander','Green',15,To_date('01.09.1991','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(43,7,'Ilua','Nelson',15,To_date('03.05.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(44,7,'Denis','Baker',15,To_date('06.12.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(45,7,'Mihailo','Hall',15,To_date('06.03.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(46,7,'Serafim','Rivera',15,To_date('17.05.1991','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(47,7,'Vitaliy','Campbell',15,To_date('17.12.1991','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(48,7,'Pudge','Mitchell',15,To_date('03.10.1985','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(49,7,'Twich','Carter',15,To_date('01.06.1991','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(50,7,'Katya','Roberts',15,To_date('29.06.1989','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(51,7,'Anya','Williams',15,To_date('27.11.1991','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(52,7,'Denis','Gronzales',15,To_date('06.11.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(53,7,'Ilua','Williams',15,To_date('06.04.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(54,7,'Sailas','Martinez',15,To_date('17.02.1985','DD.MM.YYYY'),'M');

Insert into HUMAN
VALUES(55,8,'Oksana','Gronzales',14,To_date('17.01.1989','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(56,8,'Afeliy','Taylor',14,To_date('27.03.1985','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(57,8,'Mihailo','Taylor',15,To_date('27.12.1991','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(58,8,'Kaisa','Johnson',15,To_date('06.10.1989','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(59,8,'Viktor','Martinez',15,To_date('17.12.2001','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(60,8,'Oleg','Garcia',15,To_date('17.10.1991','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(61,8,'Fortune','Gronzales',15,To_date('06.11.1989','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(62,8,'Denis','Williams',15,To_date('06.09.1991','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(63,8,'Jinx','Williams',15,To_date('03.05.1989','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(64,8,'Roman','Martinez',15,To_date('29.05.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(65,8,'Ilua','Gronzales',15,To_date('29.04.2001','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(66,8,'Anya','Williams',15,To_date('01.01.2001','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(67,8,'Arsen','Taylor',15,To_date('09.02.2001','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(68,8,'Mihailo','Taylor',15,To_date('17.06.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(69,8,'Diana','Gronzales',15,To_date('17.03.1989','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(70,8,'Poppi','Williams',15,To_date('29.07.1989','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(71,8,'Vitaliy','Martinez',15,To_date('27.11.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(72,8,'Olecsander','Gronzales',15,To_date('01.10.1986','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(73,8,'Denis','Johnson',15,To_date('27.10.1991','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(74,8,'Set','Garcia',15,To_date('03.12.1986','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(75,8,'Katya','Taylor',15,To_date('06.12.1989','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(76,8,'Sedguani','Martinez',15,To_date('17.12.1989','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(77,8,'Mihailo','Williams',15,To_date('27.06.1985','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(78,8,'Lux','Gronzales',15,To_date('17.07.1989','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(79,8,'Ilua','Gronzales',15,To_date('06.10.1986','DD.MM.YYYY'),'M');

Insert into HUMAN
VALUES(80,9,'Katya','Gronzales',19,To_date('01.05.1986','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(81,9,'Denis','Johnson',9,To_date('17.11.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(82,9,'Viktor','Garcia',12,To_date('17.06.1986','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(83,9,'Fantomka','Gronzales',12,To_date('27.11.1989','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(84,9,'Ilua','Martinez',12,To_date('06.03.1991','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(85,9,'Samira','Williams',16,To_date('29.04.1989','DD.MM.YYYY'),'W');

Insert into HUMAN
VALUES(86,10,'Oksana','Taylor',14,To_date('03.12.1989','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(87,10,'Nastua','Taylor',14,To_date('06.10.1985','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(88,10,'Oleg','Gronzales',14,To_date('17.01.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(89,10,'Arsen','Williams',15,To_date('27.07.1986','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(90,10,'Anya','Martinez',15,To_date('01.09.1991','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(91,10,'Nastua','Williams',15,To_date('04.06.1991','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(92,10,'Denis','Johnson',15,To_date('27.01.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(93,10,'Katya','Smith',15,To_date('01.11.1989','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(94,10,'Ilua','Gronzales',15,To_date('01.11.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(95,10,'Ilua','Smith',15,To_date('12.06.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(96,10,'Vitaliy','Garcia',15,To_date('27.10.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(97,10,'Danil','Lee',15,To_date('03.10.1991','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(98,10,'Mihailo','Taylor',15,To_date('17.10.1991','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(99,10,'Roman','Williams',15,To_date('17.01.1985','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(100,10,'Oleg','Taylor',15,To_date('06.07.1985','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(101,10,'Oksana','Gronzales',15,To_date('06.06.1986','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(102,10,'Vi','Smith',15,To_date('17.04.1986','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(103,10,'Katya','Martinez',15,To_date('17.11.1986','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(104,10,'Ilua','Johnson',15,To_date('27.03.1986','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(105,10,'Viktor','Williams',15,To_date('27.04.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(106,10,'Olecsander','Smith',15,To_date('01.05.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(107,10,'Roman','Lee',15,To_date('03.12.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(108,10,'Akali','Martinez',15,To_date('03.12.1991','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(109,10,'Vein','Gronzales',15,To_date('01.10.1991','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(110,10,'Denis','Taylor',15,To_date('01.12.1991','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(111,10,'Anny','Taylor',15,To_date('29.10.1989','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(112,10,'Danil','Martinez',15,To_date('27.06.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(113,10,'Arsen','Smith',15,To_date('06.11.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(114,10,'Denis','Williams',15,To_date('17.11.1985','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(115,10,'Anya','Gronzales',15,To_date('17.07.1986','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(116,10,'Oksana','Smith',15,To_date('17.08.1986','DD.MM.YYYY'),'W');
Insert into HUMAN
VALUES(117,10,'Mihailo','Martinez',15,To_date('06.09.2001','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(118,10,'Katya','Williams',15,To_date('06.12.2001','DD.MM.YYYY'),'W');

Insert into HUMAN
VALUES(119,11,'Nazar','Gronzales',7,To_date('06.12.1991','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(120,11,'Ilua','Taylor',18,To_date('01.10.1985','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(121,11,'Vitaliy','Williams',19,To_date('12.01.1986','DD.MM.YYYY'),'M');

Insert into HUMAN
VALUES(122,12,'Nazar','Taylor',21,To_date('01.11.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(123,12,'Ilua','Martinez',20,To_date('17.10.1991','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(124,12,'Olecsander','Williams',20,To_date('17.02.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(125,12,'Denis','Smith',20,To_date('06.03.1991','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(126,12,'Roman','Johnson',20,To_date('27.04.1991','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(127,12,'Ilua','Williams',20,To_date('03.05.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(128,12,'Mihailo','Taylor',20,To_date('01.06.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(129,12,'Danil','Taylor',22,To_date('12.11.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(130,12,'Oleg','Williams',22,To_date('06.11.1985','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(131,12,'Vitaliy','Gronzales',22,To_date('27.07.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(132,12,'Mihailo','Martinez',22,To_date('03.10.1989','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(133,12,'Nazar','Taylor',22,To_date('06.10.1985','DD.MM.YYYY'),'M');
Insert into HUMAN
VALUES(134,12,'Vitaliy','Smith',22,To_date('06.08.1985','DD.MM.YYYY'),'M');

--Certification
Insert into CERTIFICATION
Select H.HUMANPK , 1 ,To_DATE('01.09.2021','DD.MM.YYYY'), 'TRUE'
FROM HUMAN H INNER JOIN Profession P ON H.ProfFK = P.ProfPK
WHERE P.NAME ='Робочий';

Insert into CERTIFICATION
Select H.HUMANPK , 1 ,To_DATE('01.03.2021','DD.MM.YYYY'), 'TRUE'
FROM HUMAN H INNER JOIN Profession P ON H.ProfFK = P.ProfPK
WHERE P.NAME ='Робочий';

Insert into CERTIFICATION
Select H.HUMANPK , 1 ,To_DATE('01.09.2020','DD.MM.YYYY'), 'TRUE'
FROM HUMAN H INNER JOIN Profession P ON H.ProfFK = P.ProfPK
WHERE P.NAME ='Робочий';

Insert into CERTIFICATION
Select H.HUMANPK , 1 ,To_DATE('30.06.2021','DD.MM.YYYY'), 'TRUE'
FROM HUMAN H INNER JOIN Profession P ON H.ProfFK = P.ProfPK
WHERE P.NAME !='Робочий';

Insert into CERTIFICATION
Select H.HUMANPK , 1 ,To_DATE('30.01.2021','DD.MM.YYYY'), 'TRUE'
FROM HUMAN H INNER JOIN Profession P ON H.ProfFK = P.ProfPK
WHERE P.NAME !='Робочий';

Insert into CERTIFICATION
Select H.HUMANPK , 4 ,To_DATE('27.06.2021','DD.MM.YYYY'), 'TRUE'
FROM HUMAN H INNER JOIN Profession P ON H.ProfFK = P.ProfPK
WHERE P.NAME LIKE 'Старший%';

Insert into CERTIFICATION
Select H.HUMANPK , 2 ,To_DATE('01.01.2021','DD.MM.YYYY'), 'TRUE'
FROM HUMAN H INNER JOIN Profession P ON H.ProfFK = P.ProfPK
WHERE P.NAME Not LIKE 'Голова%';