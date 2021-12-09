--Лабораторна 2.1
--Завдання 1)

SELECT SUM(FUND) as "Фонд фак-тов"
FROM FACULTY;

--Завдання 2)
INSERT INTO LECTURE
VALUES(8,2,3,2,'ПРАКТИКА','ПОН',1,3);

SELECT COUNT(*) as "К-ть кафедр"
FROM DEPARTMENT D,TEACHER T,SGROUP G, LECTURE L
  WHERE G.DEPFK = D.DEPPK and T.NAME = 'Іванов' and L.TCHFK = T.TCHPK and L.GRPFK = G.GRPPK;

--Завдання 3) -- Доробити

SELECT SUM(T.SALARY + T.COMMISSION) as "Загальна зарплата"
FROM TEACHER T,FACULTY F,DEPARTMENT D
  WHERE T.DEPFK = D.DEPPK and D.FACFK = F.FACPK and T.NAME = 'Іванов' and F.DEANFK = NULL;


SELECT NVL(SUM(T.SALARY + T.COMMISSION),0) as "Загальна зарплата"
FROM TEACHER T,FACULTY F,DEPARTMENT D
  WHERE T.DEPFK = D.DEPPK and D.FACFK = F.FACPK and T.NAME = 'Іванов' and F.DEANFK = NULL;

--Завдання 4)

SELECT D.NAME as "Кафедра", COUNT(DISTINCT G.GRPPK)as"Кількість груп", COUNT(DISTINCT SBJ.SBJPK)as"Кількість дисциплін", COUNT(DISTINCT T.TCHPK)as"Кількість викладачів"
FROM DEPARTMENT D, FACULTY F, SGROUP G, SUBJECT SBJ, TEACHER T, LECTURE L
  WHERE (T.DEPFK = D.DEPPK and
        G.DEPFK = D.DEPPK and
        D.FACFK = F.FACPK and
        F.NAME = 'ФККПІ' and
        D.FUND > 12500)
  GROUP BY D.NAME;
  
--Завдання 5)


