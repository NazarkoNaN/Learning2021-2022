--1) �������� �������� �� �� ������-------------------------------------------
SELECT H.NAME as "��'�",
       H.SERNAME as "�����",
       '������ �� �����' as Literal,
       P.Name as "�������"
FROM HUMAN H inner join PROFESSION P on H.PROFFK = P.PROFPK;
--------------------------------------------------------------------------------

--2) �������� �������� ������������ �� �� �������� �� � �������� ��������
SELECT HL.NAME,
       ' ���� ������������ '||D.NAME,
       ' � ��������� '||H.NAME,
       ' �� � ������� �������� '||U.NAME
FROM HUMAN H INNER JOIN UNIT U
     ON H.HUMANPK = U.LEADER INNER JOIN DEPARTMENT_HUMAN D
     ON U.DEPFK = D.DEPPK, HUMAN HL
WHERE HL.HUMANPK = D.LEADER;
--------------------------------------------------------------------------------

--3) �������� ��� ������� �� ������� ������--------------------------------
Select H.NAME as "��'�",
       H.SERNAME as "�����",
       '������ �� �����' as Literal,
       P.Name as "�������",
       '���������',
       N.Name
From HUMAN H inner join PROFESSION P 
     on H.PROFFK = P.PROFPK Inner join Unit U
     on H.UNITFK = U.UNITPK, HUMAN N
Where U.NAME = '������' and
      P.NAME = '�������' and
      N.HUMANPK = U.LEADER;
--------------------------------------------------------------------------------

--4) �������� ������� ���������� ��� �������� ��������---------------------
Select U.name as ϳ������,
       '������' as literal,
       H.name,
       H.SERNAME,
       '������' as literal,
       P.NAME,
       '��������' as literal,
       NVL(U.PREMIUM,0) + NVL(P.Salary,0) as "��������"
FROM HUMAN H INNER JOIN Unit U 
     ON U.leader = H.HUMANPK Inner join PROFESSION p
     on P.PROFPK = H.PROFFK;
--------------------------------------------------------------------------------

--5) �������� ��� ���������� �� �������� � �����----------------------------
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

--6) �������� �����������,������� �� ������� ���� �� �� ����� ������------
SELECT DISTINCT D.DEPPK, D.NAME, U.NAME, NVL(COUNT(H.HUMANPK),0)
FROM DEPARTMENT_HUMAN D INNER JOIN UNIT U 
     ON D.DEPPK = U.DEPFK INNER JOIN HUMAN H
     ON H.UNITFK = U.UNITPK
WHERE H.SEX = 'W'
GROUP BY D.DEPPK, D.NAME, U.NAME
ORDER BY D.DEPPK;
--------------------------------------------------------------------------------

--7) �������� ���������� ���� ����� 30----------------------------------------
SELECT H.NAME,H.SERNAME,FLOOR((CURRENT_DATE - H.BIRTH)/366) as "����"
FROM UNIT U INNER JOIN HUMAN H
     ON H.HUMANPK = U.LEADER
WHERE FLOOR((CURRENT_DATE - H.BIRTH)/366) >30;
--------------------------------------------------------------------------------

--8) �������� ��� ���������� �� ��������� ��������� ���������----------------
SELECT H.NAME, H.SERNAME, C.EXAM_DATE
FROM HUMAN H INNER JOIN CERTIFICATION C
     ON H.HUMANPK = C.HUMANFK INNER JOIN CERTIFICATION_TYPE CType
     ON CType.CERTIFIC_TYPEPK = C.CERTIFIC_TYPEFK
WHERE CType.NAME = 'ϳ��������' and C.STATE = 'TRUE';
--------------------------------------------------------------------------------

--9) �������� ����� �� ������������ ����� 20% ����� �����---------------------
SELECT H.NAME,
       H.SERNAME,
       Round(((CURRENT_DATE - D.HIREDATE)/
              (CURRENT_DATE - H.BIRTH))*100,2) || '%' as "����������� %" ,
       Round((CURRENT_DATE - D.HIREDATE)/366, 2) || ' ����' as �����������,
       Round((CURRENT_DATE - H.BIRTH)/366, 2) || ' ����' as ������
FROM UNIT U INNER JOIN HUMAN H
     ON H.UNITFK = U.UNITPK INNER JOIN  DOCUMENTS D
     ON D.HUMANFK = H.HUMANPK
WHERE ((CURRENT_DATE - D.HIREDATE)/(CURRENT_DATE - H.BIRTH))*100 > 20;

--10) �������� ���������� ���� ����������� ��������-----------------------------
Select H.NAME,
       H.SERNAME,
       Round((CURRENT_DATE - D.HIREDATE)/366, 2) || ' ����' as �����������
FROM HUMAN H INNER JOIN  DOCUMENTS D
     ON D.HUMANFK = H.HUMANPK, DOCUMENTS D1
GROUP BY H.NAME, H.SERNAME, D.HIREDATE
HAVING  D.HIREDATE = Min(D1.HIREDATE);
--------------------------------------------------------------------------------

--11) �������� ������� ������������ � ���� �������� ����--------------------
Select Count(W.DEPPK)
FROM (SELECT DISTINCT D.DEPPK, D.NAME, U.NAME, NVL(COUNT(H.HUMANPK),0)
      FROM DEPARTMENT_HUMAN D INNER JOIN UNIT U 
           ON D.DEPPK = U.DEPFK INNER JOIN HUMAN H
           ON H.UNITFK = U.UNITPK
      WHERE H.SEX = 'W'
      GROUP BY D.DEPPK, D.NAME, U.NAME);
--------------------------------------------------------------------------------

--12) �������� ������� ����� �� ������� ���������----------------------------
Select COUNT(W.HUMANPK)
FROM (SELECT H.HUMANPK
      FROM HUMAN H INNER JOIN CERTIFICATION C
      ON H.HUMANPK = C.HUMANFK INNER JOIN CERTIFICATION_TYPE CType
      ON CType.CERTIFIC_TYPEPK = C.CERTIFIC_TYPEFK
      WHERE CType.NAME = 'ϳ��������' and C.STATE = 'TRUE') W;
--------------------------------------------------------------------------------
















-------------------
--����� �� �����!--
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
