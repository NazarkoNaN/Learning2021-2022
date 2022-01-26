--Lab 2.2
--Варіант 6)
--Завдання 1 (Некорельовані підзапити)

SELECT T.NAME as "Преподаватель", T.HIREDATE as "Дата поступления"
FROM TEACHER T,
     TEACHER CHIEF, 
     DEPARTMENT D,
     TEACHER T1,
     DEPARTMENT D1,
     FACULTY F1
WHERE(T.DEPFK = D.DEPPK and
      D.HEADFK = CHIEF.TCHPK and
      CHIEF.NAME = 'Іванов' and
      T1.DEPFK = D1.DEPPK and
      D1.FACFK = F1.FACPK and
      F1.NAME = 'ФККПІ')
GROUP BY T.NAME,T.HIREDATE
HAVING T.HIREDATE BETWEEN MIN(T1.HIREDATE) and MAX(T1.HIREDATE);

--Завдання 2 (Корельовані підзапити)

SELECT F.NAME as "Факультет", F.BUILDING as "Корпус",F.FUND
FROM FACULTY F
WHERE F.FUND > (SELECT SUM(D.FUND)
                FROM DEPARTMENT D
                WHERE D.FACFK = F.FACPK) + 1000;

--Завдання 3 (корельовані підзапити і предикат EXISTS)

SELECT Distinct F.NAME as "Факультет"
FROM FACULTY F, DEPARTMENT D
WHERE F.BUILDING = 5 and
      D.FACFK = F.FACPK and
      NOT EXISTS(SELECT T.* FROM TEACHER T
                 WHERE T.HIREDATE  BETWEEN TO_DATE('01.01.2000','DD.MM.YYYY') and TO_DATE('01.06.2000','DD.MM.YYYY'));

--Завдання 4 (корельовані підзапити і предикат ANY, SOME, ALL)

SELECT F.NAME, DECAN.NAME
FROM FACULTY F,TEACHER DECAN
WHERE F.DEANFK = DECAN.TCHPK and
      F.BUILDING = any(SELECT L.ROMFK 
                       FROM LECTURE L, SUBJECT SBJ
                       WHERE L.LESSON = SBJ.SBJPK and
                             SBJ.NAME = 'Бази даних');

--Завдання 5 (підзапити у фразі HAVING)

SELECT s.name, g.num
FROM sgroup G INNER JOIN LECTURE L ON
    g.grppk = l.grpfk INNER JOIN SUBJECT S
    ON s.sbjpk = l.sbjfk
GROUP BY s.name, g.num
HAVING COUNT(DISTINCT l.tchfk) > 1 AND
COUNT(DISTINCT l.romfk) > 1 and
COUNT(*) > (SELECT AVG(COUNT(*)) FROM LECTURE GROUP BY LECTURE.sbjfk);

--Завдання 6 (підзапити у фразі FROM)

SELECT SEL.QUANTITY
FROM (SELECT F.FACPK, AVG(G.QUANTITY) as QUANTITY
      FROM FACULTY F INNER JOIN DEPARTMENT D ON
           F.FACPK = D.FACFK INNER JOIN SGROUP G ON
           D.DEPPK = G.DEPFK
      GROUP BY F.FACPK) SEL;

--Завдання 7 (підзапити у фразі SELECT)

SELECT F.NAME, (SELECT COUNT(DISTINCT L.SBJFK) 
                FROM DEPARTMENT D,
                     SGROUP G inner join Lecture L ON
                     G.GRPPK = L.GRPFK
                WHERE F.FACPK = D.FACFK and
                      G.DEPFK = D.DEPPK) as "By group",
                (SELECT COUNT(DISTINCT L.SBJFK)
                 FROM DEPARTMENT D,
                     TEACHER T inner join Lecture L ON
                     T.TCHPK = L.TCHFK
                 WHERE F.FACPK = D.FACFK and
                      T.DEPFK = D.DEPPK) as "By teacher"
FROM FACULTY F;

