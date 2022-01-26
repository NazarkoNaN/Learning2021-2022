--Лабораторна 2.1
--Завдання 1)

SELECT SUM(FUND) as "Фонд фак-тов"
FROM FACULTY;

--Завдання 2)
INSERT INTO LECTURE
VALUES(8,2,3,2,'ПРАКТИКА','ПОН',1,3);

SELECT COUNT(*) as "К-ть кафедр", COUNT(L.SBJFK)
FROM DEPARTMENT D,TEACHER T,SGROUP G, LECTURE L
  WHERE G.DEPFK = D.DEPPK and T.NAME = 'Іванов' and L.TCHFK = T.TCHPK and L.GRPFK = G.GRPPK;

--Завдання 3)

SELECT SUM(T.SALARY + T.COMMISSION) as "Загальна зарплата"
FROM TEACHER T,FACULTY F,DEPARTMENT D, TEACHER T1
  WHERE T1.DEPFK = D.DEPPK and 
        D.FACFK = F.FACPK and 
        T.NAME = 'Волкогон';


SELECT NVL(SUM(T.SALARY + T.COMMISSION),0) as "Загальна зарплата"
FROM TEACHER T,FACULTY F,DEPARTMENT D, TEACHER T1
  WHERE T1.DEPFK = D.DEPPK and 
        D.FACFK = F.FACPK and 
        T.NAME = 'Волкогон';

--Завдання 4)

SELECT D.NAME as "Кафедра", COUNT(DISTINCT G.GRPPK)as"Кількість груп", COUNT(DISTINCT L.SBJFK)as"Кількість дисциплін", COUNT(DISTINCT T.TCHPK)as"Кількість викладачів"
FROM DEPARTMENT D,DEPARTMENT D1, FACULTY F, SGROUP G, TEACHER T, LECTURE L
  WHERE(L.TCHFK = T.TCHPK and
        T.DEPFK = D.DEPPK and
        G.DEPFK = D.DEPPK and
        D.FACFK = F.FACPK and
        F.NAME = 'ФККПІ' and
        D.FUND > 12500)
  GROUP BY D.NAME;

--Завдання 5)

SELECT NVL(T.TEL, 'Ні телефону') as "Телефон", COUNT(T.TEL)
FROM TEACHER T
  GROUP BY T.TEL;

--Завдання 6)

SELECT G.NUM as "Група №", CURATOR.Name as "Куратор", COUNT(DISTINCT L.SBJFK) as "Кількість заннять",COUNT(DISTINCT L.ROMFK) as "Кількість аудиторій"
FROM SGROUP G, TEACHER T, TEACHER CURATOR,DEPARTMENT D, Lecture L, ROOM R
  WHERE (G.CURATOR = CURATOR.TCHPK and
        L.GRPFK = G.GRPPK and
        L.TCHFK = T.TCHPK and
        CURATOR.DEPFK = D.DEPPK and
        D.NAME = 'Інженерія програмного забезпечення')  
    GROUP BY G.NUM,CURATOR.NAME
    HAVING COUNT(DISTINCT L.TCHFK) <=4 and
           COUNT(L.SBJFK) <30;

--Завдання 7)

SELECT R.NUM, T.NAME
FROM ROOM R, TEACHER T,LECTURE L,SGROUP G, DEPARTMENT D, FACULTY F
  WHERE(G.DEPFK = D.DEPPK and
        D.FACFK = F.FACPK and
        F.NAME = 'ФККПІ' and
        
        L.GRPFK = G.GRPPK and
        L.TYPE = 'ЛАБАРАТОРНА' and
        L.ROMFK = R.ROMPK and
        L.TCHFK = T.TCHPK)
  ORDER BY T.NAME ASC,R.NUM DESC;