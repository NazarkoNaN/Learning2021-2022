--������ 6
--�������� 1)
--�)

SELECT  '�������� '|| Num ||' ����������� �� '||Floor||' ������ ������� '||Building||' � �� '||Seats||' ����'
FROM ROOM;

--�)

SELECT  '��������' as ˳�����1, Num as ��������, '����������� ��' as ˳�����2 ,Floor as ������,'������ �������' as ˳�����3, Building as ������, '� ��' as ˳�����4, Seats as "ʳ�������� ����", ' ����' as ˳�����5
FROM ROOM;

--�������� 2)

SELECT TEACHER.NAME as ��������, SUBJECT.Name as �������,ROOM.Num as ���, ROOM.Building as ��,SGROUP.Num || ' ' ||SGROUP.Course as ���_�_���,Week as �������,Day as ��,Lesson as ����,Type as ���
FROM LECTURE, TEACHER, SUBJECT, ROOM, SGROUP
WHERE(LECTURE.GRPFK = SGROUP.GRPPK and 
      LECTURE.ROMFK = ROOM.ROMPK and 
      LECTURE.SBJFK = SUBJECT.SBJPK and 
      LECTURE.TCHFK = TEACHER.TCHPK);

--�������� 3)
        
SELECT DISTINCT  F2.Name
  FROM Faculty F1,FACULTY F2, Department D1,Department D2,Teacher T, SGROUP G
  WHERE(G.DEPFK = D1.DEPPK and
        D1.FACFK = F1.FACPK and
        G.CURATOR = T.TCHPK and
        T.DEPFK = D2.DEPPK and
        D2.FACFK = F2.FACPK and
        F1.NAME = '���ϲ' );

--�������� 4)
SELECT G.NUM, G.RATING,G.QUANTITY
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

SELECT DISTINCT T.NAME, T.HIREDATE
  FROM TEACHER T, TEACHER CHIEF, SGROUP G
    WHERE(NOT(
    ((T.HIREDATE BETWEEN TO_DATE('01.01.2000','DD.MM.YYYY') and TO_DATE('31.12.2005','DD.MM.YYYY')) or T.POST = '������' or T.POST = '��������') and 
    ((CHIEF.SALARY + CHIEF.COMMISSION) BETWEEN 1200 and 1500 or(CHIEF.SALARY + CHIEF.COMMISSION) BETWEEN 1700 and 2000) and
    (G.CURATOR = T.TCHPK and (G.RATING < 40 or G.RATING > 60))) 
    and T.CHIEFFK = CHIEF.TCHPK);
