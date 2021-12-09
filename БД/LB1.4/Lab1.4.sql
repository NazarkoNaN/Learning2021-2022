--������ 6

--ϳ�������� �� ��������
--������� �������
INSERT INTO ROOM
  VALUES(5,201,300,2,'4');
INSERT INTO ROOM
  VALUES(6,315,300,3,'4');
INSERT INTO ROOM
  VALUES(7,121,300,1,'4');
INSERT INTO ROOM
  VALUES(8,238,300,2,'6');
INSERT INTO ROOM
  VALUES(9,122,300,1,'6');

INSERT ALL
    INTO room VALUES (10, 301, 220, 2, '3')
    INTO room VALUES (11, 115, 250, 1, '3')
    INTO room VALUES (12, 121, 200, 1, '3')
    INTO room VALUES (13, 138, 200, 1, '3')
SELECT 1 FROM DUAL;
--�������� 1)
--�)
SELECT  '�������� ' || Num ||' ����������� �� '||Floor||' ������ ������� '||Building||' � �� '||Seats||' ����'
FROM ROOM;

--�)
SELECT  '��������' as ˳�����1, Num as ��������, '����������� ��' as ˳�����2 ,Floor as ������,'������ �������' as ˳�����3, Building as ������, '� ��' as ˳�����4, Seats as ʳ��������_����, ' ����' as ˳�����5
FROM ROOM;

--�������� 2)
SELECT TEACHER.NAME as ��������, SUBJECT.Name as �������,ROOM.Num as ���, ROOM.Building as ��,SGROUP.Num || ' ' ||SGROUP.Course as ���_�_���,Week as �������,Day as ��,Lesson as ����,Type as ���
FROM LECTURE, TEACHER, SUBJECT, ROOM, SGROUP
WHERE(LECTURE.GRPFK = SGROUP.GRPPK and LECTURE.ROMFK = ROOM.ROMPK and LECTURE.SBJFK = SUBJECT.SBJPK and LECTURE.TCHFK = TEACHER.TCHPK);

--�������� 3)
--�������

        
SELECT F.Name
  FROM Faculty F,Department D,Teacher T, SGROUP G
    WHERE(T.DEPFK = D.DEPPK and D.FACFK = F.FACPK and T.TCHPK = G.CURATOR and D.NAME = '����`����� �����');

--�������� 4)
SELECT G.NUM
  FROM SGROUP G, DEPARTMENT D
    WHERE(G.DEPFK = D.DEPPK and (G.QUANTITY BETWEEN 27 and 32 or G.RATING BETWEEN 25 and 45) AND D.NAME = '����`����� �����');

--�������� 5)
SELECT R.NUM , R.BUILDING
  FROM ROOM R, LECTURE L, TEACHER T
    WHERE(T.POST = '��������' and L.TYPE = '���ֲ�' and L.DAY IN ('���','��','���','���') and L.ROMFK = R.ROMPK and L.TCHFK = T.TCHPK);

--�������� 6)
SELECT T1.NAME as ��������, T2.NAME as ������
  FROM TEACHER T1,TEACHER T2
    WHERE(T1.POST = '��������' and T2.POST = '������' and (T1.SALARY + T1.COMMISSION) > (T2.SALARY + T2.COMMISSION + 50));

--�������� 7)
SELECT T.NAME, T.HIREDATE
  FROM TEACHER T, TEACHER CHIEF, SGROUP G
    WHERE(NOT(
    ((T.HIREDATE BETWEEN TO_DATE('01.01.2000','DD.MM.YYYY') and TO_DATE('31.12.2005','DD.MM.YYYY')) or T.POST = '������' or T.POST = '��������') and 
    ((CHIEF.SALARY + CHIEF.COMMISSION) BETWEEN 1200 and 1500 or(CHIEF.SALARY + CHIEF.COMMISSION) BETWEEN 1700 and 2000) and
    (G.CURATOR = T.TCHPK and (G.RATING < 40 or G.RATING > 60))) 
    and T.CHIEFFK = CHIEF.TCHPK);
