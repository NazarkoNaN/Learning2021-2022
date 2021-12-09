--Варіант 6

--Підготовка до завдання
--Вставка значень
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
--Завдання 1)
--А)
SELECT  'Аудиторія ' || Num ||' знаходиться на '||Floor||' поверсі корпусу '||Building||' і має '||Seats||' місць'
FROM ROOM;

--Б)
SELECT  'Аудиторія' as Літерал1, Num as Аудиторія, 'знаходиться на' as Літерал2 ,Floor as Поверх,'поверсі корпусу' as Літерал3, Building as Корпус, 'і має' as Літерал4, Seats as Кількістьть_місць, ' місць' as Літерал5
FROM ROOM;

--Завдання 2)
SELECT TEACHER.NAME as Викладач, SUBJECT.Name as Предмет,ROOM.Num as АУД, ROOM.Building as КП,SGROUP.Num || ' ' ||SGROUP.Course as ГРП_і_ВРХ,Week as Тиждень,Day as ДН,Lesson as Пара,Type as Тип
FROM LECTURE, TEACHER, SUBJECT, ROOM, SGROUP
WHERE(LECTURE.GRPFK = SGROUP.GRPPK and LECTURE.ROMFK = ROOM.ROMPK and LECTURE.SBJFK = SUBJECT.SBJPK and LECTURE.TCHFK = TEACHER.TCHPK);

--Завдання 3)
--Вставка

        
SELECT F.Name
  FROM Faculty F,Department D,Teacher T, SGROUP G
    WHERE(T.DEPFK = D.DEPPK and D.FACFK = F.FACPK and T.TCHPK = G.CURATOR and D.NAME = 'Комп`ютерні науки');

--Завдання 4)
SELECT G.NUM
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
SELECT T.NAME, T.HIREDATE
  FROM TEACHER T, TEACHER CHIEF, SGROUP G
    WHERE(NOT(
    ((T.HIREDATE BETWEEN TO_DATE('01.01.2000','DD.MM.YYYY') and TO_DATE('31.12.2005','DD.MM.YYYY')) or T.POST = 'доцент' or T.POST = 'асистент') and 
    ((CHIEF.SALARY + CHIEF.COMMISSION) BETWEEN 1200 and 1500 or(CHIEF.SALARY + CHIEF.COMMISSION) BETWEEN 1700 and 2000) and
    (G.CURATOR = T.TCHPK and (G.RATING < 40 or G.RATING > 60))) 
    and T.CHIEFFK = CHIEF.TCHPK);
