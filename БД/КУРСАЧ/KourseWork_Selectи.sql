--1) Виводить робітників та їх посади-------------------------------------------
SELECT H.NAME as "Ім'я",
       H.SERNAME as "Фамілія",
       'працює на посаді' as Literal,
       P.Name as "Професія"
FROM HUMAN H inner join PROFESSION P on H.PROFFK = P.PROFPK;
--------------------------------------------------------------------------------

--2) Виводить керівників департаментів та їх пдлеглих які є головами підрозділів
SELECT HL.NAME,
       ' лідер департаменту '||D.NAME,
       ' і начальник '||H.NAME,
       ' що є головою підрозділу '||U.NAME
FROM HUMAN H INNER JOIN UNIT U
     ON H.HUMANPK = U.LEADER INNER JOIN DEPARTMENT_HUMAN D
     ON U.DEPFK = D.DEPPK, HUMAN HL
WHERE HL.HUMANPK = D.LEADER;
--------------------------------------------------------------------------------

--3) Виводить Усіх Робочий на підрозділі Конвеєр--------------------------------
Select H.NAME as "Ім'я",
       H.SERNAME as "Фамілія",
       'працює на посаді' as Literal,
       P.Name as "Професія",
       'начальник',
       N.Name
From HUMAN H inner join PROFESSION P 
     on H.PROFFK = P.PROFPK Inner join Unit U
     on H.UNITFK = U.UNITPK, HUMAN N
Where U.NAME = 'Конвеєр' and
      P.NAME = 'Робочий' and
      N.HUMANPK = U.LEADER;
--------------------------------------------------------------------------------

--4) Виводить обширну інформацію про керівників підрозділів---------------------
Select U.name as Підрозділ,
       'голова' as literal,
       H.name,
       H.SERNAME,
       'посада' as literal,
       P.NAME,
       'Зарплата' as literal,
       NVL(U.PREMIUM,0) + NVL(P.Salary,0) as "Зарплата"
FROM HUMAN H INNER JOIN Unit U 
     ON U.leader = H.HUMANPK Inner join PROFESSION p
     on P.PROFPK = H.PROFFK;
--------------------------------------------------------------------------------

--5) Виводить всіх працівників які родились в червні----------------------------
Select H.NAME,
       H.SERNAME,
       U.NAME,
       D.NAME,
       H.BIRTH
FROM HUMAN H INNER JOIN UNIT U 
     on H.UNITFK = U.UNITPK INNER JOIN DEPARTMENT_HUMAN D 
     on U.DEPFK = D.DEPPK
WHERE EXTRACT(month from H.BIRTH) = 6;
--------------------------------------------------------------------------------

--6) Виводить департамент,підрозділ та кількість жінок які на ньому працює------
SELECT DISTINCT D.DEPPK, D.NAME, U.NAME, NVL(COUNT(H.HUMANPK),0)
FROM DEPARTMENT_HUMAN D INNER JOIN UNIT U 
     ON D.DEPPK = U.DEPFK INNER JOIN HUMAN H
     ON H.UNITFK = U.UNITPK
WHERE H.SEX = 'W'
GROUP BY D.DEPPK, D.NAME, U.NAME
ORDER BY D.DEPPK;
--------------------------------------------------------------------------------

--7) Виводить працівників яким більше 30----------------------------------------
SELECT H.NAME,H.SERNAME,FLOOR((CURRENT_DATE - H.BIRTH)/366) as "Років"
FROM UNIT U INNER JOIN HUMAN H
     ON H.HUMANPK = U.LEADER
WHERE FLOOR((CURRENT_DATE - H.BIRTH)/366) >30;
--------------------------------------------------------------------------------

--8) Виводить всіх працівників які проходили процедуру повишення----------------
SELECT H.NAME, H.SERNAME, C.EXAM_DATE
FROM HUMAN H INNER JOIN CERTIFICATION C
     ON H.HUMANPK = C.HUMANFK INNER JOIN CERTIFICATION_TYPE CType
     ON CType.CERTIFIC_TYPEPK = C.CERTIFIC_TYPEFK
WHERE CType.NAME = 'Підвищення' and C.STATE = 'TRUE';
--------------------------------------------------------------------------------

--9) Виводить людей які пропрацювали більше 20% свого життя---------------------
SELECT H.NAME,
       H.SERNAME,
       Round(((CURRENT_DATE - D.HIREDATE)/
              (CURRENT_DATE - H.BIRTH))*100,2) || '%' as "Пропрацював %" ,
       Round((CURRENT_DATE - D.HIREDATE)/366, 2) || ' років' as пропрацював,
       Round((CURRENT_DATE - H.BIRTH)/366, 2) || ' років' as прожив
FROM UNIT U INNER JOIN HUMAN H
     ON H.UNITFK = U.UNITPK INNER JOIN  DOCUMENTS D
     ON D.HUMANFK = H.HUMANPK
WHERE ((CURRENT_DATE - D.HIREDATE)/(CURRENT_DATE - H.BIRTH))*100 > 20;

--10) Виводить працівника який пропрацював найдовше-----------------------------
Select H.NAME,
       H.SERNAME,
       Round((CURRENT_DATE - D.HIREDATE)/366, 2) || ' років' as пропрацював
FROM HUMAN H INNER JOIN  DOCUMENTS D
     ON D.HUMANFK = H.HUMANPK, DOCUMENTS D1
GROUP BY H.NAME, H.SERNAME, D.HIREDATE
HAVING  D.HIREDATE = Min(D1.HIREDATE);
--------------------------------------------------------------------------------

--11) Виводить кількість департаментів в яких працюють жінки--------------------
Select Count(W.DEPPK)
FROM (SELECT DISTINCT D.DEPPK, D.NAME, U.NAME, NVL(COUNT(H.HUMANPK),0)
      FROM DEPARTMENT_HUMAN D INNER JOIN UNIT U 
           ON D.DEPPK = U.DEPFK INNER JOIN HUMAN H
           ON H.UNITFK = U.UNITPK
      WHERE H.SEX = 'W'
      GROUP BY D.DEPPK, D.NAME, U.NAME);
--------------------------------------------------------------------------------

--12) Виводить кількість людей які пройшли повишення----------------------------
Select COUNT(W.HUMANPK)
FROM (SELECT H.HUMANPK
      FROM HUMAN H INNER JOIN CERTIFICATION C
      ON H.HUMANPK = C.HUMANFK INNER JOIN CERTIFICATION_TYPE CType
      ON CType.CERTIFIC_TYPEPK = C.CERTIFIC_TYPEFK
      WHERE CType.NAME = 'Підвищення' and C.STATE = 'TRUE') W;
--------------------------------------------------------------------------------
















-------------------
--Дякую за увагу!--
---------_---------
-------/_!_\-------
-------|   |-------
-------|   |-------
-------|   |-------
-------|   |-------
-------|   |-------
-------|   |-------
-------|   |-------
-----__|   |__-----
----/  *---*  \----
---| THE | END |---
----\___.-.___/----
-------------------
