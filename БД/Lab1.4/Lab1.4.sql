--Варіант 6
--Завдання 1)
--А)

SELECT  'Аудиторія '|| Num ||' знаходиться на '||Floor||' поверсі корпусу '||Building||' і має '||Seats||' місць'
FROM ROOM;

--Б)

SELECT  'Аудиторія' as Літерал1, Num as Аудиторія, 'знаходиться на' as Літерал2 ,Floor as Поверх,'поверсі корпусу' as Літерал3, Building as Корпус, 'і має' as Літерал4, Seats as "Кількістьть місць", ' місць' as Літерал5
FROM ROOM;

--Завдання 2)

SELECT TEACHER.NAME as Викладач, SUBJECT.Name as Предмет,ROOM.Num as АУД, ROOM.Building as КП,SGROUP.Num || ' ' ||SGROUP.Course as ГРП_і_ВРХ,Week as Тиждень,Day as ДН,Lesson as Пара,Type as Тип
FROM LECTURE, TEACHER, SUBJECT, ROOM, SGROUP
WHERE(LECTURE.GRPFK = SGROUP.GRPPK and 
      LECTURE.ROMFK = ROOM.ROMPK and 
      LECTURE.SBJFK = SUBJECT.SBJPK and 
      LECTURE.TCHFK = TEACHER.TCHPK);

--Завдання 3)
        
SELECT DISTINCT  F2.Name
  FROM Faculty F1,FACULTY F2, Department D1,Department D2,Teacher T, SGROUP G
  WHERE(G.DEPFK = D1.DEPPK and
        D1.FACFK = F1.FACPK and
        G.CURATOR = T.TCHPK and
        T.DEPFK = D2.DEPPK and
        D2.FACFK = F2.FACPK and
        F1.NAME = 'ФККПІ' );

--Завдання 4)
SELECT G.NUM, G.RATING,G.QUANTITY
  FROM SGROUP G, DEPARTMENT D
    WHERE(G.DEPFK = D.DEPPK and (G.QUANTITY BETWEEN 27 and 32 or G.RATING BETWEEN 25 and 45) AND D.NAME = 'Комп`ютерні науки');

--Завдання 5)

SELECT R.NUM , R.BUILDING
  FROM ROOM R, LECTURE L, TEACHER T
    WHERE(T.POST = 'асистент' and L.TYPE = 'ЛЕКЦІЯ' and L.DAY IN ('ПОН','СР','ЧЕТ','СУБ') and L.ROMFK = R.ROMPK and L.TCHFK = T.TCHPK);

--Завдання 6)

SELECT T1.NAME as Професор, T2.NAME as Доцент
  FROM TEACHER T1,TEACHER T2
    WHERE(T1.POST = 'професор' and T2.POST = 'доцент' and (T1.SALARY + T1.COMMISSION) > (T2.SALARY + T2.COMMISSION + 50));

--Завдання 7)

SELECT DISTINCT T.NAME, T.HIREDATE
  FROM TEACHER T, TEACHER CHIEF, SGROUP G
    WHERE(NOT(
    ((T.HIREDATE BETWEEN TO_DATE('01.01.2000','DD.MM.YYYY') and TO_DATE('31.12.2005','DD.MM.YYYY')) or T.POST = 'доцент' or T.POST = 'асистент') and 
    ((CHIEF.SALARY + CHIEF.COMMISSION) BETWEEN 1200 and 1500 or(CHIEF.SALARY + CHIEF.COMMISSION) BETWEEN 1700 and 2000) and
    (G.CURATOR = T.TCHPK and (G.RATING < 40 or G.RATING > 60))) 
    and T.CHIEFFK = CHIEF.TCHPK);
