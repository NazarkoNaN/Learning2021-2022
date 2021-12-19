--����������� 2.1
--�������� 1)

SELECT SUM(FUND) as "���� ���-���"
FROM FACULTY;

--�������� 2)
INSERT INTO LECTURE
VALUES(8,2,3,2,'��������','���',1,3);

SELECT COUNT(*) as "�-�� ������", COUNT(L.SBJFK)
FROM DEPARTMENT D,TEACHER T,SGROUP G, LECTURE L
  WHERE G.DEPFK = D.DEPPK and T.NAME = '������' and L.TCHFK = T.TCHPK and L.GRPFK = G.GRPPK;

--�������� 3)

SELECT SUM(T.SALARY + T.COMMISSION) as "�������� ��������"
FROM TEACHER T,FACULTY F,DEPARTMENT D, TEACHER T1
  WHERE T1.DEPFK = D.DEPPK and 
        D.FACFK = F.FACPK and 
        T.NAME = '��������';


SELECT NVL(SUM(T.SALARY + T.COMMISSION),0) as "�������� ��������"
FROM TEACHER T,FACULTY F,DEPARTMENT D, TEACHER T1
  WHERE T1.DEPFK = D.DEPPK and 
        D.FACFK = F.FACPK and 
        T.NAME = '��������';

--�������� 4)

SELECT D.NAME as "�������", COUNT(DISTINCT G.GRPPK)as"ʳ������ ����", COUNT(DISTINCT L.SBJFK)as"ʳ������ ��������", COUNT(DISTINCT T.TCHPK)as"ʳ������ ����������"
FROM DEPARTMENT D,DEPARTMENT D1, FACULTY F, SGROUP G, TEACHER T, LECTURE L
  WHERE(L.TCHFK = T.TCHPK and
        T.DEPFK = D.DEPPK and
        G.DEPFK = D.DEPPK and
        D.FACFK = F.FACPK and
        F.NAME = '���ϲ' and
        D.FUND > 12500)
  GROUP BY D.NAME;

--�������� 5)

SELECT NVL(T.TEL, 'ͳ ��������') as "�������", COUNT(T.TEL)
FROM TEACHER T
  GROUP BY T.TEL;

--�������� 6)

SELECT G.NUM as "����� �", CURATOR.Name as "�������", COUNT(DISTINCT L.SBJFK) as "ʳ������ �������",COUNT(DISTINCT L.ROMFK) as "ʳ������ ��������"
FROM SGROUP G, TEACHER T, TEACHER CURATOR,DEPARTMENT D, Lecture L, ROOM R
  WHERE (G.CURATOR = CURATOR.TCHPK and
        L.GRPFK = G.GRPPK and
        L.TCHFK = T.TCHPK and
        CURATOR.DEPFK = D.DEPPK and
        D.NAME = '�������� ����������� ������������')  
    GROUP BY G.NUM,CURATOR.NAME
    HAVING COUNT(DISTINCT L.TCHFK) <=4 and
           COUNT(L.SBJFK) <30;

--�������� 7)

SELECT R.NUM, T.NAME
FROM ROOM R, TEACHER T,LECTURE L,SGROUP G, DEPARTMENT D, FACULTY F
  WHERE(G.DEPFK = D.DEPPK and
        D.FACFK = F.FACPK and
        F.NAME = '���ϲ' and
        
        L.GRPFK = G.GRPPK and
        L.TYPE = '�����������' and
        L.ROMFK = R.ROMPK and
        L.TCHFK = T.TCHPK)
  ORDER BY T.NAME ASC,R.NUM DESC;