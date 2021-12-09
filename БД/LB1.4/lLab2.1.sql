--����������� 2.1
--�������� 1)

SELECT SUM(FUND) as "���� ���-���"
FROM FACULTY;

--�������� 2)
INSERT INTO LECTURE
VALUES(8,2,3,2,'��������','���',1,3);

SELECT COUNT(*) as "�-�� ������"
FROM DEPARTMENT D,TEACHER T,SGROUP G, LECTURE L
  WHERE G.DEPFK = D.DEPPK and T.NAME = '������' and L.TCHFK = T.TCHPK and L.GRPFK = G.GRPPK;

--�������� 3) -- ��������

SELECT SUM(T.SALARY + T.COMMISSION) as "�������� ��������"
FROM TEACHER T,FACULTY F,DEPARTMENT D
  WHERE T.DEPFK = D.DEPPK and D.FACFK = F.FACPK and T.NAME = '������' and F.DEANFK = NULL;


SELECT NVL(SUM(T.SALARY + T.COMMISSION),0) as "�������� ��������"
FROM TEACHER T,FACULTY F,DEPARTMENT D
  WHERE T.DEPFK = D.DEPPK and D.FACFK = F.FACPK and T.NAME = '������' and F.DEANFK = NULL;

--�������� 4)

SELECT D.NAME as "�������", COUNT(DISTINCT G.GRPPK)as"ʳ������ ����", COUNT(DISTINCT SBJ.SBJPK)as"ʳ������ ��������", COUNT(DISTINCT T.TCHPK)as"ʳ������ ����������"
FROM DEPARTMENT D, FACULTY F, SGROUP G, SUBJECT SBJ, TEACHER T, LECTURE L
  WHERE (T.DEPFK = D.DEPPK and
        G.DEPFK = D.DEPPK and
        D.FACFK = F.FACPK and
        F.NAME = '���ϲ' and
        D.FUND > 12500)
  GROUP BY D.NAME;
  
--�������� 5)


